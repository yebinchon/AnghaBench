; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_free_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_free_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_command = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MPRSAS_TARGET_INRESET = common dso_local global i32 0, align 4
@MPR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unfreezing devq for target ID %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mprsas_free_tm(%struct.mpr_softc* %0, %struct.mpr_command* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %7 = call i32 @MPR_FUNCTRACE(%struct.mpr_softc* %6)
  %8 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %9 = icmp eq %struct.mpr_command* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %13 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32, i32* @MPRSAS_TARGET_INRESET, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %20 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %26 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %16, %11
  %31 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %32 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %37 = load i32, i32* @MPR_INFO, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mpr_dprint(%struct.mpr_softc* %36, i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %41 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @xpt_release_devq(i32 %45, i32 1, i32 %46)
  %48 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %49 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xpt_free_path(i32 %53)
  %55 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %56 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i32 @xpt_free_ccb(%struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %35, %30
  %60 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %61 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %62 = call i32 @mpr_free_high_priority_command(%struct.mpr_softc* %60, %struct.mpr_command* %61)
  br label %63

63:                                               ; preds = %59, %10
  ret void
}

declare dso_local i32 @MPR_FUNCTRACE(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i32) #1

declare dso_local i32 @xpt_release_devq(i32, i32, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%struct.TYPE_6__*) #1

declare dso_local i32 @mpr_free_high_priority_command(%struct.mpr_softc*, %struct.mpr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
