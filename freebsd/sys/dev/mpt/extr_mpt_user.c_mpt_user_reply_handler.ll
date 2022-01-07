; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_reply_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_user_reply_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.mpt_user_raid_action_result = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@REQ_STATE_QUEUED = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@REQ_STATE_NEED_WAKEUP = common dso_local global i32 0, align 4
@REQ_STATE_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.TYPE_7__*, i32, i32*)* @mpt_user_reply_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_user_reply_handler(%struct.mpt_softc* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpt_softc*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.mpt_user_raid_action_result*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %5, align 4
  br label %93

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16toh(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %33 = call i32 @MPT_RQSL(%struct.mpt_softc* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = bitcast i32* %35 to %struct.mpt_user_raid_action_result*
  store %struct.mpt_user_raid_action_result* %36, %struct.mpt_user_raid_action_result** %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %11, align 8
  %41 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %11, align 8
  %46 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.mpt_user_raid_action_result*, %struct.mpt_user_raid_action_result** %11, align 8
  %50 = getelementptr inbounds %struct.mpt_user_raid_action_result, %struct.mpt_user_raid_action_result* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bcopy(i32* %48, i32 %51, i32 4)
  br label %53

53:                                               ; preds = %19, %16
  %54 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @REQ_STATE_DONE, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %66 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = load i32, i32* @links, align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.TYPE_7__* %67, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @REQ_STATE_NEED_WAKEUP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %53
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = call i32 @wakeup(%struct.TYPE_7__* %77)
  br label %91

79:                                               ; preds = %53
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @REQ_STATE_TIMEDOUT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = call i32 @mpt_free_request(%struct.mpt_softc* %87, %struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %14
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @MPT_RQSL(%struct.mpt_softc*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_7__*) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
