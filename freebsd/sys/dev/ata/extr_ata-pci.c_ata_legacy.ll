; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_STORAGE_IDE = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIP_STORAGE_IDE_MASTERDEV = common dso_local global i32 0, align 4
@PCIP_STORAGE_IDE_MODEPRIM = common dso_local global i32 0, align 4
@PCIP_STORAGE_IDE_MODESEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_legacy(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PCIR_SUBCLASS, align 4
  %5 = call i32 @pci_read_config(i32 %3, i32 %4, i32 1)
  %6 = load i32, i32* @PCIS_STORAGE_IDE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PCIR_PROGIF, align 4
  %11 = call i32 @pci_read_config(i32 %9, i32 %10, i32 1)
  %12 = load i32, i32* @PCIP_STORAGE_IDE_MASTERDEV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PCIR_PROGIF, align 4
  %18 = call i32 @pci_read_config(i32 %16, i32 %17, i32 1)
  %19 = load i32, i32* @PCIP_STORAGE_IDE_MODEPRIM, align 4
  %20 = load i32, i32* @PCIP_STORAGE_IDE_MODESEC, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @PCIP_STORAGE_IDE_MODEPRIM, align 4
  %24 = load i32, i32* @PCIP_STORAGE_IDE_MODESEC, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %55, label %27

27:                                               ; preds = %15, %8, %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @PCIR_BAR(i32 0)
  %30 = call i32 @pci_read_config(i32 %28, i32 %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @PCIR_BAR(i32 1)
  %35 = call i32 @pci_read_config(i32 %33, i32 %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @PCIR_BAR(i32 2)
  %40 = call i32 @pci_read_config(i32 %38, i32 %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @PCIR_BAR(i32 3)
  %45 = call i32 @pci_read_config(i32 %43, i32 %44, i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @PCIR_BAR(i32 5)
  %50 = call i32 @pci_read_config(i32 %48, i32 %49, i32 4)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %42, %37, %32, %27
  %54 = phi i1 [ false, %42 ], [ false, %37 ], [ false, %32 ], [ false, %27 ], [ %52, %47 ]
  br label %55

55:                                               ; preds = %53, %15
  %56 = phi i1 [ true, %15 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
