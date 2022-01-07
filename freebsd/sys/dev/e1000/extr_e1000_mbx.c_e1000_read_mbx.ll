; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_read_mbx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_read_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i64, i64)* }
%struct.e1000_hw.0 = type opaque

@E1000_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"e1000_read_mbx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_mbx(%struct.e1000_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.e1000_mbx_info*, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %9, align 8
  %13 = load i32, i32* @E1000_ERR_MBX, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %18 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %23 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %27 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64)** %28, align 8
  %30 = icmp ne i32 (%struct.e1000_hw.0*, i32*, i64, i64)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %9, align 8
  %33 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.e1000_hw.0*, i32*, i64, i64)*, i32 (%struct.e1000_hw.0*, i32*, i64, i64)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 %35(%struct.e1000_hw.0* %37, i32* %38, i64 %39, i64 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
