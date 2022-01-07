; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMDPM_VENDORID_AMD = common dso_local global i64 0, align 8
@AMDPM_DEVICEID_AMD756PM = common dso_local global i64 0, align 8
@AMDPM_DEVICEID_AMD766PM = common dso_local global i64 0, align 8
@AMDPM_DEVICEID_AMD768PM = common dso_local global i64 0, align 8
@AMDPM_DEVICEID_AMD8111PM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"AMD 756/766/768/8111 Power Management Controller\00", align 1
@AMDPCI_PMBASE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@AMDPM_VENDORID_NVIDIA = common dso_local global i64 0, align 8
@AMDPM_DEVICEID_NF_SMB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"nForce SMBus Controller\00", align 1
@NFPCI_PMBASE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdpm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_vendor(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @AMDPM_VENDORID_AMD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @AMDPM_DEVICEID_AMD756PM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @AMDPM_DEVICEID_AMD766PM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @AMDPM_DEVICEID_AMD768PM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @AMDPM_DEVICEID_AMD8111PM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %22, %18, %14
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_desc(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @AMDPCI_PMBASE, align 4
  %35 = call i32 @pci_read_config(i32 %33, i32 %34, i32 4)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 65280
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SYS_RES_IOPORT, align 4
  %40 = load i32, i32* @AMDPCI_PMBASE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 224
  %43 = call i32 @bus_set_resource(i32 %38, i32 %39, i32 %40, i32 %42, i32 32)
  %44 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %26, %1
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @AMDPM_VENDORID_NVIDIA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @AMDPM_DEVICEID_NF_SMB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_set_desc(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @NFPCI_PMBASE, align 4
  %58 = call i32 @pci_read_config(i32 %56, i32 %57, i32 4)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 65280
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SYS_RES_IOPORT, align 4
  %63 = load i32, i32* @NFPCI_PMBASE, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bus_set_resource(i32 %61, i32 %62, i32 %63, i32 %64, i32 32)
  %66 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %49, %45
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %53, %30
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
