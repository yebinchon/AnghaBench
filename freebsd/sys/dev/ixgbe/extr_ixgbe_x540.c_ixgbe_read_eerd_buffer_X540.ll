; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_read_eerd_buffer_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_read_eerd_buffer_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"ixgbe_read_eerd_buffer_X540\00", align 1
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eerd_buffer_X540(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %20 = call i64 %16(%struct.ixgbe_hw.0* %18, i32 %19)
  %21 = load i64, i64* @IXGBE_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %24, i32 %25, i32 %26, i32* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.1*
  %36 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %37 = call i32 %33(%struct.ixgbe_hw.1* %35, i32 %36)
  br label %40

38:                                               ; preds = %4
  %39 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i64, i64* %9, align 8
  ret i64 %41
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
