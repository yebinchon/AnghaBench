; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_api.c_e1000_setup_init_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_api.c_e1000_setup_init_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ERROR: MAC type could not be set properly.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ERROR: Registers not mapped\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Hardware not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_setup_init_funcs(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = call i32 @e1000_set_mac_type(%struct.e1000_hw* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %103

12:                                               ; preds = %2
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %12
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = call i32 @e1000_init_mac_ops_generic(%struct.e1000_hw* %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = call i32 @e1000_init_phy_ops_generic(%struct.e1000_hw* %24)
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i32 @e1000_init_nvm_ops_generic(%struct.e1000_hw* %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i32 @e1000_init_mbx_ops_generic(%struct.e1000_hw* %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %67 [
    i32 158, label %34
    i32 157, label %37
    i32 156, label %37
    i32 161, label %40
    i32 155, label %40
    i32 154, label %40
    i32 153, label %40
    i32 152, label %40
    i32 160, label %43
    i32 159, label %43
    i32 151, label %43
    i32 150, label %43
    i32 149, label %46
    i32 148, label %46
    i32 147, label %46
    i32 146, label %46
    i32 142, label %46
    i32 162, label %49
    i32 136, label %52
    i32 135, label %52
    i32 137, label %52
    i32 130, label %52
    i32 134, label %52
    i32 132, label %52
    i32 131, label %52
    i32 133, label %52
    i32 145, label %55
    i32 144, label %55
    i32 143, label %55
    i32 139, label %55
    i32 138, label %55
    i32 141, label %58
    i32 140, label %58
    i32 129, label %61
    i32 128, label %64
  ]

34:                                               ; preds = %21
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = call i32 @e1000_init_function_pointers_82542(%struct.e1000_hw* %35)
  br label %71

37:                                               ; preds = %21, %21
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i32 @e1000_init_function_pointers_82543(%struct.e1000_hw* %38)
  br label %71

40:                                               ; preds = %21, %21, %21, %21, %21
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = call i32 @e1000_init_function_pointers_82540(%struct.e1000_hw* %41)
  br label %71

43:                                               ; preds = %21, %21, %21, %21
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = call i32 @e1000_init_function_pointers_82541(%struct.e1000_hw* %44)
  br label %71

46:                                               ; preds = %21, %21, %21, %21, %21
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = call i32 @e1000_init_function_pointers_82571(%struct.e1000_hw* %47)
  br label %71

49:                                               ; preds = %21
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = call i32 @e1000_init_function_pointers_80003es2lan(%struct.e1000_hw* %50)
  br label %71

52:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = call i32 @e1000_init_function_pointers_ich8lan(%struct.e1000_hw* %53)
  br label %71

55:                                               ; preds = %21, %21, %21, %21, %21
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = call i32 @e1000_init_function_pointers_82575(%struct.e1000_hw* %56)
  br label %71

58:                                               ; preds = %21, %21
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = call i32 @e1000_init_function_pointers_i210(%struct.e1000_hw* %59)
  br label %71

61:                                               ; preds = %21
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = call i32 @e1000_init_function_pointers_vf(%struct.e1000_hw* %62)
  br label %71

64:                                               ; preds = %21
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @e1000_init_function_pointers_vf(%struct.e1000_hw* %65)
  br label %71

67:                                               ; preds = %21
  %68 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = call i32 @e1000_init_mac_params(%struct.e1000_hw* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %103

83:                                               ; preds = %77
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = call i32 @e1000_init_nvm_params(%struct.e1000_hw* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %103

89:                                               ; preds = %83
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = call i32 @e1000_init_phy_params(%struct.e1000_hw* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %103

95:                                               ; preds = %89
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = call i32 @e1000_init_mbx_params(%struct.e1000_hw* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %103

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %74, %71
  br label %103

103:                                              ; preds = %102, %100, %94, %88, %82, %17, %10
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @e1000_set_mac_type(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_init_mac_ops_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_phy_ops_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_nvm_ops_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_mbx_ops_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82542(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82543(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82540(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82541(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_82575(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_i210(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_function_pointers_vf(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_mac_params(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_nvm_params(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_phy_params(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_mbx_params(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
