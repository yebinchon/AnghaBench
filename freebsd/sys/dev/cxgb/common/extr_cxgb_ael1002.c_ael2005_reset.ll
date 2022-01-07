; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i64, i32 }

@ael2005_reset.regs0 = internal global [8 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49153, i32 0, i32 32 }, %struct.reg_val { i32 128, i32 49175, i32 0, i32 32 }, %struct.reg_val { i32 128, i32 49171, i32 65535, i32 62273 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 32768 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 33024 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 32768 }, %struct.reg_val { i32 128, i32 49680, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@ael2005_reset.regs1 = internal global [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 51712, i32 65535, i32 128 }, %struct.reg_val { i32 128, i32 51730, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@LASI_CTRL = common dso_local global i32 0, align 4
@edc_none = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2005_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_reset(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @LASI_CTRL, align 4
  %10 = call i32 @mdio_read(%struct.cphy* %8, i32 128, i32 %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.cphy*, %struct.cphy** %4, align 8
  %17 = call i32 @t3_phy_reset(%struct.cphy* %16, i32 128, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %15
  %23 = call i32 @msleep(i32 125)
  %24 = load i32, i32* @edc_none, align 4
  %25 = load %struct.cphy*, %struct.cphy** %4, align 8
  %26 = getelementptr inbounds %struct.cphy, %struct.cphy* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cphy*, %struct.cphy** %4, align 8
  %28 = call i32 @set_phy_regs(%struct.cphy* %27, %struct.reg_val* getelementptr inbounds ([8 x %struct.reg_val], [8 x %struct.reg_val]* @ael2005_reset.regs0, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %22
  %34 = call i32 @msleep(i32 50)
  %35 = load %struct.cphy*, %struct.cphy** %4, align 8
  %36 = call i32 @ael2005_get_module_type(%struct.cphy* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %87

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.cphy*, %struct.cphy** %4, align 8
  %45 = getelementptr inbounds %struct.cphy, %struct.cphy* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @phy_modtype_none, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %66

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @phy_modtype_twinax, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @phy_modtype_twinax_long, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = load %struct.cphy*, %struct.cphy** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ael2005_setup_twinax_edc(%struct.cphy* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.cphy*, %struct.cphy** %4, align 8
  %64 = call i32 @ael2005_setup_sr_edc(%struct.cphy* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %66
  %72 = load %struct.cphy*, %struct.cphy** %4, align 8
  %73 = call i32 @set_phy_regs(%struct.cphy* %72, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2005_reset.regs1, i64 0, i64 0))
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.cphy*, %struct.cphy** %4, align 8
  %84 = call i32 @ael2005_intr_enable(%struct.cphy* %83)
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %76, %69, %39, %31, %20, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_phy_reset(%struct.cphy*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @ael2005_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_setup_twinax_edc(%struct.cphy*, i32) #1

declare dso_local i32 @ael2005_setup_sr_edc(%struct.cphy*) #1

declare dso_local i32 @ael2005_intr_enable(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
