; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_update_uc_addr_list_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_update_uc_addr_list_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ixgbe_update_uc_addr_list_generic\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" Adding the secondary addresses:\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" Entering address overflow promisc mode\0A\00", align 1
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c" Leaving address overflow promisc mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ixgbe_update_uc_addr_list_generic Complete\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_update_uc_addr_list_generic(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i32* (%struct.ixgbe_hw*, i32**, i64*)* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32* (%struct.ixgbe_hw*, i32**, i64*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* (%struct.ixgbe_hw*, i32**, i64*)* %3, i32* (%struct.ixgbe_hw*, i32**, i64*)** %8, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %25
  store i64 %30, i64* %28, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %52, %4
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 1, %43
  %45 = call i32 @IXGBE_RAL(i64 %44)
  %46 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %45, i64 0)
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 1, %48
  %50 = call i32 @IXGBE_RAH(i64 %49)
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %50, i64 0)
  br label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %37

55:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32* (%struct.ixgbe_hw*, i32**, i64*)*, i32* (%struct.ixgbe_hw*, i32**, i64*)** %8, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = call i32* %62(%struct.ixgbe_hw* %63, i32** %6, i64* %14)
  store i32* %64, i32** %9, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @ixgbe_add_uc_addr(%struct.ixgbe_hw* %65, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %90 = load i32, i32* @IXGBE_FCTRL, align 4
  %91 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %89, i32 %90)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* @IXGBE_FCTRL_UPE, align 8
  %93 = load i64, i64* %13, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %96 = load i32, i32* @IXGBE_FCTRL, align 4
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %95, i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %87, %81, %78
  br label %123

100:                                              ; preds = %72
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %103
  %110 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %112 = load i32, i32* @IXGBE_FCTRL, align 4
  %113 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %111, i32 %112)
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* @IXGBE_FCTRL_UPE, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %13, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %119 = load i32, i32* @IXGBE_FCTRL, align 4
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %118, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %109, %103, %100
  br label %123

123:                                              ; preds = %122, %99
  %124 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %125
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RAL(i64) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_add_uc_addr(%struct.ixgbe_hw*, i32*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
