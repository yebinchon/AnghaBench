; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_add_deterministic_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_add_deterministic_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"unexpected cache type %d\0A\00", align 1
@MAX_CACHE_LEVELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected cache level %d\0A\00", align 1
@caches = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"WARNING: multiple entries for L%u data cache\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%u => %u\0A\00", align 1
@pkg_id_shift = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"WARNING: L%u data cache covers more APIC IDs than a package (%u > %u)\0A\00", align 1
@core_id_shift = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"WARNING: L%u data cache covers fewer APIC IDs than a core (%u < %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @add_deterministic_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_deterministic_cache(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %4, align 4
  br label %124

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %124

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_CACHE_LEVELS, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 1, i32* %4, align 4
  br label %124

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mask_width(i32 %50)
  %52 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %40, %31
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mask_width(i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %55, i32* %61, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @pkg_id_shift, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %53
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @pkg_id_shift, align 4
  %87 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %85, i32 %86)
  %88 = load i32, i32* @pkg_id_shift, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %77, %53
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @core_id_shift, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @core_id_shift, align 4
  %115 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %113, i32 %114)
  %116 = load i32, i32* @core_id_shift, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caches, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %105, %95
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %28, %20, %14, %10
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @mask_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
