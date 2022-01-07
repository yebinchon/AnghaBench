; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_hw_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_set_hw_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iwm_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwm_nvm_data = type { i32* }

@IWM_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@IWM_HW_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no valid mac address was found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_nvm_data*, i32*, i32*)* @iwm_set_hw_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_set_hw_address(%struct.iwm_softc* %0, %struct.iwm_nvm_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca %struct.iwm_nvm_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %6, align 8
  store %struct.iwm_nvm_data* %1, %struct.iwm_nvm_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IWM_DEVICE_FAMILY_8000, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @IWM_HW_ADDR, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %27 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %34 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %41 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %48 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %46, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %55 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %62 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  br label %71

65:                                               ; preds = %4
  %66 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %67 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @iwm_set_hw_address_family_8000(%struct.iwm_softc* %66, %struct.iwm_nvm_data* %67, i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %65, %18
  %72 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %7, align 8
  %73 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @iwm_is_valid_ether_addr(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %79 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @iwm_set_hw_address_family_8000(%struct.iwm_softc*, %struct.iwm_nvm_data*, i32*, i32*) #1

declare dso_local i32 @iwm_is_valid_ether_addr(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
