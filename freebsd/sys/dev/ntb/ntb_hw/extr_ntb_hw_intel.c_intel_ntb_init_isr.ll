; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_init_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_init_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ticks = common dso_local global i32 0, align 4
@ntb_force_remap_mode = common dso_local global i64 0, align 8
@NTB_XEON = common dso_local global i64 0, align 8
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Errata workaround does not support MSI or INTX\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XEON_DB_TOTAL_SHIFT = common dso_local global i32 0, align 4
@XEON_NONLINK_DB_MSIX_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Errata workaround expects %d doorbell bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error allocating interrupts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_init_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_init_isr(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %7 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ticks, align 4
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %13 = call i32 @DB_MASK_LOCK(%struct.ntb_softc* %12)
  %14 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %20 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @db_iowrite(%struct.ntb_softc* %19, i32 %24, i32 %27)
  %29 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %30 = call i32 @DB_MASK_UNLOCK(%struct.ntb_softc* %29)
  %31 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_msix_count(i32 %33)
  %35 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MIN(i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 1
  br i1 %40, label %41, label %87

41:                                               ; preds = %1
  %42 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_alloc_msix(i32 %44, i32* %5)
  store i32 %45, i32* %6, align 4
  %46 = load i64, i64* @ntb_force_remap_mode, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %51, %48, %41
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @intel_ntb_remap_msix(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pci_release_msi(i32 %79)
  br label %81

81:                                               ; preds = %76, %74
  br label %82

82:                                               ; preds = %81, %61, %58
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %88

87:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NTB_XEON, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %102 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %103 = call i64 @HAS_FEATURE(%struct.ntb_softc* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %2, align 4
  br label %156

111:                                              ; preds = %100
  %112 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = load i32, i32* @XEON_DB_TOTAL_SHIFT, align 4
  %115 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %118 = call i32 @intel_ntb_setup_legacy_interrupt(%struct.ntb_softc* %117)
  store i32 %118, i32* %6, align 4
  br label %143

119:                                              ; preds = %94, %88
  %120 = load i32, i32* %5, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %126 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %127 = call i64 @HAS_FEATURE(%struct.ntb_softc* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %2, align 4
  br label %156

136:                                              ; preds = %124, %119
  %137 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @intel_ntb_create_msix_vec(%struct.ntb_softc* %137, i32 %138)
  %140 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @intel_ntb_setup_msix(%struct.ntb_softc* %140, i32 %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %136, %111
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %153 = call i32 @intel_ntb_free_msix_vec(%struct.ntb_softc* %152)
  br label %154

154:                                              ; preds = %146, %143
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %129, %105
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @DB_MASK_LOCK(%struct.ntb_softc*) #1

declare dso_local i32 @db_iowrite(%struct.ntb_softc*, i32, i32) #1

declare dso_local i32 @DB_MASK_UNLOCK(%struct.ntb_softc*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @intel_ntb_remap_msix(i32, i32, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @intel_ntb_setup_legacy_interrupt(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_create_msix_vec(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_setup_msix(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_free_msix_vec(%struct.ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
