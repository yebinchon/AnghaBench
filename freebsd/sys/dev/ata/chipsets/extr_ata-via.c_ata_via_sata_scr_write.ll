; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_scr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_SC_DET_RESET = common dso_local global i32 0, align 4
@ATA_SC_DET_DISABLE = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ata_via_sata_scr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_sata_scr_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %64 [
    i32 128, label %19
    i32 129, label %26
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 168, %22
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pci_write_config(i32 %20, i32 %23, i32 %24, i32 4)
  br label %66

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ATA_SC_DET_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ATA_SC_DET_DISABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 164, %60
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @pci_write_config(i32 %59, i32 %61, i32 %62, i32 1)
  br label %66

64:                                               ; preds = %4
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %58, %19
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
