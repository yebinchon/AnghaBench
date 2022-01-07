; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_setup_standard_chain_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_setup_standard_chain_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_std_temp = type { i32, i32, i32, i32, i32, i32, i32, %struct.dwc_otg_td*, %struct.dwc_otg_td* }
%struct.dwc_otg_td = type { i32, i64, i64, i64, i8**, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.dwc_otg_td* }

@DWC_OTG_MAX_CHANNELS = common dso_local global i8* null, align 8
@HCSPLT_XACTPOS_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_std_temp*)* @dwc_otg_setup_standard_chain_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_setup_standard_chain_sub(%struct.dwc_otg_std_temp* %0) #0 {
  %2 = alloca %struct.dwc_otg_std_temp*, align 8
  %3 = alloca %struct.dwc_otg_td*, align 8
  store %struct.dwc_otg_std_temp* %0, %struct.dwc_otg_std_temp** %2, align 8
  %4 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %5 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %4, i32 0, i32 7
  %6 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  store %struct.dwc_otg_td* %6, %struct.dwc_otg_td** %3, align 8
  %7 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %8 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %9 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %8, i32 0, i32 8
  store %struct.dwc_otg_td* %7, %struct.dwc_otg_td** %9, align 8
  %10 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %10, i32 0, i32 19
  %12 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %11, align 8
  %13 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %13, i32 0, i32 7
  store %struct.dwc_otg_td* %12, %struct.dwc_otg_td** %14, align 8
  %15 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %19 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %18, i32 0, i32 18
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %23, i32 0, i32 17
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %26 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %28, i32 0, i32 16
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %31 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %36 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %35, i32 0, i32 14
  store i64 0, i64* %36, align 8
  %37 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %38 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %37, i32 0, i32 13
  store i64 0, i64* %38, align 8
  %39 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %40 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %39, i32 0, i32 12
  store i64 0, i64* %40, align 8
  %41 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %42 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %41, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %44 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %47 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %49 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %52 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dwc_otg_std_temp*, %struct.dwc_otg_std_temp** %2, align 8
  %54 = getelementptr inbounds %struct.dwc_otg_std_temp, %struct.dwc_otg_std_temp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %57 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %59 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %61 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %63 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %65 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %66 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %65, i32 0, i32 4
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %70 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %71 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %70, i32 0, i32 4
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %75 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %76 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %75, i32 0, i32 4
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  store i8* %74, i8** %78, align 8
  %79 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %80 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %82 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %84 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @HCSPLT_XACTPOS_BEGIN, align 4
  %86 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %3, align 8
  %87 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
