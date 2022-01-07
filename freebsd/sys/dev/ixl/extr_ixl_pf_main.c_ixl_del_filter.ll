; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_del_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_del_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i64, i32 }
%struct.ixl_mac_filter = type { i32, i64 }

@IXL_FILTER_DEL = common dso_local global i32 0, align 4
@IXL_VLAN_ANY = common dso_local global i64 0, align 8
@IXL_FILTER_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_del_filter(%struct.ixl_vsi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixl_mac_filter*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.ixl_mac_filter* @ixl_find_filter(%struct.ixl_vsi* %8, i32* %9, i64 %10)
  store %struct.ixl_mac_filter* %11, %struct.ixl_mac_filter** %7, align 8
  %12 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %13 = icmp eq %struct.ixl_mac_filter* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %57

15:                                               ; preds = %3
  %16 = load i32, i32* @IXL_FILTER_DEL, align 4
  %17 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %18 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %22 = call i32 @ixl_del_hw_filters(%struct.ixl_vsi* %21, i32 1)
  %23 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %24 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IXL_VLAN_ANY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %30 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXL_FILTER_VLAN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %37 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %28, %15
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @IXL_VLAN_ANY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %46 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %51 = load i32*, i32** %5, align 8
  call void @ixl_del_filter(%struct.ixl_vsi* %50, i32* %51, i64 0)
  %52 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* @IXL_VLAN_ANY, align 8
  %55 = call i32 @ixl_add_filter(%struct.ixl_vsi* %52, i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %44, %40
  br label %57

57:                                               ; preds = %56, %14
  ret void
}

declare dso_local %struct.ixl_mac_filter* @ixl_find_filter(%struct.ixl_vsi*, i32*, i64) #1

declare dso_local i32 @ixl_del_hw_filters(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @ixl_add_filter(%struct.ixl_vsi*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
