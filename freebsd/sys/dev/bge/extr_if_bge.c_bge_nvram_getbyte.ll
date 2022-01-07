; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_nvram_getbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_nvram_getbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@BGE_NVRAM_SWARB = common dso_local global i32 0, align 4
@BGE_NVRAMSWARB_SET1 = common dso_local global i32 0, align 4
@BGE_NVRAMSWARB_GNT1 = common dso_local global i32 0, align 4
@BGE_NVRAM_ACCESS = common dso_local global i32 0, align 4
@BGE_NVRAMACC_ENABLE = common dso_local global i32 0, align 4
@BGE_NVRAM_ADDR = common dso_local global i32 0, align 4
@BGE_NVRAM_CMD = common dso_local global i32 0, align 4
@BGE_NVRAM_READCMD = common dso_local global i32 0, align 4
@BGE_TIMEOUT = common dso_local global i32 0, align 4
@BGE_NVRAMCMD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nvram read timed out\0A\00", align 1
@BGE_NVRAM_RDDATA = common dso_local global i32 0, align 4
@BGE_NVRAMSWARB_CLR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i32, i32*)* @bge_nvram_getbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_nvram_getbyte(%struct.bge_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %12 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %13 = load i32, i32* @BGE_NVRAMSWARB_SET1, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.bge_softc* %11, i32 %12, i32 %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %28, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 8000
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %20 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %21 = call i32 @CSR_READ_4(%struct.bge_softc* %19, i32 %20)
  %22 = load i32, i32* @BGE_NVRAMSWARB_GNT1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  %27 = call i32 @DELAY(i32 20)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %15

31:                                               ; preds = %25, %15
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 8000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %106

35:                                               ; preds = %31
  %36 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %37 = load i32, i32* @BGE_NVRAM_ACCESS, align 4
  %38 = call i32 @CSR_READ_4(%struct.bge_softc* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %40 = load i32, i32* @BGE_NVRAM_ACCESS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BGE_NVRAMACC_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CSR_WRITE_4(%struct.bge_softc* %39, i32 %40, i32 %43)
  %45 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %46 = load i32, i32* @BGE_NVRAM_ADDR, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -4
  %49 = call i32 @CSR_WRITE_4(%struct.bge_softc* %45, i32 %46, i32 %48)
  %50 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %51 = load i32, i32* @BGE_NVRAM_CMD, align 4
  %52 = load i32, i32* @BGE_NVRAM_READCMD, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.bge_softc* %50, i32 %51, i32 %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %70, %35
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @BGE_TIMEOUT, align 4
  %57 = mul nsw i32 %56, 10
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = call i32 @DELAY(i32 10)
  %61 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %62 = load i32, i32* @BGE_NVRAM_CMD, align 4
  %63 = call i32 @CSR_READ_4(%struct.bge_softc* %61, i32 %62)
  %64 = load i32, i32* @BGE_NVRAMCMD_DONE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @DELAY(i32 10)
  br label %73

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %54

73:                                               ; preds = %67, %54
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BGE_TIMEOUT, align 4
  %76 = mul nsw i32 %75, 10
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %80 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @if_printf(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %106

83:                                               ; preds = %73
  %84 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %85 = load i32, i32* @BGE_NVRAM_RDDATA, align 4
  %86 = call i32 @CSR_READ_4(%struct.bge_softc* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @bswap32(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = srem i32 %89, 4
  %91 = mul nsw i32 %90, 8
  %92 = ashr i32 %88, %91
  %93 = and i32 %92, 255
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %96 = load i32, i32* @BGE_NVRAM_ACCESS, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.bge_softc* %95, i32 %96, i32 %97)
  %99 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %100 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %101 = load i32, i32* @BGE_NVRAMSWARB_CLR1, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.bge_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %104 = load i32, i32* @BGE_NVRAM_SWARB, align 4
  %105 = call i32 @CSR_READ_4(%struct.bge_softc* %103, i32 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %83, %78, %34
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @bswap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
