; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i64 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@AEL2005_GPIO_STAT = common dso_local global i32 0, align 4
@AEL2005_MODDET_IRQ = common dso_local global i32 0, align 4
@AEL2005_GPIO_CTRL = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@edc_twinax = common dso_local global i32 0, align 4
@edc_sr = common dso_local global i32 0, align 4
@cphy_cause_module_change = common dso_local global i32 0, align 4
@cphy_cause_link_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2005_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_intr_handler(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.cphy*, %struct.cphy** %3, align 8
  %9 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %10 = load i32, i32* @AEL2005_GPIO_STAT, align 4
  %11 = call i32 @mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %100

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AEL2005_MODDET_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %16
  %22 = load %struct.cphy*, %struct.cphy** %3, align 8
  %23 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %24 = load i32, i32* @AEL2005_GPIO_CTRL, align 4
  %25 = call i32 @mdio_write(%struct.cphy* %22, i32 %23, i32 %24, i32 3328)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %100

30:                                               ; preds = %21
  %31 = load %struct.cphy*, %struct.cphy** %3, align 8
  %32 = call i32 @ael2005_get_module_type(%struct.cphy* %31, i32 300)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %100

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.cphy*, %struct.cphy** %3, align 8
  %41 = getelementptr inbounds %struct.cphy, %struct.cphy* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @phy_modtype_none, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.cphy*, %struct.cphy** %3, align 8
  %47 = getelementptr inbounds %struct.cphy, %struct.cphy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @phy_modtype_twinax, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @phy_modtype_twinax_long, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @edc_twinax, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @edc_sr, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.cphy*, %struct.cphy** %3, align 8
  %65 = getelementptr inbounds %struct.cphy, %struct.cphy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.cphy*, %struct.cphy** %3, align 8
  %70 = call i32 @ael2005_reset(%struct.cphy* %69, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @cphy_cause_module_change, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %2, align 4
  br label %100

79:                                               ; preds = %62
  %80 = load i32, i32* @cphy_cause_module_change, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %16
  %82 = load %struct.cphy*, %struct.cphy** %3, align 8
  %83 = call i32 @t3_phy_lasi_intr_handler(%struct.cphy* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %100

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @cphy_cause_link_change, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %86, %77, %35, %28, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @ael2005_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_reset(%struct.cphy*, i32) #1

declare dso_local i32 @t3_phy_lasi_intr_handler(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
