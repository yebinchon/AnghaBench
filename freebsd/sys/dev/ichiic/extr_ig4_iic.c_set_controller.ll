; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_set_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_set_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IG4_I2C_ENABLE = common dso_local global i32 0, align 4
@IG4_REG_CLR_INTR = common dso_local global i32 0, align 4
@IG4_REG_I2C_EN = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@IG4_REG_ENABLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2cslv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @set_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_controller(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @ig4iic_set_intr_mask(i32* %8, i32 0)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IG4_I2C_ENABLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @IG4_REG_CLR_INTR, align 4
  %17 = call i32 @reg_read(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @IG4_REG_I2C_EN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @reg_write(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %23, i32* %6, align 4
  store i32 100, i32* %5, align 4
  br label %24

24:                                               ; preds = %40, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @IG4_REG_ENABLE_STATUS, align 4
  %30 = call i32 @reg_read(i32* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %31, %32
  %34 = load i32, i32* @IG4_I2C_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %43

38:                                               ; preds = %27
  %39 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %24

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @ig4iic_set_intr_mask(i32*, i32) #1

declare dso_local i32 @reg_read(i32*, i32) #1

declare dso_local i32 @reg_write(i32*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
