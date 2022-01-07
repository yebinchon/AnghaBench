; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_vendor_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_vendor_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i64, i32 }

@MDIO_DEV_VEND1 = common dso_local global i32 0, align 4
@e = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PHY%d: temperature is now %dC\0A\00", align 1
@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@F_GPIO10_OUT_VAL = common dso_local global i32 0, align 4
@F_GPIO6_OUT_VAL = common dso_local global i32 0, align 4
@cphy_cause_alarm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PHY%d: unhandled vendor interrupt (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*)* @aq100x_vendor_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_vendor_intr(%struct.cphy* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.cphy*, %struct.cphy** %4, align 8
  %10 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %11 = call i32 @mdio_read(%struct.cphy* %9, i32 %10, i32 64513, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @AQBIT(i32 2)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load %struct.cphy*, %struct.cphy** %4, align 8
  %23 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %24 = call i32 @mdio_read(%struct.cphy* %22, i32 %23, i32 52224, i32* %8)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %80

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @e, align 4
  %32 = call i32 @AQBIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load %struct.cphy*, %struct.cphy** %4, align 8
  %37 = getelementptr inbounds %struct.cphy, %struct.cphy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cphy*, %struct.cphy** %4, align 8
  %40 = getelementptr inbounds %struct.cphy, %struct.cphy* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cphy*, %struct.cphy** %4, align 8
  %43 = call i32 @aq100x_temperature(%struct.cphy* %42)
  %44 = call i32 @CH_WARN(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %43)
  %45 = load %struct.cphy*, %struct.cphy** %4, align 8
  %46 = getelementptr inbounds %struct.cphy, %struct.cphy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %49 = load %struct.cphy*, %struct.cphy** %4, align 8
  %50 = getelementptr inbounds %struct.cphy, %struct.cphy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load i32, i32* @F_GPIO10_OUT_VAL, align 4
  br label %57

55:                                               ; preds = %35
  %56 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @t3_set_reg_field(i32 %47, i32 %48, i32 %58, i32 0)
  %60 = load i32, i32* @cphy_cause_alarm, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %29
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -5
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %16
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.cphy*, %struct.cphy** %4, align 8
  %72 = getelementptr inbounds %struct.cphy, %struct.cphy* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cphy*, %struct.cphy** %4, align 8
  %75 = getelementptr inbounds %struct.cphy, %struct.cphy* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CH_WARN(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %67
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %27, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @AQBIT(i32) #1

declare dso_local i32 @CH_WARN(i32, i8*, i64, i32) #1

declare dso_local i32 @aq100x_temperature(%struct.cphy*) #1

declare dso_local i32 @t3_set_reg_field(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
