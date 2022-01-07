; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_init_dcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_init_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_dcb(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_lldp_variables, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %7 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %17 = call i32 @i40e_read_lldp_cfg(%struct.i40e_hw* %16, %struct.i40e_lldp_variables* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = ashr i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %35, i32 0, i32 1
  store i32 132, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %73

38:                                               ; preds = %22
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 1
  %42 = call i32 @i40e_get_dcbx_status(%struct.i40e_hw* %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %38
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %62 [
    i32 131, label %51
    i32 130, label %51
    i32 132, label %59
    i32 128, label %61
    i32 129, label %61
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %53 = call i32 @i40e_get_dcb_config(%struct.i40e_hw* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %73

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %73

61:                                               ; preds = %47, %47
  br label %62

62:                                               ; preds = %47, %61
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @i40e_aq_cfg_lldp_mib_change_event(%struct.i40e_hw* %64, i32 %65, i32* null)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %69, %59, %56, %45, %34, %20, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @i40e_read_lldp_cfg(%struct.i40e_hw*, %struct.i40e_lldp_variables*) #1

declare dso_local i32 @i40e_get_dcbx_status(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @i40e_get_dcb_config(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_cfg_lldp_mib_change_event(%struct.i40e_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
