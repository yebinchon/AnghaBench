; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_remove_vif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_remove_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_vap = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to update SF state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_binding_remove_vif(%struct.iwm_softc* %0, %struct.iwm_vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_vap*, align 8
  %6 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_vap* %1, %struct.iwm_vap** %5, align 8
  %7 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %8 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %15 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %16 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %17 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @iwm_mvm_binding_update(%struct.iwm_softc* %14, %struct.iwm_vap* %15, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %13
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %25 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %26 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %25, i32 0, i32 0
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i64 @iwm_mvm_sf_update(%struct.iwm_softc* %24, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %23
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @iwm_mvm_binding_update(%struct.iwm_softc*, %struct.iwm_vap*, i32, i32) #1

declare dso_local i64 @iwm_mvm_sf_update(%struct.iwm_softc*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
