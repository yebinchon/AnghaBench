; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_alloc_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_alloc_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i64 }
%struct.mpr_softc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MPI2_FUNCTION_SCSI_TASK_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpr_command* @mprsas_alloc_tm(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_command*, align 8
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.mpr_command*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  %6 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %7 = call i32 @MPR_FUNCTRACE(%struct.mpr_softc* %6)
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %9 = call %struct.mpr_command* @mpr_alloc_high_priority_command(%struct.mpr_softc* %8)
  store %struct.mpr_command* %9, %struct.mpr_command** %5, align 8
  %10 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %11 = icmp eq %struct.mpr_command* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.mpr_command* null, %struct.mpr_command** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %15 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %4, align 8
  %18 = load i32, i32* @MPI2_FUNCTION_SCSI_TASK_MGMT, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  store %struct.mpr_command* %21, %struct.mpr_command** %2, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.mpr_command*, %struct.mpr_command** %2, align 8
  ret %struct.mpr_command* %23
}

declare dso_local i32 @MPR_FUNCTRACE(%struct.mpr_softc*) #1

declare dso_local %struct.mpr_command* @mpr_alloc_high_priority_command(%struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
