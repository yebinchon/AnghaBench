; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_chip_tq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_chip_tq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Restarting the interface...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bxe_handle_chip_tq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_handle_chip_tq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bxe_softc*
  store %struct.bxe_softc* %8, %struct.bxe_softc** %5, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 1
  %11 = call i64 @atomic_load_acq_long(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %36 [
    i64 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @if_getdrvflags(i32 %16)
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %23 = load i32, i32* @DBG_LOAD, align 4
  %24 = call i32 @BLOGD(%struct.bxe_softc* %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %26 = call i32 @bxe_periodic_stop(%struct.bxe_softc* %25)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = call i32 @BXE_CORE_LOCK(%struct.bxe_softc* %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = call i32 @bxe_stop_locked(%struct.bxe_softc* %29)
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %32 = call i32 @bxe_init_locked(%struct.bxe_softc* %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %34 = call i32 @BXE_CORE_UNLOCK(%struct.bxe_softc* %33)
  br label %35

35:                                               ; preds = %21, %13
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %35
  ret void
}

declare dso_local i64 @atomic_load_acq_long(i32*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @bxe_periodic_stop(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_CORE_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stop_locked(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_locked(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_CORE_UNLOCK(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
