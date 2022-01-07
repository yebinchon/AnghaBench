; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i32, %struct.ixl_pf* }
%struct.ixl_pf = type { i32 }
%struct.ixl_mac_filter = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ixl_add_filter: begin\00", align 1
@IXL_VLAN_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"WARNING: no filter available!!\0A\00", align 1
@IXL_FILTER_VLAN = common dso_local global i32 0, align 4
@IXL_FILTER_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_filter(%struct.ixl_vsi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixl_mac_filter*, align 8
  %8 = alloca %struct.ixl_mac_filter*, align 8
  %9 = alloca %struct.ixl_pf*, align 8
  %10 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 2
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %13, align 8
  store %struct.ixl_pf* %14, %struct.ixl_pf** %9, align 8
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %9, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.ixl_mac_filter* @ixl_find_filter(%struct.ixl_vsi* %18, i32* %19, i64 %20)
  store %struct.ixl_mac_filter* %21, %struct.ixl_mac_filter** %7, align 8
  %22 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %23 = icmp ne %struct.ixl_mac_filter* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %87

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @IXL_VLAN_ANY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %31 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* @IXL_VLAN_ANY, align 8
  %38 = call %struct.ixl_mac_filter* @ixl_find_filter(%struct.ixl_vsi* %35, i32* %36, i64 %37)
  store %struct.ixl_mac_filter* %38, %struct.ixl_mac_filter** %8, align 8
  %39 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %8, align 8
  %40 = icmp ne %struct.ixl_mac_filter* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @IXL_VLAN_ANY, align 8
  %45 = call i32 @ixl_del_filter(%struct.ixl_vsi* %42, i32* %43, i64 %44)
  %46 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %47 = load i32*, i32** %5, align 8
  call void @ixl_add_filter(%struct.ixl_vsi* %46, i32* %47, i64 0)
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %29, %25
  %50 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call %struct.ixl_mac_filter* @ixl_new_filter(%struct.ixl_vsi* %50, i32* %51, i64 %52)
  store %struct.ixl_mac_filter* %53, %struct.ixl_mac_filter** %7, align 8
  %54 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %55 = icmp eq %struct.ixl_mac_filter* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %87

59:                                               ; preds = %49
  %60 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %61 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IXL_VLAN_ANY, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @IXL_FILTER_VLAN, align 4
  %67 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %68 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %73 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* @IXL_FILTER_USED, align 4
  %78 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %79 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %83 = load %struct.ixl_mac_filter*, %struct.ixl_mac_filter** %7, align 8
  %84 = getelementptr inbounds %struct.ixl_mac_filter, %struct.ixl_mac_filter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ixl_add_hw_filters(%struct.ixl_vsi* %82, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %76, %56, %24
  ret void
}

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local %struct.ixl_mac_filter* @ixl_find_filter(%struct.ixl_vsi*, i32*, i64) #1

declare dso_local i32 @ixl_del_filter(%struct.ixl_vsi*, i32*, i64) #1

declare dso_local %struct.ixl_mac_filter* @ixl_new_filter(%struct.ixl_vsi*, i32*, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ixl_add_hw_filters(%struct.ixl_vsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
