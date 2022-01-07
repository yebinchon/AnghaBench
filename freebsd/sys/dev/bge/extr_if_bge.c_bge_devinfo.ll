; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"CHIP ID 0x%08x; ASIC REV 0x%02x; CHIP REV 0x%02x; \00", align 1
@BGE_FLAG_PCIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI-E\0A\00", align 1
@BGE_FLAG_PCIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"PCI-X \00", align 1
@BGE_MISC_CFG = common dso_local global i32 0, align 4
@BGE_MISCCFG_BOARD_ID_MASK = common dso_local global i32 0, align 4
@BGE_MISCCFG_BOARD_ID_5704CIOBE = common dso_local global i32 0, align 4
@BGE_PCI_CLKCTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%u MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PCI on PCI-X \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PCI \00", align 1
@BGE_PCI_PCISTATE = common dso_local global i32 0, align 4
@BGE_PCISTATE_PCI_BUSSPEED = common dso_local global i32 0, align 4
@BGE_PCISTATE_32BIT_BUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%u MHz; 32bit\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%u MHz; 64bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_devinfo(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %5 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %93

26:                                               ; preds = %1
  %27 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BGE_FLAG_PCIX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %36 = load i32, i32* @BGE_MISC_CFG, align 4
  %37 = call i32 @CSR_READ_4(%struct.bge_softc* %35, i32 %36)
  %38 = load i32, i32* @BGE_MISCCFG_BOARD_ID_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @BGE_MISCCFG_BOARD_ID_5704CIOBE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 133, i32* %4, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %46 = load i32, i32* @BGE_PCI_CLKCTL, align 4
  %47 = call i32 @CSR_READ_4(%struct.bge_softc* %45, i32 %46)
  %48 = and i32 %47, 31
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %55 [
    i32 0, label %50
    i32 2, label %51
    i32 4, label %52
    i32 6, label %53
    i32 7, label %54
  ]

50:                                               ; preds = %44
  store i32 33, i32* %4, align 4
  br label %55

51:                                               ; preds = %44
  store i32 50, i32* %4, align 4
  br label %55

52:                                               ; preds = %44
  store i32 66, i32* %4, align 4
  br label %55

53:                                               ; preds = %44
  store i32 100, i32* %4, align 4
  br label %55

54:                                               ; preds = %44
  store i32 133, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %54, %53, %52, %51, %50
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %92

59:                                               ; preds = %26
  %60 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  %69 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BGE_PCI_PCISTATE, align 4
  %73 = call i32 @pci_read_config(i32 %71, i32 %72, i32 4)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @BGE_PCISTATE_PCI_BUSSPEED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 66, i32* %4, align 4
  br label %80

79:                                               ; preds = %68
  store i32 33, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @BGE_PCISTATE_32BIT_BUS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %56
  br label %93

93:                                               ; preds = %92, %24
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
