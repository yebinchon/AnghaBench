; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_update_adaptive_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_update_adaptive_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_update_adaptive_generic\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1
@MIN_NUM_XMITS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@E1000_AIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_update_adaptive_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %13
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MIN_NUM_XMITS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load i64, i64* @TRUE, align 8
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 7
  store i64 %32, i64* %34, align 8
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %31
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  br label %61

53:                                               ; preds = %42
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_AIT, align 4
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %62, i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %61, %31
  br label %69

69:                                               ; preds = %68, %25
  br label %91

70:                                               ; preds = %13
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MIN_NUM_XMITS, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* @FALSE, align 8
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 7
  store i64 %84, i64* %86, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = load i32, i32* @E1000_AIT, align 4
  %89 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %87, i32 %88, i64 0)
  br label %90

90:                                               ; preds = %81, %75, %70
  br label %91

91:                                               ; preds = %11, %90, %69
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
