; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.ar71xx_spi_softc = type { i32 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @ar71xx_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_command*, align 8
  %7 = alloca %struct.ar71xx_spi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.spi_command* %2, %struct.spi_command** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ar71xx_spi_softc* @device_get_softc(i32 %12)
  store %struct.ar71xx_spi_softc* %13, %struct.ar71xx_spi_softc** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @spibus_get_cs(i32 %14, i32* %8)
  %16 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ar71xx_spi_chip_activate(%struct.ar71xx_spi_softc* %20, i32 %21)
  %23 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %24 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %27 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %33 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %36 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %42 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %10, align 8
  %45 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %46 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %68, %3
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %52 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ar71xx_spi_txrx(%struct.ar71xx_spi_softc* %56, i32 %57, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %49

71:                                               ; preds = %49
  %72 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %73 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %10, align 8
  %76 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %77 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %99, %71
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %83 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ar71xx_spi_txrx(%struct.ar71xx_spi_softc* %87, i32 %88, i32 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %80

102:                                              ; preds = %80
  %103 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ar71xx_spi_chip_deactivate(%struct.ar71xx_spi_softc* %103, i32 %104)
  ret i32 0
}

declare dso_local %struct.ar71xx_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @ar71xx_spi_chip_activate(%struct.ar71xx_spi_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ar71xx_spi_txrx(%struct.ar71xx_spi_softc*, i32, i32) #1

declare dso_local i32 @ar71xx_spi_chip_deactivate(%struct.ar71xx_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
