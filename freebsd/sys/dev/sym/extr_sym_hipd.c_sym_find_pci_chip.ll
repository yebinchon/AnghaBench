; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_find_pci_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_find_pci_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_pci_chip = type { i64, i64 }

@PCI_VENDOR_NCR = common dso_local global i64 0, align 8
@sym_pci_dev_table = common dso_local global %struct.sym_pci_chip* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_pci_chip* (i32)* @sym_find_pci_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_pci_chip* @sym_find_pci_chip(i32 %0) #0 {
  %2 = alloca %struct.sym_pci_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_pci_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_vendor(i32 %8)
  %10 = load i64, i64* @PCI_VENDOR_NCR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.sym_pci_chip* null, %struct.sym_pci_chip** %2, align 8
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pci_get_device(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_revid(i32 %16)
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %43, %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** @sym_pci_dev_table, align 8
  %21 = call i32 @nitems(%struct.sym_pci_chip* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** @sym_pci_dev_table, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sym_pci_chip, %struct.sym_pci_chip* %24, i64 %26
  store %struct.sym_pci_chip* %27, %struct.sym_pci_chip** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** %4, align 8
  %30 = getelementptr inbounds %struct.sym_pci_chip, %struct.sym_pci_chip* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %43

34:                                               ; preds = %23
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** %4, align 8
  %37 = getelementptr inbounds %struct.sym_pci_chip, %struct.sym_pci_chip* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %43

41:                                               ; preds = %34
  %42 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** %4, align 8
  store %struct.sym_pci_chip* %42, %struct.sym_pci_chip** %2, align 8
  br label %47

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %18

46:                                               ; preds = %18
  store %struct.sym_pci_chip* null, %struct.sym_pci_chip** %2, align 8
  br label %47

47:                                               ; preds = %46, %41, %12
  %48 = load %struct.sym_pci_chip*, %struct.sym_pci_chip** %2, align 8
  ret %struct.sym_pci_chip* %48
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @nitems(%struct.sym_pci_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
