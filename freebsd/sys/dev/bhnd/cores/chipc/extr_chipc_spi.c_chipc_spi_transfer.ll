; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.chipc_spi_softc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"size of command is ZERO\00", align 1
@EIO = common dso_local global i32 0, align 4
@CHIPC_SPI_FLASHADDR = common dso_local global i32 0, align 4
@CHIPC_SPI_FLASHCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @chipc_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.chipc_spi_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.chipc_spi_softc* @device_get_softc(i32 %12)
  store %struct.chipc_spi_softc* %13, %struct.chipc_spi_softc** %8, align 8
  %14 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %15 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %18 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %24 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %27 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %33 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BHND_DEBUG_DEV(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %123

40:                                               ; preds = %3
  %41 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %42 = call i32 @SPI_BARRIER_WRITE(%struct.chipc_spi_softc* %41)
  %43 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %44 = load i32, i32* @CHIPC_SPI_FLASHADDR, align 4
  %45 = call i32 @SPI_WRITE(%struct.chipc_spi_softc* %43, i32 %44, i32 0)
  %46 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %47 = call i32 @SPI_BARRIER_WRITE(%struct.chipc_spi_softc* %46)
  %48 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %10, align 8
  %52 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %53 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %78, %40
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %59 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i64 @chipc_spi_txrx(%struct.chipc_spi_softc* %63, i32 %68, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @EIO, align 4
  store i32 %76, i32* %4, align 4
  br label %123

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %83 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %10, align 8
  %86 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %87 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %112, %81
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %93 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i64 @chipc_spi_txrx(%struct.chipc_spi_softc* %97, i32 %102, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %4, align 4
  br label %123

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %117 = call i32 @SPI_BARRIER_WRITE(%struct.chipc_spi_softc* %116)
  %118 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %119 = load i32, i32* @CHIPC_SPI_FLASHCTL, align 4
  %120 = call i32 @SPI_WRITE(%struct.chipc_spi_softc* %118, i32 %119, i32 0)
  %121 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %8, align 8
  %122 = call i32 @SPI_BARRIER_WRITE(%struct.chipc_spi_softc* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %115, %109, %75, %36
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.chipc_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BHND_DEBUG_DEV(i32, i8*) #1

declare dso_local i32 @SPI_BARRIER_WRITE(%struct.chipc_spi_softc*) #1

declare dso_local i32 @SPI_WRITE(%struct.chipc_spi_softc*, i32, i32) #1

declare dso_local i64 @chipc_spi_txrx(%struct.chipc_spi_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
