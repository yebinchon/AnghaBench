; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_read_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32 }

@SIS_RXFILT_CTL = common dso_local global i32 0, align 4
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_RELOAD = common dso_local global i32 0, align 4
@SIS_RXFILTCTL_ENABLE = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR0 = common dso_local global i32 0, align 4
@SIS_RXFILT_DATA = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR1 = common dso_local global i32 0, align 4
@SIS_FILTADDR_PAR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*, i32, i64)* @sis_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_read_mac(%struct.sis_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sis_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %10 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %11 = call i32 @CSR_READ_4(%struct.sis_softc* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %13 = load i32, i32* @SIS_CSR, align 4
  %14 = call i32 @CSR_READ_4(%struct.sis_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %16 = load i32, i32* @SIS_CSR, align 4
  %17 = load i32, i32* @SIS_CSR_RELOAD, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CSR_WRITE_4(%struct.sis_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %22 = load i32, i32* @SIS_CSR, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.sis_softc* %21, i32 %22, i32 0)
  %24 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %25 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SIS_RXFILTCTL_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @CSR_WRITE_4(%struct.sis_softc* %24, i32 %25, i32 %29)
  %31 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %32 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %33 = load i32, i32* @SIS_FILTADDR_PAR0, align 4
  %34 = call i32 @CSR_WRITE_4(%struct.sis_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %36 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %37 = call i32 @CSR_READ_2(%struct.sis_softc* %35, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %42 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %43 = load i32, i32* @SIS_FILTADDR_PAR1, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.sis_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %46 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %47 = call i32 @CSR_READ_2(%struct.sis_softc* %45, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %52 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %53 = load i32, i32* @SIS_FILTADDR_PAR2, align 4
  %54 = call i32 @CSR_WRITE_4(%struct.sis_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %56 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %57 = call i32 @CSR_READ_2(%struct.sis_softc* %55, i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %57, i32* %60, align 4
  %61 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %62 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @CSR_WRITE_4(%struct.sis_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.sis_softc*, %struct.sis_softc** %4, align 8
  %66 = load i32, i32* @SIS_CSR, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.sis_softc* %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.sis_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
