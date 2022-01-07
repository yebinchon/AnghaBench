; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bio = type { %struct.g_rr_queue* }
%struct.g_rr_queue = type { i32, i32, i32 }
%struct.g_rr_softc = type { i32, i32, %struct.g_rr_queue* }

@me = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@G_QUEUE_READY = common dso_local global i32 0, align 4
@q_tailq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bio*)* @g_rr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_rr_start(i8* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.g_rr_softc*, align 8
  %7 = alloca %struct.g_rr_queue*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.g_rr_softc*
  store %struct.g_rr_softc* %9, %struct.g_rr_softc** %6, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = call %struct.g_rr_queue* @g_rr_queue_get(%struct.g_rr_softc* %14, %struct.bio* %15)
  store %struct.g_rr_queue* %16, %struct.g_rr_queue** %7, align 8
  %17 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %18 = icmp eq %struct.g_rr_queue* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %71

20:                                               ; preds = %13
  %21 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %22 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %21, i32 0, i32 1
  %23 = call i32* @bioq_first(i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %27 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %28 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %27, i32 0, i32 2
  %29 = load %struct.g_rr_queue*, %struct.g_rr_queue** %28, align 8
  %30 = icmp eq %struct.g_rr_queue* %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @G_QUEUE_READY, align 4
  %33 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %34 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %36 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %35, i32 0, i32 1
  %37 = call i32 @callout_stop(i32* %36)
  br label %46

38:                                               ; preds = %25
  %39 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %40 = call i32 @g_sched_priv_ref(%struct.g_rr_queue* %39)
  %41 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %42 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %41, i32 0, i32 0
  %43 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %44 = load i32, i32* @q_tailq, align 4
  %45 = call i32 @TAILQ_INSERT_TAIL(i32* %42, %struct.g_rr_queue* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %31
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %49 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 1, %50
  %52 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %53 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 3
  %56 = sub nsw i32 %51, %55
  %57 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %58 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %60 = call i32 @g_rr_update_thinktime(%struct.g_rr_queue* %59)
  %61 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i32 @g_rr_update_seekdist(%struct.g_rr_queue* %61, %struct.bio* %62)
  %64 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  store %struct.g_rr_queue* %64, %struct.g_rr_queue** %66, align 8
  %67 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %68 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %67, i32 0, i32 1
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = call i32 @bioq_disksort(i32* %68, %struct.bio* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %47, %19, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.g_rr_queue* @g_rr_queue_get(%struct.g_rr_softc*, %struct.bio*) #1

declare dso_local i32* @bioq_first(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @g_sched_priv_ref(%struct.g_rr_queue*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_rr_queue*, i32) #1

declare dso_local i32 @g_rr_update_thinktime(%struct.g_rr_queue*) #1

declare dso_local i32 @g_rr_update_seekdist(%struct.g_rr_queue*, %struct.bio*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
