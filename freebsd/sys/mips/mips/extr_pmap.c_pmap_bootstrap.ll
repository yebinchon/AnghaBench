; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32 }
%struct.pcpu = type { i32 }

@phys_avail = common dso_local global i64* null, align 8
@need_local_mappings = common dso_local global i32 0, align 4
@physmem_desc = common dso_local global i64* null, align 8
@Maxmem = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Physical memory chunk(s):\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%#08jx - %#08jx, %ju bytes (%ju pages)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Maxmem is 0x%0jx\0A\00", align 1
@msgbufsize = common dso_local global i32 0, align 4
@msgbufp = common dso_local global %struct.msgbuf* null, align 8
@KSTACK_PAGES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@kstack0 = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@virtual_avail = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@virtual_end = common dso_local global i32 0, align 4
@VMNUM_PIDS = common dso_local global i32 0, align 4
@pmap_max_asid = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pmap pv global\00", align 1
@pcpup = common dso_local global %struct.pcpu* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_bootstrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i64], align 16
  %3 = alloca i64, align 8
  br label %4

4:                                                ; preds = %52, %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %104, %4
  %6 = load i64*, i64** @phys_avail, align 8
  %7 = load i32, i32* %1, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %6, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %5
  %14 = load i64*, i64** @phys_avail, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @round_page(i64 %18)
  %20 = load i64*, i64** @phys_avail, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 %19, i64* %23, align 8
  %24 = load i64*, i64** @phys_avail, align 8
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @trunc_page(i64 %29)
  %31 = load i64*, i64** @phys_avail, align 8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i32, i32* %1, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %104

39:                                               ; preds = %13
  %40 = load i64*, i64** @phys_avail, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** @phys_avail, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %39
  %53 = load i64*, i64** @phys_avail, align 8
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  store i64 %58, i64* %59, align 16
  %60 = load i64*, i64** @phys_avail, align 8
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  store i64 %65, i64* %66, align 8
  %67 = load i64*, i64** @phys_avail, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @phys_avail, align 8
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %72, i64* %77, align 8
  %78 = load i64*, i64** @phys_avail, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** @phys_avail, align 8
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %90 = load i64, i64* %89, align 16
  %91 = load i64*, i64** @phys_avail, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %90, i64* %95, align 8
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** @phys_avail, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %97, i64* %102, align 8
  br label %4

103:                                              ; preds = %39
  br label %104

104:                                              ; preds = %103, %38
  %105 = load i32, i32* %1, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %1, align 4
  br label %5

107:                                              ; preds = %5
  %108 = load i64*, i64** @phys_avail, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, 1
  %115 = call i32 @MIPS_DIRECT_MAPPABLE(i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  store i32 1, i32* @need_local_mappings, align 4
  br label %118

118:                                              ; preds = %117, %107
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %148, %118
  %120 = load i64*, i64** @phys_avail, align 8
  %121 = load i32, i32* %1, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %119
  %128 = load i64*, i64** @phys_avail, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** @physmem_desc, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %132, i64* %136, align 8
  %137 = load i64*, i64** @phys_avail, align 8
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** @physmem_desc, align 8
  %144 = load i32, i32* %1, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %127
  %149 = load i32, i32* %1, align 4
  %150 = add nsw i32 %149, 2
  store i32 %150, i32* %1, align 4
  br label %119

151:                                              ; preds = %119
  %152 = load i64*, i64** @phys_avail, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @atop(i64 %157)
  store i64 %158, i64* @Maxmem, align 8
  %159 = load i64, i64* @bootverbose, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %213

161:                                              ; preds = %151
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %163

163:                                              ; preds = %205, %161
  %164 = load i64*, i64** @phys_avail, align 8
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %208

171:                                              ; preds = %163
  %172 = load i64*, i64** @phys_avail, align 8
  %173 = load i32, i32* %1, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** @phys_avail, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %177, %182
  store i64 %183, i64* %3, align 8
  %184 = load i64*, i64** @phys_avail, align 8
  %185 = load i32, i32* %1, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i64*, i64** @phys_avail, align 8
  %191 = load i32, i32* %1, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = sub nsw i32 %196, 1
  %198 = load i64, i64* %3, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i64, i64* %3, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = sdiv i32 %201, %202
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %197, i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %171
  %206 = load i32, i32* %1, align 4
  %207 = add nsw i32 %206, 2
  store i32 %207, i32* %1, align 4
  br label %163

208:                                              ; preds = %163
  %209 = load i64, i64* @Maxmem, align 8
  %210 = trunc i64 %209 to i32
  %211 = call %struct.pcpu* @ptoa(i32 %210)
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.pcpu* %211)
  br label %213

213:                                              ; preds = %208, %151
  %214 = load i32, i32* @msgbufsize, align 4
  %215 = call i64 @pmap_steal_memory(i32 %214)
  %216 = inttoptr i64 %215 to %struct.msgbuf*
  store %struct.msgbuf* %216, %struct.msgbuf** @msgbufp, align 8
  %217 = load %struct.msgbuf*, %struct.msgbuf** @msgbufp, align 8
  %218 = load i32, i32* @msgbufsize, align 4
  %219 = call i32 @msgbufinit(%struct.msgbuf* %217, i32 %218)
  %220 = load i32, i32* @KSTACK_PAGES, align 4
  %221 = load i32, i32* @PAGE_SHIFT, align 4
  %222 = shl i32 %220, %221
  %223 = call i64 @pmap_steal_memory(i32 %222)
  store i64 %223, i64* @kstack0, align 8
  %224 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  store i64 %224, i64* @virtual_avail, align 8
  %225 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  store i32 %225, i32* @virtual_end, align 4
  %226 = call i32 (...) @pmap_create_kernel_pagetable()
  %227 = load i32, i32* @need_local_mappings, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %213
  %230 = call i32 (...) @pmap_alloc_lmem_map()
  br label %231

231:                                              ; preds = %229, %213
  %232 = load i32, i32* @VMNUM_PIDS, align 4
  store i32 %232, i32* @pmap_max_asid, align 4
  %233 = call i32 @mips_wr_entryhi(i32 0)
  %234 = call i32 @mips_wr_pagemask(i32 0)
  %235 = call i32 @rw_init(i32* @pvh_global_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @MIPS_DIRECT_MAPPABLE(i64) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.pcpu* @ptoa(i32) #1

declare dso_local i64 @pmap_steal_memory(i32) #1

declare dso_local i32 @msgbufinit(%struct.msgbuf*, i32) #1

declare dso_local i32 @pmap_create_kernel_pagetable(...) #1

declare dso_local i32 @pmap_alloc_lmem_map(...) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @mips_wr_pagemask(i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
