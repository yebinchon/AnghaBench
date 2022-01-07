; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_update_link_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_update_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aq_get_phy_abilities_resp = type { i32, i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_AQ_REQUEST_FEC_KR = common dso_local global i32 0, align 4
@I40E_AQ_REQUEST_FEC_RS = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_NONDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_update_link_info(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %6 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @i40e_aq_get_link_info(%struct.i40e_hw* %7, i32 %8, i32* null, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I40E_AQ_MEDIA_AVAILABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %14
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %42, i32 %43, i32 0, %struct.i40e_aq_get_phy_abilities_resp* %4, i32* null)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %70

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40E_AQ_REQUEST_FEC_KR, align 4
  %53 = load i32, i32* @I40E_AQ_REQUEST_FEC_RS, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %4, i32 0, i32 1
  %66 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %67 = call i32 @i40e_memcpy(i32 %64, i32* %65, i32 4, i32 %66)
  br label %68

68:                                               ; preds = %49, %32, %14
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %47, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @i40e_aq_get_link_info(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_get_phy_abilities_resp*, i32*) #1

declare dso_local i32 @i40e_memcpy(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
