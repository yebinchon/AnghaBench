; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_t3_os_find_pci_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_t3_os_find_pci_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR_2 = common dso_local global i32 0, align 4
@PCICAP_ID = common dso_local global i32 0, align 4
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_os_find_pci_capability(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinfo*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.pci_devinfo* @device_get_ivars(i32 %14)
  store %struct.pci_devinfo* %15, %struct.pci_devinfo** %7, align 8
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PCIR_STATUS, align 4
  %20 = call i32 @pci_read_config(i32 %18, i32 %19, i32 2)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCIM_HDRTYPE, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %36 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %34
  ]

32:                                               ; preds = %26, %26
  %33 = load i32, i32* @PCIR_CAP_PTR, align 4
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @PCIR_CAP_PTR_2, align 4
  store i32 %35, i32* %10, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %61

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @pci_read_config(i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %54, %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PCICAP_ID, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @pci_read_config(i32 %45, i32 %48, i32 1)
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @pci_read_config(i32 %55, i32 %58, i32 1)
  store i32 %59, i32* %10, align 4
  br label %41

60:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %52, %36, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
