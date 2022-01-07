; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_writephy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E6000SW_NUM_PHY_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wrong register address.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@SMI_PHY_CMD_REG = common dso_local global i32 0, align 4
@SMI_CMD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Timeout while waiting for switch\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@SMI_PHY_DATA_REG = common dso_local global i32 0, align 4
@PHY_DATA_MASK = common dso_local global i32 0, align 4
@SMI_CMD_OP_C22_WRITE = common dso_local global i32 0, align 4
@SMI_CMD_REG_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @e6000sw_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_writephy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @device_get_softc(i32 %11)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @e6000sw_is_phyport(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @E6000SW_NUM_PHY_REGS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %17
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @SA_XLOCKED, align 4
  %28 = call i32 @E6000SW_LOCK_ASSERT(i32* %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %31 = load i32, i32* @SMI_CMD_BUSY, align 4
  %32 = call i64 @E6000SW_WAITREADY2(i32* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %25
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @REG_GLOBAL2, align 4
  %41 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PHY_DATA_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @e6000sw_writereg(i32* %39, i32 %40, i32 %41, i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @REG_GLOBAL2, align 4
  %48 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %49 = load i32, i32* @SMI_CMD_OP_C22_WRITE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SMI_CMD_REG_ADDR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SMI_CMD_DEV_ADDR, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @SMI_CMD_DEV_ADDR_MASK, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %53, %58
  %60 = call i32 @e6000sw_writereg(i32* %46, i32 %47, i32 %48, i32 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %38, %34, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @e6000sw_is_phyport(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(i32*, i32) #1

declare dso_local i64 @E6000SW_WAITREADY2(i32*, i32, i32) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
