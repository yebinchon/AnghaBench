; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.i40e_hw*, %struct.ifnet* }
%struct.i40e_hw = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ixl_add_multi: begin\00", align 1
@MAX_MULTICAST_ADDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ixl_add_maddr = common dso_local global i32 0, align 4
@IXL_FILTER_ADD = common dso_local global i32 0, align 4
@IXL_FILTER_USED = common dso_local global i32 0, align 4
@IXL_FILTER_MC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ixl_add_multi: end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_multi(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %7 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %10, i32 0, i32 1
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  store %struct.i40e_hw* %12, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = call i32 @if_llmaddr_count(%struct.ifnet* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_MULTICAST_ADDR, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @__predict_false(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ixl_del_hw_filters(%struct.ixl_vsi* %23, i32 %24)
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %27 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %28 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw* %26, i32 %29, i32 %30, i32* null)
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = load i32, i32* @ixl_add_maddr, align 4
  %35 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %36 = call i32 @if_foreach_llmaddr(%struct.ifnet* %33, i32 %34, %struct.ixl_vsi* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i32, i32* @IXL_FILTER_ADD, align 4
  %41 = load i32, i32* @IXL_FILTER_USED, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IXL_FILTER_MC, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ixl_add_hw_filters(%struct.ixl_vsi* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %32
  %50 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

declare dso_local i32 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @ixl_del_hw_filters(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.ixl_vsi*) #1

declare dso_local i32 @ixl_add_hw_filters(%struct.ixl_vsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
