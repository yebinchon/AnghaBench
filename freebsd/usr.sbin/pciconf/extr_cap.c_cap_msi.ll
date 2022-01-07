; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIR_MSI_CTRL = common dso_local global i64 0, align 8
@PCIM_MSICTRL_MMC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MSI supports %d message%s%s%s \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c", 64 bit\00", align 1
@PCIM_MSICTRL_VECTOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c", vector masks\00", align 1
@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MME_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"enabled with %d message%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64)* @cap_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_msi(i32 %0, %struct.pci_conf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %11 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PCIR_MSI_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @read_config(i32 %9, i32* %11, i64 %14, i32 2)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCIM_MSICTRL_MMC_MASK, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 1
  %20 = shl i32 1, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCIM_MSICTRL_VECTOR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %38 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %25, i8* %31, i8* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PCIM_MSICTRL_MME_MASK, align 4
  %46 = and i32 %44, %45
  %47 = ashr i32 %46, 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %49, i8* %53)
  br label %55

55:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
