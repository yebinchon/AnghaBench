; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_checksum_ptr_x550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_checksum_ptr_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to read EEPROM image\0A\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64, i64, i64*, i64*, i64)* @ixgbe_checksum_ptr_x550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_checksum_ptr_x550(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [256 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 256, i64* %17, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %17, align 8
  %27 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  %28 = call i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %24, i64 %25, i64 %26, i64* %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %15, align 8
  store i64 %33, i64* %7, align 8
  br label %131

34:                                               ; preds = %23
  %35 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  store i64* %35, i64** %20, align 8
  br label %46

36:                                               ; preds = %6
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %41, i64* %7, align 8
  br label %131

42:                                               ; preds = %36
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64* %45, i64** %20, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  store i64 0, i64* %19, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %16, align 8
  br label %72

51:                                               ; preds = %46
  store i64 1, i64* %19, align 8
  %52 = load i64*, i64** %20, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp eq i64 %55, 65535
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %16, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %16, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60, %57, %51
  %70 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %70, i64* %7, align 8
  br label %131

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i64*, i64** %12, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %13, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %82, i64* %7, align 8
  br label %131

83:                                               ; preds = %75, %72
  %84 = load i64, i64* %19, align 8
  store i64 %84, i64* %18, align 8
  br label %85

85:                                               ; preds = %124, %83
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %85
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load i64*, i64** %12, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %9, align 8
  store i64 0, i64* %18, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i64, i64* %16, align 8
  store i64 %103, i64* %17, align 8
  br label %104

104:                                              ; preds = %102, %95
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %17, align 8
  %108 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  %109 = call i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %105, i64 %106, i64 %107, i64* %108)
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %7, align 8
  br label %131

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %92, %88
  %117 = load i64*, i64** %20, align 8
  %118 = load i64, i64* %18, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %116
  %125 = load i64, i64* %18, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %18, align 8
  %127 = load i64, i64* %16, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %16, align 8
  br label %85

129:                                              ; preds = %85
  %130 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %130, i64* %7, align 8
  br label %131

131:                                              ; preds = %129, %112, %81, %69, %40, %31
  %132 = load i64, i64* %7, align 8
  ret i64 %132
}

declare dso_local i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw*, i64, i64, i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
