; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw.c_pci_dw_map_out_atu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw.c_pci_dw_map_out_atu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dw_softc = type { i32 }

@DW_IATU_VIEWPORT = common dso_local global i32 0, align 4
@DW_IATU_LWR_BASE_ADDR = common dso_local global i32 0, align 4
@DW_IATU_UPPER_BASE_ADDR = common dso_local global i32 0, align 4
@DW_IATU_LIMIT_ADDR = common dso_local global i32 0, align 4
@DW_IATU_LWR_TARGET_ADDR = common dso_local global i32 0, align 4
@DW_IATU_UPPER_TARGET_ADDR = common dso_local global i32 0, align 4
@DW_IATU_CTRL1 = common dso_local global i32 0, align 4
@DW_IATU_CTRL2 = common dso_local global i32 0, align 4
@IATU_CTRL2_REGION_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot map outbound region(%d) in iATU\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dw_softc*, i32, i32, i32, i32, i32)* @pci_dw_map_out_atu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dw_map_out_atu(%struct.pci_dw_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dw_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dw_softc* %0, %struct.pci_dw_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %83

19:                                               ; preds = %6
  %20 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %21 = load i32, i32* @DW_IATU_VIEWPORT, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @IATU_REGION_INDEX(i32 %22)
  %24 = call i32 @DBI_WR4(%struct.pci_dw_softc* %20, i32 %21, i32 %23)
  %25 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %26 = load i32, i32* @DW_IATU_LWR_BASE_ADDR, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @DBI_WR4(%struct.pci_dw_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %30 = load i32, i32* @DW_IATU_UPPER_BASE_ADDR, align 4
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @DBI_WR4(%struct.pci_dw_softc* %29, i32 %30, i32 %32)
  %34 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %35 = load i32, i32* @DW_IATU_LIMIT_ADDR, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @DBI_WR4(%struct.pci_dw_softc* %34, i32 %35, i32 %39)
  %41 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %42 = load i32, i32* @DW_IATU_LWR_TARGET_ADDR, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @DBI_WR4(%struct.pci_dw_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %46 = load i32, i32* @DW_IATU_UPPER_TARGET_ADDR, align 4
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 32
  %49 = call i32 @DBI_WR4(%struct.pci_dw_softc* %45, i32 %46, i32 %48)
  %50 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %51 = load i32, i32* @DW_IATU_CTRL1, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @IATU_CTRL1_TYPE(i32 %52)
  %54 = call i32 @DBI_WR4(%struct.pci_dw_softc* %50, i32 %51, i32 %53)
  %55 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %56 = load i32, i32* @DW_IATU_CTRL2, align 4
  %57 = load i32, i32* @IATU_CTRL2_REGION_EN, align 4
  %58 = call i32 @DBI_WR4(%struct.pci_dw_softc* %55, i32 %56, i32 %57)
  store i32 10, i32* %15, align 4
  br label %59

59:                                               ; preds = %73, %19
  %60 = load i32, i32* %15, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %64 = load i32, i32* @DW_IATU_CTRL2, align 4
  %65 = call i32 @DBI_RD4(%struct.pci_dw_softc* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @IATU_CTRL2_REGION_EN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %83

71:                                               ; preds = %62
  %72 = call i32 @DELAY(i32 5)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %15, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %8, align 8
  %78 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %70, %18
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @DBI_WR4(%struct.pci_dw_softc*, i32, i32) #1

declare dso_local i32 @IATU_REGION_INDEX(i32) #1

declare dso_local i32 @IATU_CTRL1_TYPE(i32) #1

declare dso_local i32 @DBI_RD4(%struct.pci_dw_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
