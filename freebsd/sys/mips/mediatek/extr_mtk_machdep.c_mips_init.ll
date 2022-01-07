; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_machdep.c_mips_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_machdep.c_mips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, i64 }

@FDT_MEM_REGIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"entry: mips_init()\0A\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@phys_avail = common dso_local global i64* null, align 8
@kernel_kseg0_end = common dso_local global i32 0, align 4
@dump_avail = common dso_local global i64* null, align 8
@realmem = common dso_local global i64 0, align 8
@physmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"RAM size: %ldMB (from FDT)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"First region is not within FDT memory range\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"memsize\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"RAM size: %ldMB (from memsize)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"RAM size: %ldMB (assumed)\0A\00", align 1
@MTK_SOC_RT2880 = common dso_local global i64 0, align 8
@MTK_SOC_MT7621 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Unknown chip, assuming 32MB RAM\0A\00", align 1
@KDB_WHY_BOOTFLAGS = common dso_local global i32 0, align 4
@RB_KDB = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @FDT_MEM_REGIONS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca %struct.mem_region, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @bootverbose, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %21, %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i64*, i64** @phys_avail, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %13

24:                                               ; preds = %13
  %25 = load i32, i32* @kernel_kseg0_end, align 4
  %26 = call i64 @MIPS_KSEG0_TO_PHYS(i32 %25)
  %27 = load i64*, i64** @phys_avail, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  %29 = load i64*, i64** @dump_avail, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %26, i64* %30, align 8
  %31 = call i64 @btoc(i32 469762048)
  store i64 %31, i64* @realmem, align 8
  %32 = call i64 @fdt_get_mem_regions(%struct.mem_region* %11, i32* %6, i32* %3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %137

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @btoc(i32 %35)
  store i64 %36, i64* @physmem, align 8
  %37 = load i64, i64* @physmem, align 8
  %38 = call i32 @ctob(i64 %37)
  %39 = sdiv i32 %38, 1048576
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i64*, i64** @phys_avail, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 0
  %45 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 16
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load i64*, i64** @phys_avail, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 0
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 16
  %55 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 0
  %56 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = icmp slt i64 %51, %58
  br label %60

60:                                               ; preds = %48, %34
  %61 = phi i1 [ false, %34 ], [ %59, %48 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @KASSERT(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 0
  %65 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 16
  %67 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 0
  %68 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @realmem, align 8
  %71 = call i32 @ctob(i64 %70)
  %72 = call i64 @MIN(i64 %69, i32 %71)
  %73 = add nsw i64 %66, %72
  %74 = load i64*, i64** @phys_avail, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  store i64 %73, i64* %75, align 8
  %76 = load i64*, i64** @phys_avail, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** @dump_avail, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 %78, i64* %80, align 8
  store i32 1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  br label %81

81:                                               ; preds = %131, %60
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 %87
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 16
  %91 = load i64*, i64** @phys_avail, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 %96
  %98 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 16
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i64 %101
  %103 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %99, %104
  %106 = load i64*, i64** @phys_avail, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  store i64 %105, i64* %110, align 8
  %111 = load i64*, i64** @phys_avail, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** @dump_avail, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load i64*, i64** @phys_avail, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** @dump_avail, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  store i64 %125, i64* %130, align 8
  br label %131

131:                                              ; preds = %85
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %5, align 4
  br label %81

136:                                              ; preds = %81
  br label %238

137:                                              ; preds = %24
  %138 = call i8* @kern_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %138, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @strtol(i8* %141, i32* null, i32 0)
  %143 = shl i32 %142, 20
  %144 = call i64 @btoc(i32 %143)
  store i64 %144, i64* @physmem, align 8
  %145 = load i64, i64* @physmem, align 8
  %146 = call i32 @ctob(i64 %145)
  %147 = sdiv i32 %146, 1048576
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %155

149:                                              ; preds = %137
  %150 = call i64 @btoc(i32 33554432)
  store i64 %150, i64* @physmem, align 8
  %151 = load i64, i64* @physmem, align 8
  %152 = call i32 @ctob(i64 %151)
  %153 = sdiv i32 %152, 1048576
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %140
  %156 = call i64 (...) @mtk_soc_get_socid()
  %157 = load i64, i64* @MTK_SOC_RT2880, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i64, i64* @physmem, align 8
  %161 = call i32 @ctob(i64 %160)
  %162 = add nsw i32 %161, 134217728
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** @phys_avail, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  store i64 %163, i64* %165, align 8
  %166 = load i64*, i64** @dump_avail, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  store i64 %163, i64* %167, align 8
  br label %237

168:                                              ; preds = %155
  %169 = load i64, i64* @physmem, align 8
  %170 = call i32 @ctob(i64 %169)
  %171 = icmp slt i32 %170, 469762048
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load i64, i64* @physmem, align 8
  %174 = call i32 @ctob(i64 %173)
  %175 = sext i32 %174 to i64
  %176 = load i64*, i64** @phys_avail, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  store i64 %175, i64* %177, align 8
  %178 = load i64*, i64** @dump_avail, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  store i64 %175, i64* %179, align 8
  br label %236

180:                                              ; preds = %168
  %181 = call i64 (...) @mtk_soc_get_socid()
  %182 = load i64, i64* @MTK_SOC_MT7621, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %225

184:                                              ; preds = %180
  %185 = load i64*, i64** @phys_avail, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  store i64 469762048, i64* %186, align 8
  %187 = load i64*, i64** @phys_avail, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 2
  store i64 536870912, i64* %188, align 8
  %189 = load i64*, i64** @phys_avail, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @physmem, align 8
  %193 = call i32 @ctob(i64 %192)
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = load i64*, i64** @phys_avail, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 1
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %195, %198
  %200 = load i64*, i64** @phys_avail, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 3
  store i64 %199, i64* %201, align 8
  %202 = load i64*, i64** @phys_avail, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** @phys_avail, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load i64*, i64** @dump_avail, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  store i64 %208, i64* %210, align 8
  %211 = load i64*, i64** @phys_avail, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** @dump_avail, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  store i64 %213, i64* %215, align 8
  %216 = load i64*, i64** @phys_avail, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 3
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** @phys_avail, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 2
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %218, %221
  %223 = load i64*, i64** @dump_avail, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 3
  store i64 %222, i64* %224, align 8
  br label %235

225:                                              ; preds = %180
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %227 = call i64 @btoc(i32 33554432)
  store i64 %227, i64* @physmem, align 8
  %228 = load i64, i64* @physmem, align 8
  %229 = call i32 @ctob(i64 %228)
  %230 = sext i32 %229 to i64
  %231 = load i64*, i64** @phys_avail, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  store i64 %230, i64* %232, align 8
  %233 = load i64*, i64** @dump_avail, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 1
  store i64 %230, i64* %234, align 8
  br label %235

235:                                              ; preds = %225, %184
  br label %236

236:                                              ; preds = %235, %172
  br label %237

237:                                              ; preds = %236, %159
  br label %238

238:                                              ; preds = %237, %136
  %239 = load i64, i64* @physmem, align 8
  %240 = load i64, i64* @realmem, align 8
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i64, i64* @physmem, align 8
  store i64 %243, i64* @realmem, align 8
  br label %244

244:                                              ; preds = %242, %238
  %245 = call i32 (...) @init_param1()
  %246 = load i64, i64* @physmem, align 8
  %247 = call i32 @init_param2(i64 %246)
  %248 = call i32 (...) @mips_cpu_init()
  %249 = call i32 (...) @pmap_bootstrap()
  %250 = call i32 (...) @mips_proc0_init()
  %251 = call i32 (...) @mutex_init()
  %252 = call i32 (...) @kdb_init()
  %253 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %253)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @MIPS_KSEG0_TO_PHYS(i32) #2

declare dso_local i64 @btoc(i32) #2

declare dso_local i64 @fdt_get_mem_regions(%struct.mem_region*, i32*, i32*) #2

declare dso_local i32 @ctob(i64) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i8* @kern_getenv(i8*) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i64 @mtk_soc_get_socid(...) #2

declare dso_local i32 @init_param1(...) #2

declare dso_local i32 @init_param2(i64) #2

declare dso_local i32 @mips_cpu_init(...) #2

declare dso_local i32 @pmap_bootstrap(...) #2

declare dso_local i32 @mips_proc0_init(...) #2

declare dso_local i32 @mutex_init(...) #2

declare dso_local i32 @kdb_init(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
