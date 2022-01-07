; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_iov_chk_ucast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_iov_chk_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.ecore_filter_ucast = type { i64, i32 }
%struct.ecore_public_vf_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VF[%d] vport not initialized\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECORE_FILTER_MAC = common dso_local global i64 0, align 8
@ECORE_FILTER_MAC_VLAN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, %struct.ecore_filter_ucast*)* @__qlnx_iov_chk_ucast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlnx_iov_chk_ucast(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_filter_ucast*, align 8
  %8 = alloca %struct.ecore_public_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ecore_filter_ucast* %2, %struct.ecore_filter_ucast** %7, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ecore_iov_vf_has_vport_instance(%struct.ecore_hwfn* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @QL_DPRINT1(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ecore_public_vf_info* @ecore_iov_get_public_vf_info(%struct.ecore_hwfn* %22, i32 %23, i32 1)
  store %struct.ecore_public_vf_info* %24, %struct.ecore_public_vf_info** %8, align 8
  %25 = load %struct.ecore_public_vf_info*, %struct.ecore_public_vf_info** %8, align 8
  %26 = icmp ne %struct.ecore_public_vf_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ECORE_FILTER_MAC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ECORE_FILTER_MAC_VLAN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %30
  %43 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %44 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ecore_public_vf_info*, %struct.ecore_public_vf_info** %8, align 8
  %47 = getelementptr inbounds %struct.ecore_public_vf_info, %struct.ecore_public_vf_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %27, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ecore_iov_vf_has_vport_instance(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @QL_DPRINT1(i32*, i8*, i32) #1

declare dso_local %struct.ecore_public_vf_info* @ecore_iov_get_public_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
