; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.trapframe*, %struct.trapframe*, %struct.proc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i32, i32, i32, i32, %struct.proc_ldt*, i64, i64, i64, i64, i32, i32, i64, %struct.trapframe*, i32 }
%struct.proc_ldt = type { i32, i32 }
%struct.proc = type { i32, i32, %struct.trapframe }
%struct.pcb = type { i32, i32, i32, i32, %struct.proc_ldt*, i64, i64, i64, i64, i32, i32, i64, %struct.pcb*, i32 }
%struct.mdproc = type { i32, i32, i32, i32, %struct.proc_ldt*, i64, i64, i64, i64, i32, i32, i64, %struct.mdproc*, i32 }

@RFPROC = common dso_local global i32 0, align 4
@RFMEM = common dso_local global i32 0, align 4
@dt_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"could not copy LDT\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@fpcurthread = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@VM86_STACK_SPACE = common dso_local global i64 0, align 8
@PSL_C = common dso_local global i32 0, align 4
@PF_FORK = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@setidt_disp = common dso_local global i64 0, align 8
@PSL_KERNEL = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.pcb*, align 8
  %11 = alloca %struct.mdproc*, align 8
  %12 = alloca %struct.mdproc*, align 8
  %13 = alloca %struct.proc_ldt*, align 8
  %14 = alloca %struct.proc_ldt*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 3
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RFPROC, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RFMEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = load %struct.proc*, %struct.proc** %9, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 2
  %30 = bitcast %struct.trapframe* %29 to %struct.mdproc*
  store %struct.mdproc* %30, %struct.mdproc** %12, align 8
  %31 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %32 = load %struct.mdproc*, %struct.mdproc** %12, align 8
  %33 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %32, i32 0, i32 4
  %34 = load %struct.proc_ldt*, %struct.proc_ldt** %33, align 8
  store %struct.proc_ldt* %34, %struct.proc_ldt** %14, align 8
  %35 = icmp ne %struct.proc_ldt* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load %struct.proc_ldt*, %struct.proc_ldt** %14, align 8
  %38 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.mdproc*, %struct.mdproc** %12, align 8
  %43 = bitcast %struct.mdproc* %42 to %struct.trapframe*
  %44 = load %struct.proc_ldt*, %struct.proc_ldt** %14, align 8
  %45 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @user_ldt_alloc(%struct.trapframe* %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.proc_ldt*
  store %struct.proc_ldt* %48, %struct.proc_ldt** %13, align 8
  %49 = load %struct.proc_ldt*, %struct.proc_ldt** %13, align 8
  %50 = icmp eq %struct.proc_ldt* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %41
  %54 = load %struct.proc_ldt*, %struct.proc_ldt** %13, align 8
  %55 = load %struct.mdproc*, %struct.mdproc** %12, align 8
  %56 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %55, i32 0, i32 4
  store %struct.proc_ldt* %54, %struct.proc_ldt** %56, align 8
  %57 = load %struct.mdproc*, %struct.mdproc** %12, align 8
  %58 = bitcast %struct.mdproc* %57 to %struct.trapframe*
  %59 = call i32 @set_user_ldt(%struct.trapframe* %58)
  %60 = load %struct.proc_ldt*, %struct.proc_ldt** %14, align 8
  %61 = call i32 @user_ldt_deref(%struct.proc_ldt* %60)
  br label %64

62:                                               ; preds = %36, %27
  %63 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %64

64:                                               ; preds = %62, %53
  br label %65

65:                                               ; preds = %64, %22
  br label %259

66:                                               ; preds = %4
  %67 = load %struct.thread*, %struct.thread** %5, align 8
  %68 = load %struct.thread*, %struct.thread** @curthread, align 8
  %69 = icmp eq %struct.thread* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i32 (...) @rgs()
  %72 = load %struct.thread*, %struct.thread** %5, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 2
  %74 = load %struct.trapframe*, %struct.trapframe** %73, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 13
  store i32 %71, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %66
  %77 = call i32 (...) @critical_enter()
  %78 = load i32, i32* @fpcurthread, align 4
  %79 = call %struct.thread* @PCPU_GET(i32 %78)
  %80 = load %struct.thread*, %struct.thread** %5, align 8
  %81 = icmp eq %struct.thread* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.thread*, %struct.thread** %5, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 2
  %85 = load %struct.trapframe*, %struct.trapframe** %84, align 8
  %86 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %85, i32 0, i32 12
  %87 = load %struct.trapframe*, %struct.trapframe** %86, align 8
  %88 = call i32 @npxsave(%struct.trapframe* %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = call i32 (...) @critical_exit()
  %91 = load %struct.thread*, %struct.thread** %7, align 8
  %92 = call %struct.trapframe* @get_pcb_td(%struct.thread* %91)
  %93 = bitcast %struct.trapframe* %92 to %struct.pcb*
  store %struct.pcb* %93, %struct.pcb** %10, align 8
  %94 = load %struct.pcb*, %struct.pcb** %10, align 8
  %95 = bitcast %struct.pcb* %94 to %struct.trapframe*
  %96 = load %struct.thread*, %struct.thread** %7, align 8
  %97 = getelementptr inbounds %struct.thread, %struct.thread* %96, i32 0, i32 2
  store %struct.trapframe* %95, %struct.trapframe** %97, align 8
  %98 = load %struct.thread*, %struct.thread** %5, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 2
  %100 = load %struct.trapframe*, %struct.trapframe** %99, align 8
  %101 = load %struct.pcb*, %struct.pcb** %10, align 8
  %102 = bitcast %struct.pcb* %101 to %struct.trapframe*
  %103 = call i32 @bcopy(%struct.trapframe* %100, %struct.trapframe* %102, i32 88)
  %104 = load %struct.pcb*, %struct.pcb** %10, align 8
  %105 = bitcast %struct.pcb* %104 to %struct.trapframe*
  %106 = call %struct.trapframe* @get_pcb_user_save_pcb(%struct.trapframe* %105)
  %107 = bitcast %struct.trapframe* %106 to %struct.pcb*
  %108 = load %struct.pcb*, %struct.pcb** %10, align 8
  %109 = getelementptr inbounds %struct.pcb, %struct.pcb* %108, i32 0, i32 12
  store %struct.pcb* %107, %struct.pcb** %109, align 8
  %110 = load %struct.thread*, %struct.thread** %5, align 8
  %111 = call %struct.trapframe* @get_pcb_user_save_td(%struct.thread* %110)
  %112 = load %struct.pcb*, %struct.pcb** %10, align 8
  %113 = bitcast %struct.pcb* %112 to %struct.trapframe*
  %114 = call %struct.trapframe* @get_pcb_user_save_pcb(%struct.trapframe* %113)
  %115 = load i32, i32* @cpu_max_ext_state_size, align 4
  %116 = call i32 @bcopy(%struct.trapframe* %111, %struct.trapframe* %114, i32 %115)
  %117 = load %struct.proc*, %struct.proc** %6, align 8
  %118 = getelementptr inbounds %struct.proc, %struct.proc* %117, i32 0, i32 2
  %119 = bitcast %struct.trapframe* %118 to %struct.mdproc*
  store %struct.mdproc* %119, %struct.mdproc** %11, align 8
  %120 = load %struct.proc*, %struct.proc** %9, align 8
  %121 = getelementptr inbounds %struct.proc, %struct.proc* %120, i32 0, i32 2
  %122 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %123 = bitcast %struct.mdproc* %122 to %struct.trapframe*
  %124 = call i32 @bcopy(%struct.trapframe* %121, %struct.trapframe* %123, i32 88)
  %125 = load %struct.thread*, %struct.thread** %7, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 2
  %127 = load %struct.trapframe*, %struct.trapframe** %126, align 8
  %128 = ptrtoint %struct.trapframe* %127 to i64
  %129 = load i64, i64* @VM86_STACK_SPACE, align 8
  %130 = sub nsw i64 %128, %129
  %131 = inttoptr i64 %130 to %struct.trapframe*
  %132 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %131, i64 -1
  %133 = load %struct.thread*, %struct.thread** %7, align 8
  %134 = getelementptr inbounds %struct.thread, %struct.thread* %133, i32 0, i32 1
  store %struct.trapframe* %132, %struct.trapframe** %134, align 8
  %135 = load %struct.thread*, %struct.thread** %5, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 1
  %137 = load %struct.trapframe*, %struct.trapframe** %136, align 8
  %138 = load %struct.thread*, %struct.thread** %7, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 1
  %140 = load %struct.trapframe*, %struct.trapframe** %139, align 8
  %141 = call i32 @bcopy(%struct.trapframe* %137, %struct.trapframe* %140, i32 88)
  %142 = load %struct.thread*, %struct.thread** %7, align 8
  %143 = getelementptr inbounds %struct.thread, %struct.thread* %142, i32 0, i32 1
  %144 = load %struct.trapframe*, %struct.trapframe** %143, align 8
  %145 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %144, i32 0, i32 11
  store i64 0, i64* %145, align 8
  %146 = load i32, i32* @PSL_C, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.thread*, %struct.thread** %7, align 8
  %149 = getelementptr inbounds %struct.thread, %struct.thread* %148, i32 0, i32 1
  %150 = load %struct.trapframe*, %struct.trapframe** %149, align 8
  %151 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %147
  store i32 %153, i32* %151, align 4
  %154 = load %struct.thread*, %struct.thread** %7, align 8
  %155 = getelementptr inbounds %struct.thread, %struct.thread* %154, i32 0, i32 1
  %156 = load %struct.trapframe*, %struct.trapframe** %155, align 8
  %157 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.proc*, %struct.proc** %9, align 8
  %159 = getelementptr inbounds %struct.proc, %struct.proc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PF_FORK, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %89
  %165 = load i32, i32* @PSL_T, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.thread*, %struct.thread** %7, align 8
  %168 = getelementptr inbounds %struct.thread, %struct.thread* %167, i32 0, i32 1
  %169 = load %struct.trapframe*, %struct.trapframe** %168, align 8
  %170 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %164, %89
  %174 = load %struct.proc*, %struct.proc** %6, align 8
  %175 = getelementptr inbounds %struct.proc, %struct.proc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @vmspace_pmap(i32 %176)
  %178 = call i32 @pmap_get_cr3(i32 %177)
  %179 = load %struct.pcb*, %struct.pcb** %10, align 8
  %180 = getelementptr inbounds %struct.pcb, %struct.pcb* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 8
  %181 = load %struct.pcb*, %struct.pcb** %10, align 8
  %182 = getelementptr inbounds %struct.pcb, %struct.pcb* %181, i32 0, i32 8
  store i64 0, i64* %182, align 8
  %183 = load i64, i64* @fork_return, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.pcb*, %struct.pcb** %10, align 8
  %186 = getelementptr inbounds %struct.pcb, %struct.pcb* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.pcb*, %struct.pcb** %10, align 8
  %188 = getelementptr inbounds %struct.pcb, %struct.pcb* %187, i32 0, i32 7
  store i64 0, i64* %188, align 8
  %189 = load %struct.thread*, %struct.thread** %7, align 8
  %190 = getelementptr inbounds %struct.thread, %struct.thread* %189, i32 0, i32 1
  %191 = load %struct.trapframe*, %struct.trapframe** %190, align 8
  %192 = ptrtoint %struct.trapframe* %191 to i32
  %193 = sext i32 %192 to i64
  %194 = sub i64 %193, 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.pcb*, %struct.pcb** %10, align 8
  %197 = getelementptr inbounds %struct.pcb, %struct.pcb* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load %struct.thread*, %struct.thread** %7, align 8
  %199 = ptrtoint %struct.thread* %198 to i32
  %200 = load %struct.pcb*, %struct.pcb** %10, align 8
  %201 = getelementptr inbounds %struct.pcb, %struct.pcb* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load i64, i64* @fork_trampoline, align 8
  %203 = trunc i64 %202 to i32
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* @setidt_disp, align 8
  %206 = add nsw i64 %204, %205
  %207 = load %struct.pcb*, %struct.pcb** %10, align 8
  %208 = getelementptr inbounds %struct.pcb, %struct.pcb* %207, i32 0, i32 6
  store i64 %206, i64* %208, align 8
  %209 = load %struct.pcb*, %struct.pcb** %10, align 8
  %210 = getelementptr inbounds %struct.pcb, %struct.pcb* %209, i32 0, i32 5
  store i64 0, i64* %210, align 8
  %211 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %212 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %213 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %212, i32 0, i32 4
  %214 = load %struct.proc_ldt*, %struct.proc_ldt** %213, align 8
  %215 = icmp ne %struct.proc_ldt* %214, null
  br i1 %215, label %216, label %248

216:                                              ; preds = %173
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @RFMEM, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %223 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %222, i32 0, i32 4
  %224 = load %struct.proc_ldt*, %struct.proc_ldt** %223, align 8
  %225 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %247

228:                                              ; preds = %216
  %229 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %230 = bitcast %struct.mdproc* %229 to %struct.trapframe*
  %231 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %232 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %231, i32 0, i32 4
  %233 = load %struct.proc_ldt*, %struct.proc_ldt** %232, align 8
  %234 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @user_ldt_alloc(%struct.trapframe* %230, i32 %235)
  %237 = bitcast i8* %236 to %struct.proc_ldt*
  %238 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %239 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %238, i32 0, i32 4
  store %struct.proc_ldt* %237, %struct.proc_ldt** %239, align 8
  %240 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %241 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %240, i32 0, i32 4
  %242 = load %struct.proc_ldt*, %struct.proc_ldt** %241, align 8
  %243 = icmp eq %struct.proc_ldt* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %228
  %245 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %228
  br label %247

247:                                              ; preds = %246, %221
  br label %248

248:                                              ; preds = %247, %173
  %249 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  %250 = load %struct.thread*, %struct.thread** %7, align 8
  %251 = getelementptr inbounds %struct.thread, %struct.thread* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  %253 = load i32, i32* @PSL_KERNEL, align 4
  %254 = load i32, i32* @PSL_I, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.thread*, %struct.thread** %7, align 8
  %257 = getelementptr inbounds %struct.thread, %struct.thread* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  br label %259

259:                                              ; preds = %248, %65
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i8* @user_ldt_alloc(%struct.trapframe*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @set_user_ldt(%struct.trapframe*) #1

declare dso_local i32 @user_ldt_deref(%struct.proc_ldt*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @rgs(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @npxsave(%struct.trapframe*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local %struct.trapframe* @get_pcb_td(%struct.thread*) #1

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

declare dso_local %struct.trapframe* @get_pcb_user_save_pcb(%struct.trapframe*) #1

declare dso_local %struct.trapframe* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @pmap_get_cr3(i32) #1

declare dso_local i32 @vmspace_pmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
