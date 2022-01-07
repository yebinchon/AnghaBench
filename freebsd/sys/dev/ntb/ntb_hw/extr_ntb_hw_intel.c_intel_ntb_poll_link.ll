; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_poll_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NTB_ATOM = common dso_local global i64 0, align 8
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@intel_ntb_exchange_msix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_poll_link(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %6 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NTB_ATOM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @intel_ntb_reg_read(i32 4, i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %96

25:                                               ; preds = %11
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @intel_ntb_reg_read(i32 4, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %95

38:                                               ; preds = %1
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %40 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %40, i32 0, i32 9
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @db_iowrite_raw(%struct.ntb_softc* %39, i32 %44, i32 %47)
  %49 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 6
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @pci_read_config(i32 %51, i32 %56, i32 2)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %96

64:                                               ; preds = %38
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %69 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %70 = call i64 @HAS_FEATURE(%struct.ntb_softc* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %74 = call i64 @_xeon_link_is_up(%struct.ntb_softc* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %82, i32 0, i32 5
  %84 = load i32, i32* @intel_ntb_exchange_msix, align 4
  %85 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %86 = call i32 @callout_reset(i32* %83, i32 0, i32 %84, %struct.ntb_softc* %85)
  store i32 0, i32* %2, align 4
  br label %96

87:                                               ; preds = %76
  br label %93

88:                                               ; preds = %72
  %89 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %89, i32 0, i32 3
  store i32 0, i32* %90, align 8
  %91 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %91, i32 0, i32 4
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %87
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94, %25
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %81, %63, %24
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @intel_ntb_reg_read(i32, i32) #1

declare dso_local i32 @db_iowrite_raw(%struct.ntb_softc*, i32, i32) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i64 @_xeon_link_is_up(%struct.ntb_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
