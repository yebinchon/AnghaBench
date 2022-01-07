; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_complete_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i64, i64, %struct.mly_softc* }
%struct.mly_softc = type { i32 }
%struct.mly_event = type { i32 }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_command*)* @mly_complete_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_complete_event(%struct.mly_command* %0) #0 {
  %2 = alloca %struct.mly_command*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.mly_event*, align 8
  store %struct.mly_command* %0, %struct.mly_command** %2, align 8
  %5 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %6 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %5, i32 0, i32 2
  %7 = load %struct.mly_softc*, %struct.mly_softc** %6, align 8
  store %struct.mly_softc* %7, %struct.mly_softc** %3, align 8
  %8 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %9 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mly_event*
  store %struct.mly_event* %11, %struct.mly_event** %4, align 8
  %12 = call i32 @debug_called(i32 1)
  %13 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %14 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCSI_STATUS_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %20 = load %struct.mly_event*, %struct.mly_event** %4, align 8
  %21 = call i32 @mly_process_event(%struct.mly_softc* %19, %struct.mly_event* %20)
  %22 = load %struct.mly_event*, %struct.mly_event** %4, align 8
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = call i32 @free(%struct.mly_event* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.mly_command*, %struct.mly_command** %2, align 8
  %27 = call i32 @mly_release_command(%struct.mly_command* %26)
  %28 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %29 = call i32 @mly_check_event(%struct.mly_softc* %28)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @mly_process_event(%struct.mly_softc*, %struct.mly_event*) #1

declare dso_local i32 @free(%struct.mly_event*, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

declare dso_local i32 @mly_check_event(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
