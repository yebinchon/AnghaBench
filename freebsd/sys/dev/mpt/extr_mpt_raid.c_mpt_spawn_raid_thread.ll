; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_spawn_raid_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_spawn_raid_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32 }

@mpt_raid_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mpt_raid%d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_spawn_raid_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_spawn_raid_thread(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = call i32 @MPT_LOCK(%struct.mpt_softc* %4)
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xpt_freeze_simq(i32 %8, i32 1)
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %11 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %10)
  %12 = load i32, i32* @mpt_raid_thread, align 4
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 2
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kproc_create(i32 %12, %struct.mpt_softc* %13, i32* %15, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %24 = call i32 @MPT_LOCK(%struct.mpt_softc* %23)
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @xpt_release_simq(i32 %27, i32 %28)
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %31 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local i32 @kproc_create(i32, %struct.mpt_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
