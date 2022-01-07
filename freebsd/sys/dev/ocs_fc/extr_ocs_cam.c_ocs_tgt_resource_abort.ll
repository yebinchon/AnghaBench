; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_tgt_resource_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_tgt_resource_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocs_softc = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@sim_links = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CAM_REQ_ABORTED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocs_softc*, %struct.TYPE_6__*)* @ocs_tgt_resource_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_tgt_resource_abort(%struct.ocs_softc* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.ocs_softc*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i64, align 8
  store %struct.ocs_softc* %0, %struct.ocs_softc** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %union.ccb* null, %union.ccb** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = call i64 @STAILQ_FIRST(i32* %9)
  %11 = inttoptr i64 %10 to %union.ccb*
  store %union.ccb* %11, %union.ccb** %5, align 8
  %12 = load %union.ccb*, %union.ccb** %5, align 8
  %13 = icmp ne %union.ccb* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %18 = call i32 @STAILQ_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load i8*, i8** @CAM_REQ_ABORTED, align 8
  %20 = load %union.ccb*, %union.ccb** %5, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %union.ccb*, %union.ccb** %5, align 8
  %24 = call i32 @xpt_done(%union.ccb* %23)
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %14, %7
  br label %28

28:                                               ; preds = %27
  %29 = load %union.ccb*, %union.ccb** %5, align 8
  %30 = icmp ne %union.ccb* %29, null
  br i1 %30, label %7, label %31

31:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %53, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @STAILQ_FIRST(i32* %34)
  %36 = inttoptr i64 %35 to %union.ccb*
  store %union.ccb* %36, %union.ccb** %5, align 8
  %37 = load %union.ccb*, %union.ccb** %5, align 8
  %38 = icmp ne %union.ccb* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %43 = call i32 @STAILQ_REMOVE_HEAD(i32* %41, i32 %42)
  %44 = load i8*, i8** @CAM_REQ_ABORTED, align 8
  %45 = load %union.ccb*, %union.ccb** %5, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %union.ccb*, %union.ccb** %5, align 8
  %49 = call i32 @xpt_done(%union.ccb* %48)
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %39, %32
  br label %53

53:                                               ; preds = %52
  %54 = load %union.ccb*, %union.ccb** %5, align 8
  %55 = icmp ne %union.ccb* %54, null
  br i1 %55, label %32, label %56

56:                                               ; preds = %53
  ret i32 0
}

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
