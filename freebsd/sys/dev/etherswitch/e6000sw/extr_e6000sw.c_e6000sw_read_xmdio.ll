; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_read_xmdio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_read_xmdio.c"
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
@SMI_CMD_OP_C45_READ = common dso_local global i32 0, align 4
@PHY_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @e6000sw_read_xmdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_read_xmdio(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @device_get_softc(i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* @SA_XLOCKED, align 4
  %16 = call i32 @E6000SW_LOCK_ASSERT(i32* %14, i32 %15)
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %19 = load i32, i32* @SMI_CMD_BUSY, align 4
  %20 = call i64 @E6000SW_WAITREADY2(i32* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %25, i32* %5, align 4
  br label %83

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SMI_CMD_REG_ADDR_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SMI_CMD_DEV_ADDR, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @SMI_CMD_DEV_ADDR_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @REG_GLOBAL2, align 4
  %39 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @e6000sw_writereg(i32* %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @REG_GLOBAL2, align 4
  %44 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SMI_CMD_OP_C45_ADDR, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @e6000sw_writereg(i32* %42, i32 %43, i32 %44, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %51 = load i32, i32* @SMI_CMD_BUSY, align 4
  %52 = call i64 @E6000SW_WAITREADY2(i32* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %26
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %57, i32* %5, align 4
  br label %83

58:                                               ; preds = %26
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @REG_GLOBAL2, align 4
  %61 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SMI_CMD_OP_C45_READ, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @e6000sw_writereg(i32* %59, i32 %60, i32 %61, i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @SMI_PHY_CMD_REG, align 4
  %68 = load i32, i32* @SMI_CMD_BUSY, align 4
  %69 = call i64 @E6000SW_WAITREADY2(i32* %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %74, i32* %5, align 4
  br label %83

75:                                               ; preds = %58
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @REG_GLOBAL2, align 4
  %78 = load i32, i32* @SMI_PHY_DATA_REG, align 4
  %79 = call i32 @e6000sw_readreg(i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @PHY_DATA_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %75, %71, %54, %22
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(i32*, i32) #1

declare dso_local i64 @E6000SW_WAITREADY2(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
