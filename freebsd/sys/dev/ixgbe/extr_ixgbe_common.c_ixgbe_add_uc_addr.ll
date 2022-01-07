; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_add_uc_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_add_uc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*, i64, i32)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"ixgbe_add_uc_addr\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c" UC Addr = %.2X %.2X %.2X %.2X %.2X %.2X\0A\00", align 1
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Added a secondary address to RAR[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ixgbe_add_uc_addr Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_add_uc_addr(%struct.ixgbe_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DEBUGOUT6(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %3
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ixgbe_hw.0*, i64, i32*, i64, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32*, i64, i32)** %47, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = bitcast %struct.ixgbe_hw* %49 to %struct.ixgbe_hw.0*
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @IXGBE_RAH_AV, align 4
  %55 = call i32 %48(%struct.ixgbe_hw.0* %50, i64 %51, i32* %52, i64 %53, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %69

63:                                               ; preds = %3
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %39
  %70 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT6(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
