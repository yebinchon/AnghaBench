; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_vap = type { i32, i32 }
%struct.iwm_mvm_phy_ctxt = type { i32 }
%struct.iwm_mvm_iface_iterator_data = type { i32, i32*, i32*, %struct.iwm_mvm_phy_ctxt* }

@IWM_FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@IWM_FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_vap*, %struct.iwm_mvm_phy_ctxt*, i64)* @iwm_mvm_binding_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_binding_update(%struct.iwm_softc* %0, %struct.iwm_vap* %1, %struct.iwm_mvm_phy_ctxt* %2, i64 %3) #0 {
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.iwm_vap*, align 8
  %7 = alloca %struct.iwm_mvm_phy_ctxt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwm_mvm_iface_iterator_data, align 8
  %10 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.iwm_vap* %1, %struct.iwm_vap** %6, align 8
  store %struct.iwm_mvm_phy_ctxt* %2, %struct.iwm_mvm_phy_ctxt** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = bitcast %struct.iwm_mvm_iface_iterator_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %9, i32 0, i32 3
  %13 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %7, align 8
  store %struct.iwm_mvm_phy_ctxt* %13, %struct.iwm_mvm_phy_ctxt** %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @IWM_FW_CTXT_ACTION_ADD, align 4
  store i32 %17, i32* %10, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @IWM_FW_CTXT_ACTION_REMOVE, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.iwm_vap*, %struct.iwm_vap** %6, align 8
  %25 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %9, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.iwm_vap*, %struct.iwm_vap** %6, align 8
  %31 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %9, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %32, i32* %35, align 4
  %36 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %23, %20
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @iwm_mvm_binding_cmd(%struct.iwm_softc* %40, i32 %41, %struct.iwm_mvm_iface_iterator_data* %9)
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwm_mvm_binding_cmd(%struct.iwm_softc*, i32, %struct.iwm_mvm_iface_iterator_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
