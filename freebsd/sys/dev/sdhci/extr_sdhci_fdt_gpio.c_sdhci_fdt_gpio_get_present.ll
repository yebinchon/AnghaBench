; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_get_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_get_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_fdt_gpio = type { i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_fdt_gpio_get_present(%struct.sdhci_fdt_gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_fdt_gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_fdt_gpio* %0, %struct.sdhci_fdt_gpio** %3, align 8
  %5 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %22 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @sdhci_generic_get_card_present(i32 %20, %struct.TYPE_2__* %23)
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %10
  %26 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %27 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @gpio_pin_is_active(i32* %28, i32* %4)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %3, align 8
  %32 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %30, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %15, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @sdhci_generic_get_card_present(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @gpio_pin_is_active(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
