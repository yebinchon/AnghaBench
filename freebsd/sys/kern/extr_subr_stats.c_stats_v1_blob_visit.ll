; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i64 }
%struct.sb_visitcb_ctx = type { i8*, i32* }

@STATS_ABI_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@stats_v1_itercb_visit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_v1_blob_visit(%struct.statsblobv1* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.statsblobv1*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sb_visitcb_ctx, align 8
  store %struct.statsblobv1* %0, %struct.statsblobv1** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %10 = icmp eq %struct.statsblobv1* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %13 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATS_ABI_V1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %11, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds %struct.sb_visitcb_ctx, %struct.sb_visitcb_ctx* %8, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.sb_visitcb_ctx, %struct.sb_visitcb_ctx* %8, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %28 = load i32, i32* @stats_v1_itercb_visit, align 4
  %29 = call i32 @stats_v1_blob_iter(%struct.statsblobv1* %27, i32 %28, %struct.sb_visitcb_ctx* %8, i32 0)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @stats_v1_blob_iter(%struct.statsblobv1*, i32, %struct.sb_visitcb_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
