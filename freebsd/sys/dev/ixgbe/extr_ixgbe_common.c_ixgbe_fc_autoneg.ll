; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"ixgbe_fc_autoneg\00", align 1
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Flow control autoneg is disabled\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IXGBE_ERROR_SOFTWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"The link is down\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_fc_autoneg(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i64, i64* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %15 = call i32 @ERROR_REPORT1(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.0*
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 %21(%struct.ixgbe_hw.0* %23, i32* %4, i32* %5, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @IXGBE_ERROR_SOFTWARE, align 4
  %30 = call i32 @ERROR_REPORT1(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %57

31:                                               ; preds = %16
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %55 [
    i32 129, label %36
    i32 128, label %36
    i32 130, label %36
    i32 132, label %44
    i32 131, label %47
  ]

36:                                               ; preds = %31, %31, %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = call i64 @ixgbe_fc_autoneg_fiber(%struct.ixgbe_hw* %41)
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %56

44:                                               ; preds = %31
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = call i64 @ixgbe_fc_autoneg_backplane(%struct.ixgbe_hw* %45)
  store i64 %46, i64* %3, align 8
  br label %56

47:                                               ; preds = %31
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = call i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = call i64 @ixgbe_fc_autoneg_copper(%struct.ixgbe_hw* %52)
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %56

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55, %54, %44, %43
  br label %57

57:                                               ; preds = %56, %28, %13
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @IXGBE_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @TRUE, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  br label %78

66:                                               ; preds = %57
  %67 = load i32, i32* @FALSE, align 4
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i64 @ixgbe_fc_autoneg_fiber(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_fc_autoneg_backplane(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_fc_autoneg_copper(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
