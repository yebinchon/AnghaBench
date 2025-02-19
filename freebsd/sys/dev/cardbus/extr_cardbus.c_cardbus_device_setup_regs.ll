; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_device_setup_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_device_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_MINGNT = common dso_local global i32 0, align 4
@PCIR_MAXLAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cardbus_device_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cardbus_device_setup_regs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PCIR_BAR(i32 %14)
  %16 = call i32 @pci_write_config(i32 %13, i32 %15, i32 0, i32 4)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = call i32 @pci_get_irq(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PCIR_INTLINE, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_write_config(i32 %27, i32 %28, i32 %31, i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %35 = call i32 @pci_write_config(i32 %33, i32 %34, i32 8, i32 1)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PCIR_LATTIMER, align 4
  %38 = call i32 @pci_write_config(i32 %36, i32 %37, i32 168, i32 1)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PCIR_MINGNT, align 4
  %41 = call i32 @pci_write_config(i32 %39, i32 %40, i32 20, i32 1)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PCIR_MAXLAT, align 4
  %44 = call i32 @pci_write_config(i32 %42, i32 %43, i32 20, i32 1)
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_get_irq(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
