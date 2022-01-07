; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_is_boot_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_is_boot_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_DISPLAY = common dso_local global i64 0, align 8
@PCIC_OLD = common dso_local global i64 0, align 8
@PCIS_OLD_VGA = common dso_local global i64 0, align 8
@vga_pci_default_unit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIB_BCR_VGA_ENABLE = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_INTxDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_pci_is_boot_display(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_class(i32 %7)
  %9 = load i64, i64* @PCIC_DISPLAY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_get_class(i32 %12)
  %14 = load i64, i64* @PCIC_OLD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @pci_get_subclass(i32 %17)
  %19 = load i64, i64* @PCIS_OLD_VGA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  store i32 0, i32* %2, align 4
  br label %72

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_unit(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @vga_pci_default_unit, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @vga_pci_default_unit, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %72

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = call i32 @device_get_parent(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @device_get_parent(i32 %36)
  %38 = call i64 @device_get_devclass(i32 %37)
  %39 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %44 = call i32 @pci_read_config(i32 %42, i32 %43, i32 2)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PCIB_BCR_VGA_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %72

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PCIR_COMMAND, align 4
  %54 = call i32 @pci_read_config(i32 %52, i32 %53, i32 2)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %57 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %51
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @PCIR_COMMAND, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @pci_write_config(i32 %63, i32 %64, i32 %67, i32 2)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* @vga_pci_default_unit, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @device_set_flags(i32 %70, i32 1)
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %61, %49, %27, %21
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @device_set_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
