; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amd_ecc_inject/extr_ecc_inject.c_ecc_ei_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amd_ecc_inject/extr_ecc_inject.c_ecc_ei_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DRAM ECC error injection is not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@nbdev = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't find NB PCI device\0A\00", align 1
@NB_MCA_CFG = common dso_local global i32 0, align 4
@DRAM_ECC_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"DRAM ECC is not supported or disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"DRAM ECC error injection support loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ecc_ei_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecc_ei_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cpu_vendor_id, align 8
  %4 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @cpu_id, align 4
  %8 = call i32 @CPUID_TO_FAMILY(i32 %7)
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %1, align 4
  br label %33

13:                                               ; preds = %6
  %14 = call i32* @pci_find_bsf(i32 0, i32 24, i32 3)
  store i32* %14, i32** @nbdev, align 8
  %15 = load i32*, i32** @nbdev, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %1, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load i32*, i32** @nbdev, align 8
  %22 = load i32, i32* @NB_MCA_CFG, align 4
  %23 = call i32 @pci_read_config(i32* %21, i32 %22, i32 4)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @DRAM_ECC_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %1, align 4
  br label %33

31:                                               ; preds = %20
  %32 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %28, %17, %10
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
