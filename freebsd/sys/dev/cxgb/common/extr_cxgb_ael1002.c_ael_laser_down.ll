; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael_laser_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael_laser_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@phy_transtype_sfp = common dso_local global i32 0, align 4
@MODULE_DEV_ADDR = common dso_local global i32 0, align 4
@SFF_DEV_ADDR = common dso_local global i32 0, align 4
@phy_transtype_xfp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael_laser_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael_laser_down(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = call i32 @get_phytrans_type(%struct.cphy* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @phy_transtype_sfp, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.cphy*, %struct.cphy** %4, align 8
  %20 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %21 = call i32 @ael_i2c_rd(%struct.cphy* %19, i32 %20, i32 93)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 64
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i32, i32* @SFF_DEV_ADDR, align 4
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %14
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @phy_transtype_xfp, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MODULE_DEV_ADDR, align 4
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %67

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.cphy*, %struct.cphy** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ael_i2c_rd(%struct.cphy* %45, i32 %46, i32 110)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, 64
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, -65
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.cphy*, %struct.cphy** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ael_i2c_wr(%struct.cphy* %62, i32 %63, i32 110, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %50, %41, %31, %24, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @get_phytrans_type(%struct.cphy*) #1

declare dso_local i32 @ael_i2c_rd(%struct.cphy*, i32, i32) #1

declare dso_local i32 @ael_i2c_wr(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
