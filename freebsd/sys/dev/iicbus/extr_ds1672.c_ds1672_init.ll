; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DS1672_CTRL = common dso_local global i32 0, align 4
@DS1672_CTRL_EOSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"RTC oscillator was stopped. Check system time and RTC battery.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds1672_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1672_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DS1672_CTRL, align 4
  %8 = call i32 @ds1672_read(i32 %6, i32 %7, i32* %4, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DS1672_CTRL_EOSC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @DS1672_CTRL_EOSC, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @DS1672_CTRL, align 4
  %27 = call i32 @ds1672_write(i32 %25, i32 %26, i32* %4, i32 1)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ds1672_read(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ds1672_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
