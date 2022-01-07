; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i64, i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@LASI_CTRL = common dso_local global i32 0, align 4
@edc_none = common dso_local global i32 0, align 4
@ael2020_reset_regs = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2020_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %10 = load i32, i32* @LASI_CTRL, align 4
  %11 = call i32 @mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %19 = call i32 @t3_phy_reset(%struct.cphy* %17, i32 %18, i32 125)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %16
  %25 = call i32 @msleep(i32 100)
  %26 = load i32, i32* @edc_none, align 4
  %27 = load %struct.cphy*, %struct.cphy** %4, align 8
  %28 = getelementptr inbounds %struct.cphy, %struct.cphy* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cphy*, %struct.cphy** %4, align 8
  %30 = load i32, i32* @ael2020_reset_regs, align 4
  %31 = call i32 @set_phy_regs(%struct.cphy* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %83

36:                                               ; preds = %24
  %37 = call i32 @msleep(i32 100)
  %38 = load %struct.cphy*, %struct.cphy** %4, align 8
  %39 = call i32 @ael2020_get_module_type(%struct.cphy* %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.cphy*, %struct.cphy** %4, align 8
  %48 = getelementptr inbounds %struct.cphy, %struct.cphy* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @phy_modtype_none, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %69

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @phy_modtype_twinax, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @phy_modtype_twinax_long, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %53
  %62 = load %struct.cphy*, %struct.cphy** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ael2020_setup_twinax_edc(%struct.cphy* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.cphy*, %struct.cphy** %4, align 8
  %67 = call i32 @ael2020_setup_sr_edc(%struct.cphy* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.cphy*, %struct.cphy** %4, align 8
  %80 = call i32 @ael2020_intr_enable(%struct.cphy* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %72, %42, %34, %22, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_phy_reset(%struct.cphy*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_setup_twinax_edc(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_setup_sr_edc(%struct.cphy*) #1

declare dso_local i32 @ael2020_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
