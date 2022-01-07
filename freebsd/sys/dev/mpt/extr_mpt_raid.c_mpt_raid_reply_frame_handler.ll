; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_reply_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_reply_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mpt_raid_action_result = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"QUIESCE PHYSIO DONE\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ENABLY PHYSIO DONE\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.TYPE_6__*, i32*)* @mpt_raid_reply_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_raid_reply_frame_handler(%struct.mpt_softc* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.mpt_raid_action_result*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le16toh(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 129, label %28
  ]

25:                                               ; preds = %3
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %27 = call i32 @mpt_prt(%struct.mpt_softc* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %30 = call i32 @mpt_prt(%struct.mpt_softc* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %28, %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_6__* %33)
  store %struct.mpt_raid_action_result* %34, %struct.mpt_raid_action_result** %8, align 8
  %35 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %8, align 8
  %36 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i32 @memcpy(i32* %36, i32* %38, i32 4)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le16toh(i32 %42)
  %44 = load %struct.mpt_raid_action_result*, %struct.mpt_raid_action_result** %8, align 8
  %45 = getelementptr inbounds %struct.mpt_raid_action_result, %struct.mpt_raid_action_result* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @TRUE, align 4
  ret i32 %46
}

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local %struct.mpt_raid_action_result* @REQ_TO_RAID_ACTION_RESULT(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
