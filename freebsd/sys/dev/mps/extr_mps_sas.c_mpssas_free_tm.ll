; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_free_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_free_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_command = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MPSSAS_TARGET_INRESET = common dso_local global i32 0, align 4
@MPS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unfreezing devq for target ID %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpssas_free_tm(%struct.mps_softc* %0, %struct.mps_command* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.mps_command* %1, %struct.mps_command** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %7 = icmp eq %struct.mps_command* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %61

9:                                                ; preds = %2
  %10 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %11 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* @MPSSAS_TARGET_INRESET, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %18 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %24 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %14, %9
  %29 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %30 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %35 = load i32, i32* @MPS_INFO, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mps_dprint(%struct.mps_softc* %34, i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %39 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @xpt_release_devq(i32 %43, i32 1, i32 %44)
  %46 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %47 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xpt_free_path(i32 %51)
  %53 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %54 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @xpt_free_ccb(%struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %33, %28
  %58 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %59 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %60 = call i32 @mps_free_high_priority_command(%struct.mps_softc* %58, %struct.mps_command* %59)
  br label %61

61:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32) #1

declare dso_local i32 @xpt_release_devq(i32, i32, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%struct.TYPE_6__*) #1

declare dso_local i32 @mps_free_high_priority_command(%struct.mps_softc*, %struct.mps_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
