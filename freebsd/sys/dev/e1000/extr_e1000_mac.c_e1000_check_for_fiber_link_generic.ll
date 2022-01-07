; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_for_fiber_link_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_check_for_fiber_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"e1000_check_for_fiber_link_generic\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_RXCW = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"NOT Rx'ing /C/, disable AutoNeg and force link.\0A\00", align 1
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Rx'ing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_for_fiber_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = load i32, i32* @E1000_CTRL, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = load i32, i32* @E1000_STATUS, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @E1000_RXCW, align 4
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @E1000_STATUS_LU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @E1000_RXCW_C, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %30
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %44, i64* %2, align 8
  br label %107

45:                                               ; preds = %35
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = load i32, i32* @E1000_TXCW, align 4
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @E1000_TXCW_ANE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %47, i32 %48, i32 %54)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @E1000_CTRL, align 4
  %58 = call i32 @E1000_READ_REG(%struct.e1000_hw* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @E1000_CTRL_SLU, align 4
  %60 = load i32, i32* @E1000_CTRL_FD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = load i32, i32* @E1000_CTRL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %64, i32 %65, i32 %66)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = call i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %45
  %73 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %2, align 8
  br label %107

75:                                               ; preds = %45
  br label %105

76:                                               ; preds = %30, %25, %1
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @E1000_CTRL_SLU, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @E1000_RXCW_C, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = load i32, i32* @E1000_TXCW, align 4
  %90 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %88, i32 %89, i32 %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = load i32, i32* @E1000_CTRL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @E1000_CTRL_SLU, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %94, i32 %95, i32 %99)
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %86, %81, %76
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %106, i64* %2, align 8
  br label %107

107:                                              ; preds = %105, %72, %40
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
