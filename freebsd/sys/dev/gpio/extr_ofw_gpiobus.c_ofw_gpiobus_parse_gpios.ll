; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_parse_gpios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_ofw_gpiobus.c_ofw_gpiobus_parse_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_pin = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_gpiobus_parse_gpios(i32 %0, i8* %1, %struct.gpiobus_pin** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gpiobus_pin**, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.gpiobus_pin** %2, %struct.gpiobus_pin*** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ofw_bus_get_node(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.gpiobus_pin**, %struct.gpiobus_pin*** %6, align 8
  %12 = call i32 @ofw_gpiobus_parse_gpios_impl(i32 %7, i32 %9, i8* %10, i32* null, %struct.gpiobus_pin** %11)
  ret i32 %12
}

declare dso_local i32 @ofw_gpiobus_parse_gpios_impl(i32, i32, i8*, i32*, %struct.gpiobus_pin**) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
