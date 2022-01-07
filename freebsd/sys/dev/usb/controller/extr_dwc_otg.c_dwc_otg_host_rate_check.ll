; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_rate_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_rate_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32 }
%struct.dwc_otg_td = type { i64, i32, i32, i32, i64, i64, i64 }

@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@UE_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_host_rate_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_host_rate_check(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  %7 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %8 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %18 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %97

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %25, %28
  %30 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %31 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %97

36:                                               ; preds = %24
  %37 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %38 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %47 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %46, i32 0, i32 3
  store i32 0, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %98

48:                                               ; preds = %2
  %49 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %50 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UE_INTERRUPT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %56 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %97

60:                                               ; preds = %54
  %61 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %62 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %98

63:                                               ; preds = %48
  %64 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %65 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %70 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %76 = call i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc* %75)
  br label %97

77:                                               ; preds = %68
  br label %89

78:                                               ; preds = %63
  %79 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %80 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %85 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %87 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %86, i32 0, i32 3
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %94 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %96 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  store i32 0, i32* %3, align 4
  br label %98

97:                                               ; preds = %74, %59, %35, %23
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %60, %36
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
