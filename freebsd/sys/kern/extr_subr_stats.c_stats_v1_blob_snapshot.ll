; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i64, i32 }

@STATS_ABI_V1 = common dso_local global i64 0, align 8
@SB_CLONE_RSTSRC = common dso_local global i32 0, align 4
@stats_v1_icb_reset_voistat = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_v1_blob_snapshot(%struct.statsblobv1** %0, i64 %1, %struct.statsblobv1* %2, i32 %3) #0 {
  %5 = alloca %struct.statsblobv1**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.statsblobv1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.statsblobv1** %0, %struct.statsblobv1*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.statsblobv1* %2, %struct.statsblobv1** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %11 = icmp ne %struct.statsblobv1* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %4
  %13 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %14 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATS_ABI_V1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.statsblobv1**, %struct.statsblobv1*** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @stats_v1_blob_clone(%struct.statsblobv1** %19, i64 %20, %struct.statsblobv1* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SB_CLONE_RSTSRC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %33 = load i32, i32* @stats_v1_icb_reset_voistat, align 4
  %34 = call i32 @stats_v1_blob_iter(%struct.statsblobv1* %32, i32 %33, i32* null, i32 0)
  %35 = call i32 (...) @stats_sbinuptime()
  %36 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %37 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.statsblobv1**, %struct.statsblobv1*** %5, align 8
  %40 = load %struct.statsblobv1*, %struct.statsblobv1** %39, align 8
  %41 = call i32 @stats_v1_blob_finalise(%struct.statsblobv1* %40)
  br label %42

42:                                               ; preds = %38, %18
  br label %45

43:                                               ; preds = %12, %4
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @stats_v1_blob_clone(%struct.statsblobv1**, i64, %struct.statsblobv1*, i32) #1

declare dso_local i32 @stats_v1_blob_iter(%struct.statsblobv1*, i32, i32*, i32) #1

declare dso_local i32 @stats_sbinuptime(...) #1

declare dso_local i32 @stats_v1_blob_finalise(%struct.statsblobv1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
