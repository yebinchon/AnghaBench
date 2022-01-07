; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32 }

@FEC_IER_REG = common dso_local global i32 0, align 4
@FEC_IER_TXF = common dso_local global i32 0, align 4
@FEC_IER_RXF = common dso_local global i32 0, align 4
@FEC_IER_EBERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ethernet DMA error, restarting controller.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffec_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ffec_softc*
  store %struct.ffec_softc* %6, %struct.ffec_softc** %3, align 8
  %7 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %8 = call i32 @FFEC_LOCK(%struct.ffec_softc* %7)
  %9 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %10 = load i32, i32* @FEC_IER_REG, align 4
  %11 = call i32 @RD4(%struct.ffec_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FEC_IER_TXF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %18 = load i32, i32* @FEC_IER_REG, align 4
  %19 = load i32, i32* @FEC_IER_TXF, align 4
  %20 = call i32 @WR4(%struct.ffec_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %22 = call i32 @ffec_txfinish_locked(%struct.ffec_softc* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FEC_IER_RXF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %30 = load i32, i32* @FEC_IER_REG, align 4
  %31 = load i32, i32* @FEC_IER_RXF, align 4
  %32 = call i32 @WR4(%struct.ffec_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %34 = call i32 @ffec_rxfinish_locked(%struct.ffec_softc* %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FEC_IER_EBERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %42 = load i32, i32* @FEC_IER_REG, align 4
  %43 = load i32, i32* @FEC_IER_EBERR, align 4
  %44 = call i32 @WR4(%struct.ffec_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %50 = call i32 @ffec_stop_locked(%struct.ffec_softc* %49)
  %51 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %52 = call i32 @ffec_init_locked(%struct.ffec_softc* %51)
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %55 = call i32 @FFEC_UNLOCK(%struct.ffec_softc* %54)
  ret void
}

declare dso_local i32 @FFEC_LOCK(%struct.ffec_softc*) #1

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

declare dso_local i32 @ffec_txfinish_locked(%struct.ffec_softc*) #1

declare dso_local i32 @ffec_rxfinish_locked(%struct.ffec_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ffec_stop_locked(%struct.ffec_softc*) #1

declare dso_local i32 @ffec_init_locked(%struct.ffec_softc*) #1

declare dso_local i32 @FFEC_UNLOCK(%struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
