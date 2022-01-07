; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"hw.nvme.force_intx\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"hw.nvme.num_io_queues\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"hw.nvme.per_cpu_io_queues\00", align 1
@smp_threads_per_core = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"hw.nvme.min_cpus_per_ioq\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller*)* @nvme_ctrlr_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_setup_interrupts(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %10 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %13 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pci_msix_count(i32 %17)
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %1
  %21 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %22 = call i32 @nvme_ctrlr_configure_intx(%struct.nvme_controller* %21)
  br label %100

23:                                               ; preds = %16
  %24 = load i32, i32* @mp_ncpus, align 4
  store i32 %24, i32* %5, align 4
  %25 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @mp_ncpus, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %23
  %33 = load i32, i32* @mp_ncpus, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %28
  store i32 1, i32* %6, align 4
  %35 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* @smp_threads_per_core, align 4
  store i32 %40, i32* %7, align 4
  %41 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @mp_ncpus, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i32 @max(i32 1, i32 %48)
  %50 = call i32 @min(i32 %45, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @pci_msix_count(i32 %53)
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @min(i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %89, %51
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @vm_ndomains, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @vm_ndomains, align 4
  %64 = srem i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i64 @pci_alloc_msix(i32 %71, i32* %9)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %76 = call i32 @nvme_ctrlr_configure_intx(%struct.nvme_controller* %75)
  br label %100

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @pci_release_msi(i32 %81)
  %83 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %84 = call i32 @nvme_ctrlr_configure_intx(%struct.nvme_controller* %83)
  br label %100

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @pci_release_msi(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %57

94:                                               ; preds = %85
  %95 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %96 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %99 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %80, %74, %20
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @nvme_ctrlr_configure_intx(%struct.nvme_controller*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
