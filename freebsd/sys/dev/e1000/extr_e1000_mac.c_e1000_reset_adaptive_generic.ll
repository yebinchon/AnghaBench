; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_reset_adaptive_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_reset_adaptive_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_reset_adaptive_generic\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1
@IFS_MIN = common dso_local global i32 0, align 4
@IFS_MAX = common dso_local global i32 0, align 4
@IFS_STEP = common dso_local global i32 0, align 4
@IFS_RATIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E1000_AIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_reset_adaptive_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @IFS_MIN, align 4
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @IFS_MAX, align 4
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @IFS_STEP, align 4
  %23 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @IFS_RATIO, align 4
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_AIT, align 4
  %33 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
