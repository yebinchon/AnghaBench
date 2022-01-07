; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_poll_for_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_poll_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [19 x i8] c"e1000_poll_for_ack\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_ERR_MBX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @e1000_poll_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_poll_for_ack(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_mbx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mbx_info* %8, %struct.e1000_mbx_info** %5, align 8
  %9 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %18, align 8
  %20 = icmp ne i64 (%struct.e1000_hw.0*, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  br label %56

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.0*
  %33 = load i32, i32* %4, align 4
  %34 = call i64 %30(%struct.e1000_hw.0* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %23
  %37 = phi i1 [ false, %23 ], [ %35, %26 ]
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %49

44:                                               ; preds = %38
  %45 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %46 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usec_delay(i32 %47)
  br label %23

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %5, align 8
  %54 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @E1000_SUCCESS, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @E1000_ERR_MBX, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  ret i32 %65
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
