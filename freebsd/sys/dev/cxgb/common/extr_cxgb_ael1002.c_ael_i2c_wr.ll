; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael_i2c_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael_i2c_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@AEL_I2C_DATA = common dso_local global i32 0, align 4
@AEL_I2C_CTRL = common dso_local global i32 0, align 4
@AEL_I2C_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"PHY %u i2c Write of dev.addr %x.%x = %#x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32, i32, i32)* @ael_i2c_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael_i2c_wr(%struct.cphy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cphy*, %struct.cphy** %6, align 8
  %14 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %15 = load i32, i32* @AEL_I2C_DATA, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @mdio_write(%struct.cphy* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.cphy*, %struct.cphy** %6, align 8
  %24 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %25 = load i32, i32* @AEL_I2C_CTRL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mdio_write(%struct.cphy* %23, i32 %24, i32 %25, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %71

35:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 200
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = call i32 @msleep(i32 1)
  %41 = load %struct.cphy*, %struct.cphy** %6, align 8
  %42 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %43 = load i32, i32* @AEL_I2C_STAT, align 4
  %44 = call i32 @mdio_read(%struct.cphy* %41, i32 %42, i32 %43, i32* %12)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %71

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.cphy*, %struct.cphy** %6, align 8
  %60 = getelementptr inbounds %struct.cphy, %struct.cphy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cphy*, %struct.cphy** %6, align 8
  %63 = getelementptr inbounds %struct.cphy, %struct.cphy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CH_WARN(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %58, %53, %47, %33, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @CH_WARN(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
