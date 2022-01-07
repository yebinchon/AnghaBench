; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_init_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_init_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ixl_pf = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@IXL_VLAN_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_init_filters(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ixl_pf*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %4 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ixl_pf*
  store %struct.ixl_pf* %7, %struct.ixl_pf** %3, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %8, i32 0, i32 2
  %10 = call i32 @SLIST_INIT(i32* %9)
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 1
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @i40e_aq_set_vsi_broadcast(i32* %12, i32 %15, i32 %16, i32* null)
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %19 = call i32 @ixl_del_default_hw_filters(%struct.ixl_vsi* %18)
  %20 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IXL_VLAN_ANY, align 4
  %28 = call i32 @ixl_add_filter(%struct.ixl_vsi* %20, i32 %26, i32 %27)
  %29 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %30 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %35 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %38 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @i40e_add_filter_to_drop_tx_flow_control_frames(%struct.TYPE_4__* %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @i40e_aq_set_vsi_broadcast(i32*, i32, i32, i32*) #1

declare dso_local i32 @ixl_del_default_hw_filters(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_add_filter(%struct.ixl_vsi*, i32, i32) #1

declare dso_local i32 @i40e_add_filter_to_drop_tx_flow_control_frames(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
