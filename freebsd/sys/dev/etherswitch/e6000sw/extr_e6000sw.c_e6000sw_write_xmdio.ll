; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_write_xmdio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_write_xmdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SA_XLOCKED = common dso_local global i32 0, align 4
@SMI_PHY_CMD_REG = common dso_local global i32 0, align 4
@SMI_CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timeout while waiting for switch\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMI_CMD_REG_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@SMI_PHY_DATA_REG = common dso_local global i32 0, align 4
@SMI_CMD_OP_C45_ADDR = common dso_local global i32 0, align 4
@SMI_CMD_OP_C45_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @e6000sw_write_xmdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_write_xmdio(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @device_get_softc(i32 %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32, i32* @SA_XLOCKED, align 4
  %18 = call i32 @E6000SW_LOCK_ASSERT(i32* %16, i32 %17)
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %21 = load i32, i32* @SMI_CMD_BUSY, align 4
  %22 = call i64 @E6000SW_WAITREADY2(i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %27, i32* %6, align 4
  br label %73

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SMI_CMD_REG_ADDR_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SMI_CMD_DEV_ADDR, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @SMI_CMD_DEV_ADDR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @REG_GLOBAL2, align 4
  %41 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @e6000sw_writereg(i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @REG_GLOBAL2, align 4
  %46 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @SMI_CMD_OP_C45_ADDR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @e6000sw_writereg(i32* %44, i32 %45, i32 %46, i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %53 = load i32, i32* @SMI_CMD_BUSY, align 4
  %54 = call i64 @E6000SW_WAITREADY2(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %59, i32* %6, align 4
  br label %73

60:                                               ; preds = %28
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @REG_GLOBAL2, align 4
  %63 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @e6000sw_writereg(i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @REG_GLOBAL2, align 4
  %68 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @SMI_CMD_OP_C45_WRITE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @e6000sw_writereg(i32* %66, i32 %67, i32 %68, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %60, %56, %24
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(i32*, i32) #1

declare dso_local i64 @E6000SW_WAITREADY2(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
