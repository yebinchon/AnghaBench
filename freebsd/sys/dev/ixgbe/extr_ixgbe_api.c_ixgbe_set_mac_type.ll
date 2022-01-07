; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ixgbe_set_mac_type\0A\00", align 1
@IXGBE_INTEL_VENDOR_ID = common dso_local global i64 0, align 8
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported vendor id: %x\00", align 1
@IXGBE_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ixgbe_mvals_base = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i32 0, align 4
@ixgbe_mvals_X540 = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i32 0, align 4
@ixgbe_mvals_X550 = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_x = common dso_local global i32 0, align 4
@ixgbe_mvals_X550EM_x = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a = common dso_local global i32 0, align 4
@ixgbe_mvals_X550EM_a = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported device id: %x\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ixgbe_set_mac_type found mac: %d, returns: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_mac_type(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %5 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IXGBE_INTEL_VENDOR_ID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ERROR_REPORT2(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @IXGBE_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load i32, i32* @ixgbe_mvals_base, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %69 [
    i32 177, label %27
    i32 169, label %27
    i32 175, label %27
    i32 176, label %27
    i32 174, label %27
    i32 173, label %27
    i32 172, label %27
    i32 168, label %27
    i32 167, label %27
    i32 166, label %27
    i32 170, label %27
    i32 171, label %27
    i32 159, label %32
    i32 158, label %32
    i32 150, label %32
    i32 162, label %32
    i32 160, label %32
    i32 156, label %32
    i32 164, label %32
    i32 154, label %32
    i32 155, label %32
    i32 153, label %32
    i32 152, label %32
    i32 157, label %32
    i32 165, label %32
    i32 161, label %32
    i32 163, label %32
    i32 151, label %32
    i32 149, label %37
    i32 148, label %37
    i32 147, label %37
    i32 129, label %45
    i32 128, label %45
    i32 132, label %53
    i32 133, label %53
    i32 135, label %53
    i32 134, label %53
    i32 131, label %53
    i32 130, label %53
    i32 143, label %61
    i32 142, label %61
    i32 138, label %61
    i32 137, label %61
    i32 136, label %61
    i32 145, label %61
    i32 144, label %61
    i32 146, label %61
    i32 141, label %61
    i32 140, label %61
    i32 139, label %61
  ]

27:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %28 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %76

32:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %33 = load i32, i32* @ixgbe_mac_82599EB, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %76

37:                                               ; preds = %20, %20, %20
  %38 = load i32, i32* @ixgbe_mac_X540, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @ixgbe_mvals_X540, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %76

45:                                               ; preds = %20, %20
  %46 = load i32, i32* @ixgbe_mac_X550, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ixgbe_mvals_X550, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %76

53:                                               ; preds = %20, %20, %20, %20, %20, %20
  %54 = load i32, i32* @ixgbe_mac_X550EM_x, align 4
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ixgbe_mvals_X550EM_x, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %76

61:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %62 = load i32, i32* @ixgbe_mac_X550EM_a, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ixgbe_mvals_X550EM_a, align 4
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  br label %76

69:                                               ; preds = %20
  %70 = load i32, i32* @IXGBE_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ERROR_REPORT2(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %61, %53, %45, %37, %32, %27
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %76, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
