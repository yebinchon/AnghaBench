; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_read_posted_mbx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_read_posted_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"e1000_read_posted_mbx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_posted_mbx(%struct.e1000_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_mbx_info*, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %9, align 8
  %13 = load i64, i64* @E1000_ERR_MBX, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %10, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %17 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*, i32*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32, i32)** %18, align 8
  %20 = icmp ne i64 (%struct.e1000_hw.0*, i32*, i32, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %40

22:                                               ; preds = %4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @e1000_poll_for_msg(%struct.e1000_hw* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %30 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.e1000_hw.0*, i32*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32, i32)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.0*
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 %32(%struct.e1000_hw.0* %34, i32* %35, i32 %36, i32 %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %28, %22
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i64, i64* %10, align 8
  ret i64 %41
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_poll_for_msg(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
