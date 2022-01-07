; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_rdi2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_rdi2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENVY24HT_TIMEOUT = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CSTAT = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CSTAT_BSY = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CADDR = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV_ADDR = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDEV_RD = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2CDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32, i32)* @envy24ht_rdi2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_rdi2c(%struct.sc_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %16 = load i32, i32* @ENVY24HT_CCS_I2CSTAT, align 4
  %17 = call i32 @envy24ht_rdcs(%struct.sc_info* %15, i32 %16, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ENVY24HT_CCS_I2CSTAT_BSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = call i32 @DELAY(i32 32)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %74

33:                                               ; preds = %28
  %34 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %35 = load i32, i32* @ENVY24HT_CCS_I2CADDR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @envy24ht_wrcs(%struct.sc_info* %34, i32 %35, i32 %36, i32 1)
  %38 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %39 = load i32, i32* @ENVY24HT_CCS_I2CDEV, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENVY24HT_CCS_I2CDEV_ADDR, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @ENVY24HT_CCS_I2CDEV_RD, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @envy24ht_wrcs(%struct.sc_info* %38, i32 %39, i32 %44, i32 1)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %33
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %52 = load i32, i32* @ENVY24HT_CCS_I2CSTAT, align 4
  %53 = call i32 @envy24ht_rdcs(%struct.sc_info* %51, i32 %52, i32 1)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENVY24HT_CCS_I2CSTAT_BSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %64

59:                                               ; preds = %50
  %60 = call i32 @DELAY(i32 32)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %58, %46
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ENVY24HT_TIMEOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %74

69:                                               ; preds = %64
  %70 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %71 = load i32, i32* @ENVY24HT_CCS_I2CDATA, align 4
  %72 = call i32 @envy24ht_rdcs(%struct.sc_info* %70, i32 %71, i32 1)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %68, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
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
