; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_wri2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_wri2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24HT_TIMEOUT = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CSTAT = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CSTAT_BSY = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CADDR = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDATA = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV_ADDR = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32, i32, i32)* @envy24ht_wri2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_wri2c(%struct.sc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %27, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %18 = load i32, i32* @ENVY24HT_CCS_I2CSTAT, align 4
  %19 = call i32 @envy24ht_rdcs(%struct.sc_info* %17, i32 %18, i32 1)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ENVY24HT_CCS_I2CSTAT_BSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %30

25:                                               ; preds = %16
  %26 = call i32 @DELAY(i32 32)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %12

30:                                               ; preds = %24, %12
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %76

35:                                               ; preds = %30
  %36 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %37 = load i32, i32* @ENVY24HT_CCS_I2CADDR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @envy24ht_wrcs(%struct.sc_info* %36, i32 %37, i32 %38, i32 1)
  %40 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %41 = load i32, i32* @ENVY24HT_CCS_I2CDATA, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @envy24ht_wrcs(%struct.sc_info* %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %45 = load i32, i32* @ENVY24HT_CCS_I2CDEV, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENVY24HT_CCS_I2CDEV_ADDR, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @ENVY24HT_CCS_I2CDEV_WR, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @envy24ht_wrcs(%struct.sc_info* %44, i32 %45, i32 %50, i32 1)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %67, %35
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %58 = load i32, i32* @ENVY24HT_CCS_I2CSTAT, align 4
  %59 = call i32 @envy24ht_rdcs(%struct.sc_info* %57, i32 %58, i32 1)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ENVY24HT_CCS_I2CSTAT_BSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %70

65:                                               ; preds = %56
  %66 = call i32 @DELAY(i32 32)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %52

70:                                               ; preds = %64, %52
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %76

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %74, %34
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @envy24ht_rdcs(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @envy24ht_wrcs(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
