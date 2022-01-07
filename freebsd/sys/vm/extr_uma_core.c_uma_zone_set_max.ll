; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zone_set_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zone_set_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_bucket_zone = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@bucket_zones = common dso_local global %struct.uma_bucket_zone* null, align 8
@mp_ncpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uma_zone_set_max(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uma_bucket_zone*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %7 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %6, i64 0
  store %struct.uma_bucket_zone* %7, %struct.uma_bucket_zone** %5, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %10 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %15 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load i32, i32* @mp_ncpus, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %26 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %25, i32 1
  store %struct.uma_bucket_zone* %26, %struct.uma_bucket_zone** %5, align 8
  br label %8

27:                                               ; preds = %22, %8
  %28 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %29 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %30 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %29, i64 0
  %31 = icmp eq %struct.uma_bucket_zone* %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %34 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2
  %37 = load i32, i32* @mp_ncpus, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %41 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %40, i32 -1
  store %struct.uma_bucket_zone* %41, %struct.uma_bucket_zone** %5, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = call i32 @ZONE_LOCK(%struct.TYPE_5__* %43)
  %45 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %5, align 8
  %46 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %42
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = call i32 @ZONE_UNLOCK(%struct.TYPE_5__* %69)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
