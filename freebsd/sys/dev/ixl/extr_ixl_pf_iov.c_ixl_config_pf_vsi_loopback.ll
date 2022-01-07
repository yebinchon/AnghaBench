; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_config_pf_vsi_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_config_pf_vsi_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, %struct.ixl_vsi, i32, %struct.i40e_hw }
%struct.ixl_vsi = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vsi_context = type { i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@IXL_VSI_DATA_PORT = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PROP_SWITCH_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"i40e_aq_update_vsi_params() failed, error %d, aq_error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, i32)* @ixl_config_pf_vsi_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_config_pf_vsi_loopback(%struct.ixl_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca %struct.i40e_vsi_context, align 8
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 3
  store %struct.i40e_hw* %11, %struct.i40e_hw** %5, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 1
  store %struct.ixl_vsi* %16, %struct.ixl_vsi** %7, align 8
  %17 = call i32 @memset(%struct.i40e_vsi_context* %8, i32 0, i32 40)
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %19 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %23 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %28 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IXL_VSI_DATA_PORT, align 4
  %37 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @I40E_AQ_VSI_PROP_SWITCH_VALID, align 4
  %39 = call i8* @htole16(i32 %38)
  %40 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB, align 4
  %46 = call i8* @htole16(i32 %45)
  br label %48

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i8* [ %46, %44 ], [ null, %47 ]
  %50 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %8, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %53 = call i32 @i40e_aq_update_vsi_params(%struct.i40e_hw* %52, %struct.i40e_vsi_context* %8, i32* null)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %56, %48
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.i40e_vsi_context*, i32, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(%struct.i40e_hw*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
