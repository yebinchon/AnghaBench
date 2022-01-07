; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c__i40e_read_lldp_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c__i40e_read_lldp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_PTR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_lldp_variables*, i32, i32)* @_i40e_read_lldp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i40e_read_lldp_cfg(%struct.i40e_hw* %0, %struct.i40e_lldp_variables* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_lldp_variables*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40e_lldp_variables, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_lldp_variables* %1, %struct.i40e_lldp_variables** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %18 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %19 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @I40E_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %103

25:                                               ; preds = %4
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 2
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %26, i32 0, i32 %28, i32 4, %struct.i40e_lldp_variables* %13, i32 %29, i32* null)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %32 = call i32 @i40e_release_nvm(%struct.i40e_hw* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @I40E_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %103

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @LE16_TO_CPU(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @I40E_PTR_TYPE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  %48 = and i32 32767, %47
  %49 = mul nsw i32 %48, 4096
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %14, align 4
  %52 = and i32 32767, %51
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %56 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %57 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @I40E_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %101

62:                                               ; preds = %54
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %63, i32 %64, i32 %65, i32 4, %struct.i40e_lldp_variables* %13, i32 %66, i32* null)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %69 = call i32 @i40e_release_nvm(%struct.i40e_hw* %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @I40E_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %103

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @LE16_TO_CPU(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %82, 2
  store i32 %83, i32* %11, align 4
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %85 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %86 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @I40E_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %101

91:                                               ; preds = %75
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %7, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %92, i32 0, i32 %95, i32 4, %struct.i40e_lldp_variables* %96, i32 %97, i32* null)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %100 = call i32 @i40e_release_nvm(%struct.i40e_hw* %99)
  br label %101

101:                                              ; preds = %91, %90, %61
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %73, %36, %23
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, %struct.i40e_lldp_variables*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
