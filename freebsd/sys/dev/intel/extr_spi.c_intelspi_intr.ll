; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelspi_softc = type { i32, i32 }

@INTELSPI_BUSY = common dso_local global i32 0, align 4
@INTELSPI_SSPREG_SSSR = common dso_local global i32 0, align 4
@INTELSPI_SSPREG_SSCR1 = common dso_local global i32 0, align 4
@SSCR1_TIE = common dso_local global i32 0, align 4
@SSCR1_RIE = common dso_local global i32 0, align 4
@SSCR1_TINTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intelspi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelspi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intelspi_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intelspi_softc*
  store %struct.intelspi_softc* %6, %struct.intelspi_softc** %3, align 8
  %7 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %8 = call i32 @INTELSPI_LOCK(%struct.intelspi_softc* %7)
  %9 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTELSPI_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %17 = call i32 @INTELSPI_UNLOCK(%struct.intelspi_softc* %16)
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %20 = load i32, i32* @INTELSPI_SSPREG_SSSR, align 4
  %21 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %26 = call i32 @INTELSPI_UNLOCK(%struct.intelspi_softc* %25)
  br label %54

27:                                               ; preds = %18
  %28 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %29 = call i64 @intelspi_transact(%struct.intelspi_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %33 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %34 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @SSCR1_TIE, align 4
  %36 = load i32, i32* @SSCR1_RIE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SSCR1_TINTE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %44 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.intelspi_softc, %struct.intelspi_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wakeup(i32 %49)
  br label %51

51:                                               ; preds = %31, %27
  %52 = load %struct.intelspi_softc*, %struct.intelspi_softc** %3, align 8
  %53 = call i32 @INTELSPI_UNLOCK(%struct.intelspi_softc* %52)
  br label %54

54:                                               ; preds = %51, %24, %15
  ret void
}

declare dso_local i32 @INTELSPI_LOCK(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_UNLOCK(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_READ(%struct.intelspi_softc*, i32) #1

declare dso_local i64 @intelspi_transact(%struct.intelspi_softc*) #1

declare dso_local i32 @INTELSPI_WRITE(%struct.intelspi_softc*, i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
