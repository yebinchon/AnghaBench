; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_fdt_gpio = type { %struct.sdhci_slot*, i32 }
%struct.sdhci_slot = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdhci_fdt_gpio* @sdhci_fdt_gpio_setup(i32 %0, %struct.sdhci_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_fdt_gpio*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %4, align 8
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.sdhci_fdt_gpio* @malloc(i32 16, i32 %7, i32 %10)
  store %struct.sdhci_fdt_gpio* %11, %struct.sdhci_fdt_gpio** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %16 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %16, i32 0, i32 0
  store %struct.sdhci_slot* %15, %struct.sdhci_slot** %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @wp_setup(%struct.sdhci_fdt_gpio* %20, i32 %21)
  %23 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @cd_setup(%struct.sdhci_fdt_gpio* %23, i32 %24)
  %26 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %6, align 8
  ret %struct.sdhci_fdt_gpio* %26
}

declare dso_local %struct.sdhci_fdt_gpio* @malloc(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @wp_setup(%struct.sdhci_fdt_gpio*, i32) #1

declare dso_local i32 @cd_setup(%struct.sdhci_fdt_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
