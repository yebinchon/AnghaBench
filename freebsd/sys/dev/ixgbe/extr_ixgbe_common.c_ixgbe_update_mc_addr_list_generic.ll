; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_update_mc_addr_list_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_update_mc_addr_list_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"ixgbe_update_mc_addr_list_generic\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" Clearing MTA\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" Adding the multicast addresses:\0A\00", align 1
@IXGBE_MCSTCTRL = common dso_local global i32 0, align 4
@IXGBE_MCSTCTRL_MFE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"ixgbe_update_mc_addr_list_generic Complete\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_update_mc_addr_list_generic(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i32 (%struct.ixgbe_hw*, i32**, i64*)* %3, i32 %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.ixgbe_hw*, i32**, i64*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.ixgbe_hw*, i32**, i64*)* %3, i32 (%struct.ixgbe_hw*, i32**, i64*)** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @memset(i32** %27, i32 0, i32 8)
  br label %29

29:                                               ; preds = %23, %5
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %37 = load i32 (%struct.ixgbe_hw*, i32**, i64*)*, i32 (%struct.ixgbe_hw*, i32**, i64*)** %9, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %39 = call i32 %37(%struct.ixgbe_hw* %38, i32** %7, i64* %12)
  %40 = call i32 @ixgbe_set_mta(%struct.ixgbe_hw* %36, i32 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %11, align 8
  br label %30

44:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %54 = call i32 @IXGBE_MTA(i32 0)
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %53, i32 %54, i64 %55, i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = load i32, i32* @IXGBE_MCSTCTRL, align 4
  %76 = load i32, i32* @IXGBE_MCSTCTRL_MFE, align 4
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %76, %80
  %82 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %74, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %73, %67
  %84 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %85
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ixgbe_set_mta(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i64, i32) #1

declare dso_local i32 @IXGBE_MTA(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
