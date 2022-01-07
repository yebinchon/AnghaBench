; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_repost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_repost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VGA_PCI_BIOS_SHADOW_ADDR = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"REPOSTing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_pci_repost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @vga_pci_is_boot_display(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i64, i64* @VGA_PCI_BIOS_SHADOW_ADDR, align 8
  %12 = call i32* @x86bios_get_orm(i64 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @ENOTSUP, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %10
  %17 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %4)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pci_get_bus(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_slot(i32 %21)
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_get_function(i32 %24)
  %26 = and i32 %25, 7
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 128, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @VGA_PCI_BIOS_SHADOW_ADDR, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @X86BIOS_PHYSTOSEG(i64 %33)
  %35 = load i64, i64* @VGA_PCI_BIOS_SHADOW_ADDR, align 8
  %36 = add nsw i64 %35, 3
  %37 = call i32 @X86BIOS_PHYSTOOFF(i64 %36)
  %38 = call i32 @x86bios_call(%struct.TYPE_4__* %4, i32 %34, i32 %37)
  %39 = call i32 @x86bios_get_intr(i32 16)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %16, %14, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @vga_pci_is_boot_display(i32) #1

declare dso_local i32* @x86bios_get_orm(i64) #1

declare dso_local i32 @x86bios_init_regs(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @x86bios_call(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @X86BIOS_PHYSTOSEG(i64) #1

declare dso_local i32 @X86BIOS_PHYSTOOFF(i64) #1

declare dso_local i32 @x86bios_get_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
