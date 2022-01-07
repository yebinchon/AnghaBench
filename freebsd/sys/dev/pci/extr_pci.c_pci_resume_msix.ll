; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i64, i32, i32, i32, i64, %struct.msix_vector*, %struct.msix_table_entry* }
%struct.msix_vector = type { i32, i32 }
%struct.msix_table_entry = type { i32, i64 }

@PCIR_MSIX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pci_resume_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_resume_msix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca %struct.pcicfg_msix*, align 8
  %5 = alloca %struct.msix_table_entry*, align 8
  %6 = alloca %struct.msix_vector*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.pci_devinfo* @device_get_ivars(i32 %8)
  store %struct.pci_devinfo* %9, %struct.pci_devinfo** %3, align 8
  %10 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %11 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.pcicfg_msix* %12, %struct.pcicfg_msix** %4, align 8
  %13 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %14 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %21 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pci_mask_msix(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %18

31:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %77, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %35 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %40 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %39, i32 0, i32 6
  %41 = load %struct.msix_table_entry*, %struct.msix_table_entry** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %41, i64 %43
  store %struct.msix_table_entry* %44, %struct.msix_table_entry** %5, align 8
  %45 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %46 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %51 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %38
  br label %77

55:                                               ; preds = %49
  %56 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %57 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %56, i32 0, i32 5
  %58 = load %struct.msix_vector*, %struct.msix_vector** %57, align 8
  %59 = load %struct.msix_table_entry*, %struct.msix_table_entry** %5, align 8
  %60 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %58, i64 %63
  store %struct.msix_vector* %64, %struct.msix_vector** %6, align 8
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.msix_vector*, %struct.msix_vector** %6, align 8
  %68 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.msix_vector*, %struct.msix_vector** %6, align 8
  %71 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_write_msix_entry(i32 %65, i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @pci_unmask_msix(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %55, %54
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %32

80:                                               ; preds = %32
  br label %81

81:                                               ; preds = %80, %1
  %82 = load i32, i32* %2, align 4
  %83 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %84 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCIR_MSIX_CTRL, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %89 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pci_write_config(i32 %82, i64 %87, i32 %90, i32 2)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_mask_msix(i32, i32) #1

declare dso_local i32 @pci_write_msix_entry(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmask_msix(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
