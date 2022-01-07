; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_mult_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_mult_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_LOCK_RESOURCE_GPIO = common dso_local global i32 0, align 4
@MISC_REG_GPIO = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_FLOAT_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_CLR_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_SET_POS = common dso_local global i32 0, align 4
@DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Set GPIO 0x%x -> output low\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Set GPIO 0x%x -> output high\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Set GPIO 0x%x -> input\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Invalid GPIO mode assignment pins 0x%x mode 0x%x gpio_reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32)* @bxe_gpio_mult_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_gpio_mult_write(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %11 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %9, i32 %10)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = load i32, i32* @MISC_REG_GPIO, align 4
  %14 = call i32 @REG_RD(%struct.bxe_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MISC_REGISTERS_GPIO_FLOAT_POS, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MISC_REGISTERS_GPIO_CLR_POS, align 4
  %23 = shl i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MISC_REGISTERS_GPIO_SET_POS, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %64 [
    i32 128, label %34
    i32 129, label %44
    i32 130, label %54
  ]

34:                                               ; preds = %3
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %36 = load i32, i32* @DBG_PHY, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BLOGD(%struct.bxe_softc* %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MISC_REGISTERS_GPIO_CLR_POS, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %73

44:                                               ; preds = %3
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %46 = load i32, i32* @DBG_PHY, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MISC_REGISTERS_GPIO_SET_POS, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %73

54:                                               ; preds = %3
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %56 = load i32, i32* @DBG_PHY, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BLOGD(%struct.bxe_softc* %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MISC_REGISTERS_GPIO_FLOAT_POS, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %73

64:                                               ; preds = %3
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @BLOGE(%struct.bxe_softc* %65, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %71 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %72 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %70, i32 %71)
  store i32 -1, i32* %4, align 4
  br label %81

73:                                               ; preds = %54, %44, %34
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %75 = load i32, i32* @MISC_REG_GPIO, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @REG_WR(%struct.bxe_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %79 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %80 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %64
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
