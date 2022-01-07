; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_lesm_fw_enabled_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_lesm_fw_enabled_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ixgbe_verify_lesm_fw_enabled_82599\00", align 1
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_FW_LESM_PARAMETERS_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_LESM_STATE_1 = common dso_local global i64 0, align 8
@IXGBE_FW_LESM_STATE_ENABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %3, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.0*
  %17 = load i64, i64* @IXGBE_FW_PTR, align 8
  %18 = call i64 %14(%struct.ixgbe_hw.0* %16, i64 %17, i32* %4)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @IXGBE_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %1
  br label %76

29:                                               ; preds = %25
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @IXGBE_FW_LESM_PARAMETERS_PTR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 %34(%struct.ixgbe_hw.0* %36, i64 %40, i32* %5)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @IXGBE_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %29
  br label %76

52:                                               ; preds = %48
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64 (%struct.ixgbe_hw.0*, i64, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.0*
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @IXGBE_FW_LESM_STATE_1, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i64 %57(%struct.ixgbe_hw.0* %59, i64 %63, i32* %6)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @IXGBE_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IXGBE_FW_LESM_STATE_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %68, %52
  br label %76

76:                                               ; preds = %75, %51, %28
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
