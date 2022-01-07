; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i64, %struct.ntb_pci_bar_info* }
%struct.ntb_pci_bar_info = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"user shouldn't get non-shared b2b mw\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64*, i64*, i64*, i64*, i32*)* @intel_ntb_mw_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_mw_get_range(i32 %0, i32 %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ntb_softc*, align 8
  %19 = alloca %struct.ntb_pci_bar_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.ntb_softc* @device_get_softc(i32 %23)
  store %struct.ntb_softc* %24, %struct.ntb_softc** %18, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @intel_ntb_mw_count(i32 %26)
  %28 = icmp uge i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %9, align 4
  br label %118

31:                                               ; preds = %8
  %32 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @intel_ntb_mw_to_bar(%struct.ntb_softc* %35, i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %39 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %38, i32 0, i32 2
  %40 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %39, align 8
  %41 = load i32, i32* %22, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %40, i64 %42
  store %struct.ntb_pci_bar_info* %43, %struct.ntb_pci_bar_info** %19, align 8
  store i64 0, i64* %21, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %46 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %31
  %50 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %51 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %57 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %21, align 8
  br label %59

59:                                               ; preds = %49, %31
  %60 = load %struct.ntb_softc*, %struct.ntb_softc** %18, align 8
  %61 = load i32, i32* %22, align 4
  %62 = call i64 @bar_is_64bit(%struct.ntb_softc* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %65, i32* %20, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %67, i32* %20, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i64*, i64** %12, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %19, align 8
  %73 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %21, align 8
  %76 = add i64 %74, %75
  %77 = load i64*, i64** %12, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i64*, i64** %13, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %19, align 8
  %83 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %21, align 8
  %86 = add i64 %84, %85
  %87 = load i64*, i64** %13, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i64*, i64** %14, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %19, align 8
  %93 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %21, align 8
  %96 = sub i64 %94, %95
  %97 = load i64*, i64** %14, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i64*, i64** %15, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %19, align 8
  %103 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %15, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i64*, i64** %16, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64*, i64** %16, align 8
  store i64 1, i64* %110, align 8
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32*, i32** %17, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %20, align 4
  %116 = load i32*, i32** %17, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %111
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %29
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @intel_ntb_mw_count(i32) #1

declare dso_local i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_mw_to_bar(%struct.ntb_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @bar_is_64bit(%struct.ntb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
