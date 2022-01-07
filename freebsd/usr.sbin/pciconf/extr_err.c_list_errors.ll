; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_err.c_list_errors.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_err.c_list_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PCI errors\00", align 1
@pci_status = common dso_local global i32 0, align 4
@PCI_ERRORS = common dso_local global i64 0, align 8
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIER_DEVICE_STA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"PCI-e errors\00", align 1
@pcie_device_status = common dso_local global i32 0, align 4
@PCIE_ERRORS = common dso_local global i64 0, align 8
@PCIZ_AER = common dso_local global i32 0, align 4
@PCIR_AER_UC_STATUS = common dso_local global i64 0, align 8
@PCIR_AER_UC_SEVERITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@aer_uc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Non-fatal\00", align 1
@PCIR_AER_COR_STATUS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Corrected\00", align 1
@aer_cor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_errors(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_conf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %12 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %11, i32 0, i32 0
  %13 = load i64, i64* @PCIR_STATUS, align 8
  %14 = call i64 @read_config(i32 %10, i32* %12, i64 %13, i32 2)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @pci_status, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PCI_ERRORS, align 8
  %18 = and i64 %16, %17
  %19 = call i32 @print_bits(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %22 = load i32, i32* @PCIY_EXPRESS, align 4
  %23 = call i64 @pci_find_cap(i32 %20, %struct.pci_conf* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %83

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %30 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PCIER_DEVICE_STA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @read_config(i32 %28, i32* %30, i64 %33, i32 2)
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* @pcie_device_status, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PCIE_ERRORS, align 8
  %38 = and i64 %36, %37
  %39 = call i32 @print_bits(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %42 = load i32, i32* @PCIZ_AER, align 4
  %43 = call i64 @pcie_find_cap(i32 %40, %struct.pci_conf* %41, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %83

47:                                               ; preds = %27
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %50 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @PCIR_AER_UC_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @read_config(i32 %48, i32* %50, i64 %53, i32 4)
  store i64 %54, i64* %5, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %57 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @PCIR_AER_UC_SEVERITY, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i64 @read_config(i32 %55, i32* %57, i64 %60, i32 4)
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* @aer_uc, align 4
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = and i64 %63, %64
  %66 = call i32 @print_bits(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %65)
  %67 = load i32, i32* @aer_uc, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = xor i64 %69, -1
  %71 = and i64 %68, %70
  %72 = call i32 @print_bits(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %67, i64 %71)
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %75 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @PCIR_AER_COR_STATUS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @read_config(i32 %73, i32* %75, i64 %78, i32 4)
  store i64 %79, i64* %5, align 8
  %80 = load i32, i32* @aer_cor, align 4
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @print_bits(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %47, %46, %26
  ret void
}

declare dso_local i64 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @print_bits(i8*, i32, i64) #1

declare dso_local i64 @pci_find_cap(i32, %struct.pci_conf*, i32) #1

declare dso_local i64 @pcie_find_cap(i32, %struct.pci_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
