; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_setup_vsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_setup_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Error configuring VF VSI for broadcast promiscuous\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_vf_setup_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_setup_vsi(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %4, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %5, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  store %struct.i40e_hw* %9, %struct.i40e_hw** %6, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %11 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %12 = call i32 @ixl_vf_alloc_vsi(%struct.ixl_pf* %10, %struct.ixl_vf* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %20 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @i40e_aq_set_vsi_broadcast(%struct.i40e_hw* %18, i32 %22, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %29 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %17
  %33 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %34 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %33, i32 0, i32 0
  %35 = call i32 @ixl_reconfigure_filters(%struct.TYPE_2__* %34)
  %36 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %37 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %40 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ixl_vf_alloc_vsi(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @i40e_aq_set_vsi_broadcast(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ixl_reconfigure_filters(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
