; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cpuinfo = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@picache_stride = common dso_local global i32 0, align 4
@picache_loopcount = common dso_local global i32 0, align 4
@pdcache_stride = common dso_local global i32 0, align 4
@pdcache_loopcount = common dso_local global i32 0, align 4
@mips_picache_linesize = common dso_local global i32 0, align 4
@mips_pdcache_linesize = common dso_local global i32 0, align 4
@picache_size = common dso_local global i32 0, align 4
@picache_way_mask = common dso_local global i32 0, align 4
@pdcache_size = common dso_local global i32 0, align 4
@pdcache_way_mask = common dso_local global i32 0, align 4
@sdcache_stride = common dso_local global i32 0, align 4
@sdcache_loopcount = common dso_local global i64 0, align 8
@sdcache_size = common dso_local global i32 0, align 4
@sdcache_way_mask = common dso_local global i64 0, align 8
@mips_sdcache_linesize = common dso_local global i32 0, align 4
@mips_dcache_max_linesize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Cache info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  icache is virtual\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  picache_stride    = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  picache_loopcount = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  pdcache_stride    = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  pdcache_loopcount = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  max line size     = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_cache_init(%struct.mips_cpuinfo* %0) #0 {
  %2 = alloca %struct.mips_cpuinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.mips_cpuinfo* %0, %struct.mips_cpuinfo** %2, align 8
  %4 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %5 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %9 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %7, %11
  %13 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %14 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %22 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %30, i32* @picache_stride, align 4
  %31 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %32 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %36 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %43 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %41, %45
  store i32 %46, i32* @picache_loopcount, align 4
  br label %61

47:                                               ; preds = %26
  %48 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %49 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %53 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %51, %55
  store i32 %56, i32* @picache_stride, align 4
  %57 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %58 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* @picache_loopcount, align 4
  br label %61

61:                                               ; preds = %47, %29
  %62 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %63 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %67 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %65, %69
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %61
  %74 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %75 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %79 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %77, %81
  store i32 %82, i32* @pdcache_stride, align 4
  %83 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %84 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @pdcache_loopcount, align 4
  br label %105

87:                                               ; preds = %61
  %88 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %88, i32* @pdcache_stride, align 4
  %89 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %90 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %94 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %92, %96
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = sdiv i32 %97, %98
  %100 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %101 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %99, %103
  store i32 %104, i32* @pdcache_loopcount, align 4
  br label %105

105:                                              ; preds = %87, %73
  %106 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %107 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* @mips_picache_linesize, align 4
  %110 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %111 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* @mips_pdcache_linesize, align 4
  %114 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %115 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* @picache_size, align 4
  %118 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %119 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* @picache_way_mask, align 4
  %123 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %124 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* @pdcache_size, align 4
  %127 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %128 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* @pdcache_way_mask, align 4
  %132 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %133 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %137 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %135, %139
  store i32 %140, i32* @sdcache_stride, align 4
  %141 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %142 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* @sdcache_loopcount, align 8
  %145 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %146 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* @sdcache_size, align 4
  %149 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %150 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, 1
  store i64 %153, i64* @sdcache_way_mask, align 8
  %154 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %155 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* @mips_sdcache_linesize, align 4
  %158 = load i32, i32* @mips_pdcache_linesize, align 4
  %159 = load i32, i32* @mips_sdcache_linesize, align 4
  %160 = call i32 @MAX(i32 %158, i32 %159)
  store i32 %160, i32* @mips_dcache_max_linesize, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %162 = load %struct.mips_cpuinfo*, %struct.mips_cpuinfo** %2, align 8
  %163 = getelementptr inbounds %struct.mips_cpuinfo, %struct.mips_cpuinfo* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %105
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %105
  %169 = load i32, i32* @picache_stride, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @picache_loopcount, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @pdcache_stride, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @pdcache_loopcount, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @mips_dcache_max_linesize, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
