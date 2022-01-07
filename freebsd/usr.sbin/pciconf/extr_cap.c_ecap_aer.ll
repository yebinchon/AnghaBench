; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ecap_aer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_ecap_aer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"AER %d\00", align 1
@PCIR_AER_UC_STATUS = common dso_local global i64 0, align 8
@PCIR_AER_UC_SEVERITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" %d fatal\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" %d non-fatal\00", align 1
@PCIR_AER_COR_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c" %d corrected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64, i32)* @ecap_aer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecap_aer(i32 %0, %struct.pci_conf* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %52

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %19 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PCIR_AER_UC_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @read_config(i32 %17, i32* %19, i64 %22, i32 4)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %26 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PCIR_AER_UC_SEVERITY, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @read_config(i32 %24, i32* %26, i64 %29, i32 4)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @bitcount32(i32 %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @bitcount32(i32 %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %44 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PCIR_AER_COR_STATUS, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @read_config(i32 %42, i32* %44, i64 %47, i32 4)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bitcount32(i32 %49)
  %51 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @bitcount32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
