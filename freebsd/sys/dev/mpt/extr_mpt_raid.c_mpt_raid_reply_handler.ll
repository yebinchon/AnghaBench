; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_reply_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_reply_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@REQ_STATE_QUEUED = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@REQ_STATE_NEED_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.TYPE_7__*, i32, i32*)* @mpt_raid_reply_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_raid_reply_handler(%struct.mpt_softc* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpt_softc*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %5, align 4
  br label %60

15:                                               ; preds = %4
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @mpt_raid_reply_frame_handler(%struct.mpt_softc* %20, %struct.TYPE_7__* %21, i32* %22)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @REQ_STATE_DONE, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = load i32, i32* @links, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.TYPE_7__* %38, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @REQ_STATE_NEED_WAKEUP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %24
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = call i32 @wakeup(%struct.TYPE_7__* %48)
  br label %58

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i32 @mpt_free_request(%struct.mpt_softc* %54, %struct.TYPE_7__* %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %13
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @mpt_raid_reply_frame_handler(%struct.mpt_softc*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_7__*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
