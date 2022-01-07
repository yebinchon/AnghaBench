; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_gpio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Invalid GPIO %d port 0x%x gpio_port %d gpio_shift %d gpio_mask 0x%x\0A\00", align 1
@MISC_REG_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32)* @bxe_gpio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_gpio_read(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %14 = call i32 @REG_RD(%struct.bxe_softc* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %18 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %19 = call i32 @REG_RD(%struct.bxe_softc* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @MISC_REGISTERS_GPIO_PORT_SHIFT, align 4
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = add nsw i32 %26, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 -1, i32* %4, align 4
  br label %59

48:                                               ; preds = %32
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = load i32, i32* @MISC_REG_GPIO, align 4
  %51 = call i32 @REG_RD(%struct.bxe_softc* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %40
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
