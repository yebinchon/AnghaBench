; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pci_enable_ari = common dso_local global i64 0, align 8
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_add_children(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.pci_devinfo* @pci_identify_function(i32 %17, i32 %18, i32 %19, i32 %20, i32 0, i32 0)
  store %struct.pci_devinfo* %21, %struct.pci_devinfo** %8, align 8
  %22 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %23 = icmp ne %struct.pci_devinfo* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i64, i64* @pci_enable_ari, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %30 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PCIB_TRY_ENABLE_ARI(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %24, %3
  store i32 1, i32* %14, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PCIB_MAXSLOTS(i32 %35)
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %81, %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %42 = call i32 @DELAY(i32 1)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PCIR_HDRTYPE, align 4
  %48 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @PCIM_HDRTYPE, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %81

55:                                               ; preds = %41
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @PCIM_MFDEV, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @PCIB_MAXFUNCS(i32 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %77, %63
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.pci_devinfo* @pci_identify_function(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %65

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %37

84:                                               ; preds = %37
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.pci_devinfo* @pci_identify_function(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCIB_TRY_ENABLE_ARI(i32, i32) #1

declare dso_local i32 @PCIB_MAXSLOTS(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PCIB_READ_CONFIG(...) #1

declare dso_local i32 @PCIB_MAXFUNCS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
