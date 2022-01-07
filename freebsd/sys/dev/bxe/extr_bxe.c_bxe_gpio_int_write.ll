; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_int_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_int_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Invalid GPIO %d mode 0x%x port 0x%x gpio_port %d gpio_shift %d gpio_mask 0x%x\0A\00", align 1
@HW_LOCK_RESOURCE_GPIO = common dso_local global i32 0, align 4
@MISC_REG_GPIO_INT = common dso_local global i32 0, align 4
@DBG_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Clear GPIO INT %d (shift %d) -> output low\0A\00", align 1
@MISC_REGISTERS_GPIO_INT_SET_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_INT_CLR_POS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Set GPIO INT %d (shift %d) -> output high\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32)* @bxe_gpio_int_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_gpio_int_write(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %15 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %16 = call i32 @REG_RD(%struct.bxe_softc* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %20 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %21 = call i32 @REG_RD(%struct.bxe_softc* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ false, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MISC_REGISTERS_GPIO_PORT_SHIFT, align 4
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = add nsw i32 %28, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @BLOGE(%struct.bxe_softc* %43, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 -1, i32* %5, align 4
  br label %102

51:                                               ; preds = %34
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %53 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %54 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %52, i32 %53)
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %56 = load i32, i32* @MISC_REG_GPIO_INT, align 4
  %57 = call i32 @REG_RD(%struct.bxe_softc* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %93 [
    i32 129, label %59
    i32 128, label %76
  ]

59:                                               ; preds = %51
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %61 = load i32, i32* @DBG_PHY, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @BLOGD(%struct.bxe_softc* %60, i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @MISC_REGISTERS_GPIO_INT_SET_POS, align 4
  %67 = shl i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @MISC_REGISTERS_GPIO_INT_CLR_POS, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %94

76:                                               ; preds = %51
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %78 = load i32, i32* @DBG_PHY, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @BLOGD(%struct.bxe_softc* %77, i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @MISC_REGISTERS_GPIO_INT_CLR_POS, align 4
  %84 = shl i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @MISC_REGISTERS_GPIO_INT_SET_POS, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %94

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93, %76, %59
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %96 = load i32, i32* @MISC_REG_GPIO_INT, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @REG_WR(%struct.bxe_softc* %95, i32 %96, i32 %97)
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %100 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %101 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %99, i32 %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %94, %42
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
