; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i32 }
%struct.voi = type { i32, i32 }
%struct.voistat = type { i32, i32, i32, i32, i32 }
%struct.sb_iter_ctx = type { i32, %struct.sb_visitcb_ctx* }
%struct.sb_visitcb_ctx = type { i32 (%struct.sb_visit*, i32)*, i32 }
%struct.sb_visit = type opaque
%struct.sb_visit.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SB_IT_FIRST_CB = common dso_local global i32 0, align 4
@SB_IT_LAST_CB = common dso_local global i32 0, align 4
@SB_IT_FIRST_VOI = common dso_local global i32 0, align 4
@SB_IT_LAST_VOI = common dso_local global i32 0, align 4
@SB_IT_FIRST_VOISTAT = common dso_local global i32 0, align 4
@SB_IT_LAST_VOISTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)* @stats_v1_itercb_visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_v1_itercb_visit(%struct.statsblobv1* %0, %struct.voi* %1, %struct.voistat* %2, %struct.sb_iter_ctx* %3) #0 {
  %5 = alloca %struct.statsblobv1*, align 8
  %6 = alloca %struct.voi*, align 8
  %7 = alloca %struct.voistat*, align 8
  %8 = alloca %struct.sb_iter_ctx*, align 8
  %9 = alloca %struct.sb_visitcb_ctx*, align 8
  %10 = alloca %struct.sb_visit.0, align 4
  store %struct.statsblobv1* %0, %struct.statsblobv1** %5, align 8
  store %struct.voi* %1, %struct.voi** %6, align 8
  store %struct.voistat* %2, %struct.voistat** %7, align 8
  store %struct.sb_iter_ctx* %3, %struct.sb_iter_ctx** %8, align 8
  %11 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 1
  %13 = load %struct.sb_visitcb_ctx*, %struct.sb_visitcb_ctx** %12, align 8
  store %struct.sb_visitcb_ctx* %13, %struct.sb_visitcb_ctx** %9, align 8
  %14 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %15 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.voi*, %struct.voi** %6, align 8
  %19 = getelementptr inbounds %struct.voi, %struct.voi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.voi*, %struct.voi** %6, align 8
  %23 = getelementptr inbounds %struct.voi, %struct.voi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load %struct.voistat*, %struct.voistat** %7, align 8
  %27 = getelementptr inbounds %struct.voistat, %struct.voistat* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.voistat*, %struct.voistat** %7, align 8
  %31 = getelementptr inbounds %struct.voistat, %struct.voistat* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.voistat*, %struct.voistat** %7, align 8
  %35 = getelementptr inbounds %struct.voistat, %struct.voistat* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %39 = load %struct.voistat*, %struct.voistat** %7, align 8
  %40 = getelementptr inbounds %struct.voistat, %struct.voistat* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BLOB_OFFSET(%struct.statsblobv1* %38, i32 %41)
  %43 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.voistat*, %struct.voistat** %7, align 8
  %45 = getelementptr inbounds %struct.voistat, %struct.voistat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SB_IT_FIRST_CB, align 4
  %52 = load i32, i32* @SB_IT_LAST_CB, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SB_IT_FIRST_VOI, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SB_IT_LAST_VOI, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SB_IT_FIRST_VOISTAT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SB_IT_LAST_VOISTAT, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %50, %61
  %63 = getelementptr inbounds %struct.sb_visit.0, %struct.sb_visit.0* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.sb_visitcb_ctx*, %struct.sb_visitcb_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.sb_visitcb_ctx, %struct.sb_visitcb_ctx* %64, i32 0, i32 0
  %66 = load i32 (%struct.sb_visit*, i32)*, i32 (%struct.sb_visit*, i32)** %65, align 8
  %67 = bitcast %struct.sb_visit.0* %10 to %struct.sb_visit*
  %68 = load %struct.sb_visitcb_ctx*, %struct.sb_visitcb_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.sb_visitcb_ctx, %struct.sb_visitcb_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.sb_visit* %67, i32 %70)
  ret i32 %71
}

declare dso_local i32 @BLOB_OFFSET(%struct.statsblobv1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
