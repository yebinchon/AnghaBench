; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_reset_hw_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_reset_hw_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82541\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@e1000_82547 = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Issuing a global reset to 82541/82547 MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_ARP_EN = common dso_local global i32 0, align 4
@E1000_LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_IMC, align 4
  %10 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %8, i32 %9, i32 -1)
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_RCTL, align 4
  %13 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %11, i32 %12, i32 0)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_TCTL, align 4
  %16 = load i32, i32* @E1000_TCTL_PSP, align 4
  %17 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %18)
  %20 = call i32 @msec_delay(i32 10)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_CTRL, align 4
  %23 = call i32 @E1000_READ_REG(%struct.e1000_hw* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @e1000_82547, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29, %1
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_CTRL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %37, i32 %38, i32 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %43)
  %45 = call i32 @msec_delay(i32 5)
  br label %46

46:                                               ; preds = %36, %29
  %47 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %59 [
    i32 129, label %52
    i32 128, label %52
  ]

52:                                               ; preds = %46, %46
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_CTRL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @E1000_CTRL_RST, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @E1000_WRITE_REG_IO(%struct.e1000_hw* %53, i32 %54, i32 %57)
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @E1000_CTRL, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @E1000_CTRL_RST, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = call i32 @msec_delay(i32 20)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = load i32, i32* @E1000_MANC, align 4
  %70 = call i32 @E1000_READ_REG(%struct.e1000_hw* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @E1000_MANC_ARP_EN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = load i32, i32* @E1000_MANC, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 129
  br i1 %83, label %91, label %84

84:                                               ; preds = %66
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @e1000_82547, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %84, %66
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = call i32 @e1000_phy_init_script_82541(%struct.e1000_hw* %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = load i32, i32* @E1000_LEDCTL, align 4
  %96 = call i32 @E1000_READ_REG(%struct.e1000_hw* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %101 = load i32, i32* @IGP_LED3_MODE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %106 = load i32, i32* @E1000_LEDCTL, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %91, %84
  %110 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = load i32, i32* @E1000_IMC, align 4
  %113 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %111, i32 %112, i32 -1)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i32, i32* @E1000_ICR, align 4
  %116 = call i32 @E1000_READ_REG(%struct.e1000_hw* %114, i32 %115)
  %117 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %117
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_IO(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_phy_init_script_82541(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
