; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_ht_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_ht_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_ht }
%struct.pcicfg_ht = type { i32, i32, i64 }

@PCIM_HTCMD_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_ht_map_msi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.pcicfg_ht*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pci_devinfo* @device_get_ivars(i32 %7)
  store %struct.pci_devinfo* %8, %struct.pci_devinfo** %5, align 8
  %9 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %10 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pcicfg_ht* %11, %struct.pcicfg_ht** %6, align 8
  %12 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %13 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %78

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %22 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCIM_HTCMD_MSI_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %20
  %28 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %29 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 20
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 20
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load i32, i32* @PCIM_HTCMD_MSI_ENABLE, align 4
  %37 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %38 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %43 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %48 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_write_config(i32 %41, i64 %46, i32 %49, i32 2)
  br label %51

51:                                               ; preds = %35, %27, %20, %17
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %56 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCIM_HTCMD_MSI_ENABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load i32, i32* @PCIM_HTCMD_MSI_ENABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %65 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %70 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.pcicfg_ht*, %struct.pcicfg_ht** %6, align 8
  %75 = getelementptr inbounds %struct.pcicfg_ht, %struct.pcicfg_ht* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_write_config(i32 %68, i64 %73, i32 %76, i32 2)
  br label %78

78:                                               ; preds = %16, %61, %54, %51
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
