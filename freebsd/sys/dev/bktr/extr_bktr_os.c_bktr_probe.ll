; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_VENDOR_BROOKTREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"BrookTree 848A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"BrookTree 848\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"BrookTree 849A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"BrookTree 878\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"BrookTree 879\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bktr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pci_get_devid(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pci_get_revid(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BKTR_PCI_VENDOR(i32 %10)
  %12 = load i64, i64* @PCI_VENDOR_BROOKTREE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BKTR_PCI_PRODUCT(i32 %15)
  switch i32 %16, label %40 [
    i32 131, label %17
    i32 130, label %28
    i32 129, label %32
    i32 128, label %36
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 18
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_desc(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_desc(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %14
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_set_desc(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %14
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %14
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_set_desc(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %36, %32, %28, %26
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i64 @BKTR_PCI_VENDOR(i32) #1

declare dso_local i32 @BKTR_PCI_PRODUCT(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
