; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ingenic,jz4780-pinctrl\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Ingenic JZ4780 GPIO Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_status_okay(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i32 @ofw_bus_is_compatible(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OF_hasprop(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %23, %15, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
