; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_cap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_cap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR_2 = common dso_local global i32 0, align 4
@PCICAP_ID = common dso_local global i32 0, align 4
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_cap_method(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pci_devinfo*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pci_devinfo* @device_get_ivars(i32 %14)
  store %struct.pci_devinfo* %15, %struct.pci_devinfo** %10, align 8
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %10, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PCIR_STATUS, align 4
  %20 = call i32 @pci_read_config(i32 %18, i32 %19, i32 2)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %5, align 4
  br label %69

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCIM_HDRTYPE, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %37 [
    i32 128, label %33
    i32 130, label %33
    i32 129, label %35
  ]

33:                                               ; preds = %27, %27
  %34 = load i32, i32* @PCIR_CAP_PTR, align 4
  store i32 %34, i32* %13, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @PCIR_CAP_PTR_2, align 4
  store i32 %36, i32* %13, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %5, align 4
  br label %69

39:                                               ; preds = %35, %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @pci_read_config(i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %61, %39
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PCICAP_ID, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @pci_read_config(i32 %47, i32 %50, i32 1)
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  store i32 0, i32* %5, align 4
  br label %69

61:                                               ; preds = %46
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @pci_read_config(i32 %62, i32 %65, i32 1)
  store i32 %66, i32* %13, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load i32, i32* @ENOENT, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %60, %37, %25
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
