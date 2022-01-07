; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cfg_itype_and_nqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cfg_itype_and_nqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.intrs_and_queues = type { i32 }

@INTR_MSIX = common dso_local global i32 0, align 4
@t4_intr_types = common dso_local global i32 0, align 4
@INTR_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"fewer vectors than requested, type=%d, req=%d, rcvd=%d; will downshift req.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"failed to allocate vectors:%d, type=%d, req=%d, rcvd=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"failed to find a usable interrupt type.  allowed=%d, msi-x=%d, msi=%d, intx=1\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.intrs_and_queues*)* @cfg_itype_and_nqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_itype_and_nqueues(%struct.adapter* %0, %struct.intrs_and_queues* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.intrs_and_queues*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.intrs_and_queues* %1, %struct.intrs_and_queues** %5, align 8
  %10 = load i32, i32* @INTR_MSIX, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %111, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %114

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @t4_intr_types, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %111

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @INTR_MSIX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_msix_count(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @INTR_MSI, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_msi_count(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %85, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %111

45:                                               ; preds = %41
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @calculate_iaq(%struct.adapter* %46, %struct.intrs_and_queues* %47, i32 %48, i32 %49)
  %51 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %52 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @INTR_MSIX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_alloc_msix(i32 %60, i32* %9)
  store i32 %61, i32* %6, align 4
  br label %72

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @INTR_MSI, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_alloc_msi(i32 %69, i32* %9)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %62
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %81 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %129

85:                                               ; preds = %78
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %91 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %93)
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pci_release_msi(i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %8, align 4
  br label %41

100:                                              ; preds = %75, %72
  %101 = load %struct.adapter*, %struct.adapter** %4, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.intrs_and_queues*, %struct.intrs_and_queues** %5, align 8
  %107 = getelementptr inbounds %struct.intrs_and_queues, %struct.intrs_and_queues* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %44, %19
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %11

114:                                              ; preds = %11
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @t4_intr_types, align 4
  %119 = load %struct.adapter*, %struct.adapter** %4, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pci_msix_count(i32 %121)
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pci_msi_count(i32 %125)
  %127 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %122, i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %114, %84
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @calculate_iaq(%struct.adapter*, %struct.intrs_and_queues*, i32, i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
