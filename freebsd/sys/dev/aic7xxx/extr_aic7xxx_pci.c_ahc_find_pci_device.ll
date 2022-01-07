; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_find_pci_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_find_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_pci_identity = type { i32, i32, i32* }

@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@ahc_num_pci_devs = common dso_local global i64 0, align 8
@ahc_pci_ident_table = common dso_local global %struct.ahc_pci_identity* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahc_pci_identity* @ahc_find_pci_device(i32 %0) #0 {
  %2 = alloca %struct.ahc_pci_identity*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahc_pci_identity*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %13 = call i32 @aic_pci_read_config(i32 %11, i32 %12, i32 2)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCIR_DEVICE, align 4
  %16 = call i32 @aic_pci_read_config(i32 %14, i32 %15, i32 2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %19 = call i32 @aic_pci_read_config(i32 %17, i32 %18, i32 2)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %22 = call i32 @aic_pci_read_config(i32 %20, i32 %21, i32 2)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ahc_compose_id(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @aic_get_pci_function(i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ahc_9005_subdevinfo_valid(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @SUBID_9005_MFUNCENB(i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.ahc_pci_identity* null, %struct.ahc_pci_identity** %2, align 8
  br label %74

43:                                               ; preds = %38, %31, %1
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %70, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @ahc_num_pci_devs, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** @ahc_pci_ident_table, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.ahc_pci_identity, %struct.ahc_pci_identity* %49, i64 %50
  store %struct.ahc_pci_identity* %51, %struct.ahc_pci_identity** %9, align 8
  %52 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %9, align 8
  %53 = getelementptr inbounds %struct.ahc_pci_identity, %struct.ahc_pci_identity* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %9, align 8
  %57 = getelementptr inbounds %struct.ahc_pci_identity, %struct.ahc_pci_identity* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %9, align 8
  %63 = getelementptr inbounds %struct.ahc_pci_identity, %struct.ahc_pci_identity* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store %struct.ahc_pci_identity* null, %struct.ahc_pci_identity** %2, align 8
  br label %74

67:                                               ; preds = %61
  %68 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %9, align 8
  store %struct.ahc_pci_identity* %68, %struct.ahc_pci_identity** %2, align 8
  br label %74

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %44

73:                                               ; preds = %44
  store %struct.ahc_pci_identity* null, %struct.ahc_pci_identity** %2, align 8
  br label %74

74:                                               ; preds = %73, %67, %66, %42
  %75 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %2, align 8
  ret %struct.ahc_pci_identity* %75
}

declare dso_local i32 @aic_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ahc_compose_id(i32, i32, i32, i32) #1

declare dso_local i64 @aic_get_pci_function(i32) #1

declare dso_local i64 @ahc_9005_subdevinfo_valid(i32, i32, i32, i32) #1

declare dso_local i64 @SUBID_9005_MFUNCENB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
