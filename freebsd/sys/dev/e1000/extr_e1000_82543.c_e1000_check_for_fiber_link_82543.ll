; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_check_for_fiber_link_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_check_for_fiber_link_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i8*, i8* }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"e1000_check_for_fiber_link_82543\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_RXCW = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"NOT RXing /C/, disable AutoNeg and force link.\0A\00", align 1
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"RXing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_for_fiber_link_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_for_fiber_link_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %10, i64* %7, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @E1000_CTRL, align 4
  %14 = call i32 @E1000_READ_REG(%struct.e1000_hw* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_STATUS, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = load i32, i32* @E1000_RXCW, align 4
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @E1000_STATUS_LU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @E1000_RXCW_C, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %30
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  store i64 0, i64* %7, align 8
  br label %104

44:                                               ; preds = %35
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = load i32, i32* @E1000_TXCW, align 4
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @E1000_TXCW_ANE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %46, i32 %47, i32 %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = load i32, i32* @E1000_CTRL, align 4
  %57 = call i32 @E1000_READ_REG(%struct.e1000_hw* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @E1000_CTRL_SLU, align 4
  %59 = load i32, i32* @E1000_CTRL_FD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = load i32, i32* @E1000_CTRL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %63, i32 %64, i32 %65)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = call i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %104

73:                                               ; preds = %44
  br label %103

74:                                               ; preds = %30, %25, %1
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @E1000_CTRL_SLU, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @E1000_RXCW_C, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = load i32, i32* @E1000_TXCW, align 4
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %86, i32 %87, i32 %90)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = load i32, i32* @E1000_CTRL, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @E1000_CTRL_SLU, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %92, i32 %93, i32 %97)
  %99 = load i8*, i8** @TRUE, align 8
  %100 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %84, %79, %74
  br label %103

103:                                              ; preds = %102, %73
  br label %104

104:                                              ; preds = %103, %71, %40
  %105 = load i64, i64* %7, align 8
  ret i64 %105
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
