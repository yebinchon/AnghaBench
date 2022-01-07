; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_iov_update_vport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_iov_update_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.ecore_sp_vport_update_params = type { %struct.ecore_filter_accept_flags }
%struct.ecore_filter_accept_flags = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VF[%d] vport not initialized\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_ACCEPT_UCAST_UNMATCHED = common dso_local global i32 0, align 4
@ECORE_ACCEPT_MCAST_UNMATCHED = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_ACCEPT_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, %struct.ecore_sp_vport_update_params*, i32*)* @__qlnx_iov_update_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlnx_iov_update_vport(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_sp_vport_update_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_filter_accept_flags*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ecore_sp_vport_update_params* %2, %struct.ecore_sp_vport_update_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ecore_iov_vf_has_vport_instance(%struct.ecore_hwfn* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @QL_DPRINT1(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load i32, i32* @ECORE_ACCEPT_UCAST_UNMATCHED, align 4
  %26 = load i32, i32* @ECORE_ACCEPT_MCAST_UNMATCHED, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %28, i32 0, i32 0
  store %struct.ecore_filter_accept_flags* %29, %struct.ecore_filter_accept_flags** %11, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ECORE_IOV_VP_UPDATE_ACCEPT_PARAM, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ecore_iov_vf_has_vport_instance(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @QL_DPRINT1(i32*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
