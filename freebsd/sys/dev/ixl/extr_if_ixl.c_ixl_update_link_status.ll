; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_update_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, %struct.i40e_hw, %struct.ixl_vsi }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ixl_vsi = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_update_link_status(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 2
  store %struct.ixl_vsi* %7, %struct.ixl_vsi** %3, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  store %struct.i40e_hw* %9, %struct.i40e_hw** %4, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load i64, i64* @TRUE, align 8
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ixl_max_aq_speed_to_value(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %31 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LINK_STATE_UP, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @iflib_link_state_change(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %37 = call i32 @ixl_link_up_msg(%struct.ixl_pf* %36)
  br label %38

38:                                               ; preds = %20, %14
  br label %55

39:                                               ; preds = %1
  %40 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %41 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* @FALSE, align 8
  %47 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %48 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LINK_STATE_DOWN, align 4
  %53 = call i32 @iflib_link_state_change(i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %45, %39
  br label %55

55:                                               ; preds = %54, %38
  ret void
}

declare dso_local i32 @ixl_max_aq_speed_to_value(i32) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

declare dso_local i32 @ixl_link_up_msg(%struct.ixl_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
