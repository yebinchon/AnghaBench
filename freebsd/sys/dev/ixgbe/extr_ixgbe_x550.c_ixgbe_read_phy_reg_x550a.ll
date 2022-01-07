; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_phy_reg_x550a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_read_phy_reg_x550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)* }
%struct.ixgbe_hw.2 = type opaque

@IXGBE_GSSR_TOKEN_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_read_phy_reg_x550a\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_read_phy_reg_x550a(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IXGBE_GSSR_TOKEN_SM, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.1*
  %26 = load i32, i32* %11, align 4
  %27 = call i64 %23(%struct.ixgbe_hw.1* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.2*
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 %36(%struct.ixgbe_hw.2* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.0*
  %50 = load i32, i32* %11, align 4
  %51 = call i32 %47(%struct.ixgbe_hw.0* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %31, %29
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
