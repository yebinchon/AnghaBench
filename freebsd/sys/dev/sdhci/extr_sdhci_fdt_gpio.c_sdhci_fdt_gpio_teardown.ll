; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt_gpio.c_sdhci_fdt_gpio_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_fdt_gpio = type { i32*, i32, i32*, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_fdt_gpio_teardown(%struct.sdhci_fdt_gpio* %0) #0 {
  %2 = alloca %struct.sdhci_fdt_gpio*, align 8
  store %struct.sdhci_fdt_gpio* %0, %struct.sdhci_fdt_gpio** %2, align 8
  %3 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %4 = icmp eq %struct.sdhci_fdt_gpio* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %60

6:                                                ; preds = %1
  %7 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %13 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %16 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_teardown_intr(i32 %14, i32* %17, i32* %20)
  br label %22

22:                                               ; preds = %11, %6
  %23 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %29 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @gpio_pin_release(i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %34 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @gpio_pin_release(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %44 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %49 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %53 = getelementptr inbounds %struct.sdhci_fdt_gpio, %struct.sdhci_fdt_gpio* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 0, i32* %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.sdhci_fdt_gpio*, %struct.sdhci_fdt_gpio** %2, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(%struct.sdhci_fdt_gpio* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %5
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @gpio_pin_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.sdhci_fdt_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
