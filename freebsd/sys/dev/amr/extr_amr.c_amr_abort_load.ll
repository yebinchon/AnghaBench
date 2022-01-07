; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_abort_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_abort_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i32, %struct.amr_softc* }
%struct.amr_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AMR_STATUS_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_command*)* @amr_abort_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_abort_load(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_softc*, align 8
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %5 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 1
  %7 = load %struct.amr_softc*, %struct.amr_softc** %6, align 8
  store %struct.amr_softc* %7, %struct.amr_softc** %4, align 8
  %8 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %9 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load i32, i32* @AMR_STATUS_ABORTED, align 4
  %13 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %14 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = call i32 @amr_init_qhead(i32* %3)
  %16 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %17 = call i32 @amr_enqueue_completed(%struct.amr_command* %16, i32* %3)
  %18 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %19 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  %21 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %22 = call i32 @amr_complete(%struct.amr_softc* %21, i32* %3)
  %23 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %24 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @amr_init_qhead(i32*) #1

declare dso_local i32 @amr_enqueue_completed(%struct.amr_command*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @amr_complete(%struct.amr_softc*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
