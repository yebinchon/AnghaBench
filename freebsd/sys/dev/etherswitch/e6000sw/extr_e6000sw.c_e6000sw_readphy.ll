; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readphy.c"
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
@SMI_CMD_OP_C22_READ = common dso_local global i32 0, align 4
@SMI_CMD_REG_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_PHY_DATA_REG = common dso_local global i32 0, align 4
@PHY_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @e6000sw_readphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_readphy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @device_get_softc(i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @e6000sw_is_phyport(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @E6000SW_NUM_PHY_REGS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %16
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @SA_XLOCKED, align 4
  %27 = call i32 @E6000SW_LOCK_ASSERT(i32* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %30 = load i32, i32* @SMI_CMD_BUSY, align 4
  %31 = call i64 @E6000SW_WAITREADY2(i32* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %24
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @REG_GLOBAL2, align 4
  %40 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %41 = load i32, i32* @SMI_CMD_OP_C22_READ, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SMI_CMD_REG_ADDR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SMI_CMD_DEV_ADDR, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* @SMI_CMD_DEV_ADDR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = or i32 %45, %50
  %52 = call i32 @e6000sw_writereg(i32* %38, i32 %39, i32 %40, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %55 = load i32, i32* @SMI_CMD_BUSY, align 4
  %56 = call i64 @E6000SW_WAITREADY2(i32* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %37
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @REG_GLOBAL2, align 4
  %65 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %66 = call i32 @e6000sw_readreg(i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PHY_DATA_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %58, %33, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @e6000sw_is_phyport(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(i32*, i32) #1

declare dso_local i64 @E6000SW_WAITREADY2(i32*, i32, i32) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
