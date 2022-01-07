; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_pci.c_ips_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_pci.c_ips_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPS_VENDOR_ID = common dso_local global i64 0, align 8
@IPS_MORPHEUS_DEVICE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"IBM ServeRAID Adapter\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@IPS_COPPERHEAD_DEVICE_ID = common dso_local global i64 0, align 8
@IPS_VENDOR_ID_ADAPTEC = common dso_local global i64 0, align 8
@IPS_MARCO_DEVICE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Adaptec ServeRAID Adapter\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ips_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_vendor(i32 %4)
  %6 = load i64, i64* @IPS_VENDOR_ID, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  %11 = load i64, i64* @IPS_MORPHEUS_DEVICE_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %8, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pci_get_vendor(i32 %18)
  %20 = load i64, i64* @IPS_VENDOR_ID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_device(i32 %23)
  %25 = load i64, i64* @IPS_COPPERHEAD_DEVICE_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_set_desc(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %22, %17
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @pci_get_vendor(i32 %32)
  %34 = load i64, i64* @IPS_VENDOR_ID_ADAPTEC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @pci_get_device(i32 %37)
  %39 = load i64, i64* @IPS_MARCO_DEVICE_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_set_desc(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %36, %31
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %41, %27, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
