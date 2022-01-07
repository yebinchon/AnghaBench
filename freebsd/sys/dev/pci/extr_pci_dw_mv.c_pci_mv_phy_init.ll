; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw_mv.c_pci_mv_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_mv_softc = type { i32**, i32, i32 }

@MV_MAX_LANES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot get phy[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot enable phy[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_mv_softc*)* @pci_mv_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mv_phy_init(%struct.pci_mv_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_mv_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_mv_softc* %0, %struct.pci_mv_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %65, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MV_MAX_LANES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %15 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = call i32 @phy_get_by_ofw_idx(i32 %13, i32 %16, i32 %17, i32** %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %10
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %33 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %69

37:                                               ; preds = %27, %10
  %38 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %65

47:                                               ; preds = %37
  %48 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %49 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @phy_enable(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %60 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %69

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %6

68:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %98

69:                                               ; preds = %58, %31
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %93, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MV_MAX_LANES, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %76 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %93

84:                                               ; preds = %74
  %85 = load %struct.pci_mv_softc*, %struct.pci_mv_softc** %3, align 8
  %86 = getelementptr inbounds %struct.pci_mv_softc, %struct.pci_mv_softc* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @phy_release(i32* %91)
  br label %93

93:                                               ; preds = %84, %83
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %70

96:                                               ; preds = %70
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %68
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @phy_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @phy_enable(i32*) #1

declare dso_local i32 @phy_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
