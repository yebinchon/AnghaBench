; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_trap_pfault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_trap_pfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc*, i32* }
%struct.proc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.trapframe = type { i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"trap_pfault: pcb NULL\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"trap_pfault: curproc NULL\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"trap_pfault: vmspace NULL\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@T_KERNEL = common dso_local global i32 0, align 4
@KTR_TRAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"trap_pfault: td=%p pm_ctx=%#lx va=%#lx ctx=%#lx\00", align 1
@curcpu = common dso_local global i64 0, align 8
@T_DATA_PROTECTION = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@T_DATA_MISS = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@TLB_CTX_KERNEL = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"trap_pfault: fault on nucleus context from user mode\00", align 1
@copy_nofault_begin = common dso_local global i64 0, align 8
@copy_nofault_end = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32* null, align 8
@MAP_ENTRY_NOFAULT = common dso_local global i32 0, align 4
@copy_fault = common dso_local global i64 0, align 8
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"trap_pfault: return td=%p va=%#lx rv=%d\00", align 1
@fs_nofault_begin = common dso_local global i64 0, align 8
@fs_nofault_end = common dso_local global i64 0, align 8
@fs_fault = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.trapframe*, i32*, i32*)* @trap_pfault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_pfault(%struct.thread* %0, %struct.trapframe* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.trapframe* %1, %struct.trapframe** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = icmp eq %struct.thread* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %222

21:                                               ; preds = %4
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load %struct.proc*, %struct.proc** %29, align 8
  %31 = icmp ne %struct.proc* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.thread*, %struct.thread** %6, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load %struct.proc*, %struct.proc** %35, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load %struct.proc*, %struct.proc** %43, align 8
  store %struct.proc* %44, %struct.proc** %11, align 8
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @TLB_TAR_CTX(i32 %48)
  store i64 %49, i64* %15, align 8
  %50 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @T_KERNEL, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %16, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @TLB_TAR_VA(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @KTR_TRAP, align 4
  %61 = load %struct.thread*, %struct.thread** %6, align 8
  %62 = load %struct.proc*, %struct.proc** %11, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @curcpu, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @CTR4(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), %struct.thread* %61, i32 %70, i32 %71, i64 %72)
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @T_DATA_PROTECTION, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %21
  %78 = load i32, i32* @VM_PROT_WRITE, align 4
  store i32 %78, i32* %13, align 4
  br label %90

79:                                               ; preds = %21
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @T_DATA_MISS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %84, i32* %13, align 4
  br label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @VM_PROT_READ, align 4
  %87 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %83
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.proc*, %struct.proc** %11, align 8
  %96 = getelementptr inbounds %struct.proc, %struct.proc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32* %98, i32** %10, align 8
  br label %148

99:                                               ; preds = %90
  %100 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TSTATE_PRIV, align 4
  %104 = and i32 %102, %103
  %105 = call i32 @KASSERT(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @copy_nofault_begin, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %146

111:                                              ; preds = %99
  %112 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @copy_nofault_end, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %111
  %118 = load i32*, i32** @kernel_map, align 8
  %119 = call i32 @vm_map_lock_read(i32* %118)
  %120 = load i32*, i32** @kernel_map, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @vm_map_lookup_entry(i32* %120, i32 %121, %struct.TYPE_7__** %14)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MAP_ENTRY_NOFAULT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %124
  %132 = load i64, i64* @copy_fault, align 8
  %133 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %136 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 4
  %139 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %140 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i32*, i32** @kernel_map, align 8
  %142 = call i32 @vm_map_unlock_read(i32* %141)
  store i32 0, i32* %5, align 4
  br label %222

143:                                              ; preds = %124, %117
  %144 = load i32*, i32** @kernel_map, align 8
  %145 = call i32 @vm_map_unlock_read(i32* %144)
  br label %146

146:                                              ; preds = %143, %111, %99
  %147 = load i32*, i32** @kernel_map, align 8
  store i32* %147, i32** %10, align 8
  br label %148

148:                                              ; preds = %146, %94
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @vm_fault_trap(i32* %149, i32 %150, i32 %151, i32 %152, i32* %153, i32* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* @KTR_TRAP, align 4
  %157 = load %struct.thread*, %struct.thread** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @CTR3(i32 %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), %struct.thread* %157, i32 %158, i32 %159)
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @KERN_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %148
  store i32 1, i32* %5, align 4
  br label %222

165:                                              ; preds = %148
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %221

169:                                              ; preds = %165
  %170 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %171 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @TSTATE_PRIV, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %169
  %177 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %178 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @fs_nofault_begin, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %176
  %183 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %184 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @fs_nofault_end, align 8
  %187 = icmp sle i64 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load i64, i64* @fs_fault, align 8
  %190 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %191 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  %192 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %193 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 4
  %196 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %197 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  store i32 1, i32* %5, align 4
  br label %222

198:                                              ; preds = %182, %176
  %199 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %200 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @copy_nofault_begin, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %206 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @copy_nofault_end, align 8
  %209 = icmp sle i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %204
  %211 = load i64, i64* @copy_fault, align 8
  %212 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %213 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %212, i32 0, i32 2
  store i64 %211, i64* %213, align 8
  %214 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %215 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 4
  %218 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %219 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %218, i32 0, i32 3
  store i64 %217, i64* %219, align 8
  store i32 1, i32* %5, align 4
  br label %222

220:                                              ; preds = %204, %198
  br label %221

221:                                              ; preds = %220, %169, %165
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %221, %210, %188, %164, %131, %20
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TLB_TAR_CTX(i32) #1

declare dso_local i32 @TLB_TAR_VA(i32) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.thread*, i32, i32, i64) #1

declare dso_local i32 @vm_map_lock_read(i32*) #1

declare dso_local i64 @vm_map_lookup_entry(i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @vm_map_unlock_read(i32*) #1

declare dso_local i32 @vm_fault_trap(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
