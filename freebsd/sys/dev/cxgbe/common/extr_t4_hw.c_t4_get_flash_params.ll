; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_flash_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_flash_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_desc = type { i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@t4_get_flash_params.supported_flash = internal global [1 x %struct.flash_desc] [%struct.flash_desc { i32 1376769, i32 4194304, i32 0, i32 0 }], align 16
@SF_RD_ID = common dso_local global i32 0, align 4
@A_SF_OP = common dso_local global i32 0, align 4
@SF_SEC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unknown Flash Part, ID = %#x, assuming 4MB\0A\00", align 1
@FLASH_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WARNING: Flash Part ID %#x, size %#x < %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_flash_params(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @SF_RD_ID, align 4
  %12 = call i32 @sf1_write(%struct.adapter* %10, i32 1, i32 1, i32 0, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = call i32 @sf1_read(%struct.adapter* %16, i32 3, i32 0, i32 1, i32* %5)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @A_SF_OP, align 4
  %21 = call i32 @t4_write_reg(%struct.adapter* %19, i32 %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %139

26:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ARRAY_SIZE(%struct.flash_desc* getelementptr inbounds ([1 x %struct.flash_desc], [1 x %struct.flash_desc]* @t4_get_flash_params.supported_flash, i64 0, i64 0))
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [1 x %struct.flash_desc], [1 x %struct.flash_desc]* @t4_get_flash_params.supported_flash, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.flash_desc, %struct.flash_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [1 x %struct.flash_desc], [1 x %struct.flash_desc]* @t4_get_flash_params.supported_flash, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.flash_desc, %struct.flash_desc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SF_SEC_SIZE, align 4
  %53 = udiv i32 %51, %52
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %122

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %104 [
    i32 32, label %65
    i32 157, label %80
    i32 194, label %88
    i32 239, label %96
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 255
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %79 [
    i32 20, label %70
    i32 21, label %71
    i32 22, label %72
    i32 23, label %73
    i32 24, label %74
    i32 25, label %75
    i32 32, label %76
    i32 33, label %77
    i32 34, label %78
  ]

70:                                               ; preds = %65
  store i32 1048576, i32* %9, align 4
  br label %79

71:                                               ; preds = %65
  store i32 2097152, i32* %9, align 4
  br label %79

72:                                               ; preds = %65
  store i32 4194304, i32* %9, align 4
  br label %79

73:                                               ; preds = %65
  store i32 8388608, i32* %9, align 4
  br label %79

74:                                               ; preds = %65
  store i32 16777216, i32* %9, align 4
  br label %79

75:                                               ; preds = %65
  store i32 33554432, i32* %9, align 4
  br label %79

76:                                               ; preds = %65
  store i32 67108864, i32* %9, align 4
  br label %79

77:                                               ; preds = %65
  store i32 134217728, i32* %9, align 4
  br label %79

78:                                               ; preds = %65
  store i32 268435456, i32* %9, align 4
  br label %79

79:                                               ; preds = %65, %78, %77, %76, %75, %74, %73, %72, %71, %70
  br label %104

80:                                               ; preds = %61
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 255
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  switch i32 %84, label %87 [
    i32 22, label %85
    i32 23, label %86
  ]

85:                                               ; preds = %80
  store i32 33554432, i32* %9, align 4
  br label %87

86:                                               ; preds = %80
  store i32 67108864, i32* %9, align 4
  br label %87

87:                                               ; preds = %80, %86, %85
  br label %104

88:                                               ; preds = %61
  %89 = load i32, i32* %5, align 4
  %90 = ashr i32 %89, 16
  %91 = and i32 %90, 255
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  switch i32 %92, label %95 [
    i32 23, label %93
    i32 24, label %94
  ]

93:                                               ; preds = %88
  store i32 8388608, i32* %9, align 4
  br label %95

94:                                               ; preds = %88
  store i32 16777216, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %94, %93
  br label %104

96:                                               ; preds = %61
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  switch i32 %100, label %103 [
    i32 23, label %101
    i32 24, label %102
  ]

101:                                              ; preds = %96
  store i32 8388608, i32* %9, align 4
  br label %103

102:                                              ; preds = %96
  store i32 16777216, i32* %9, align 4
  br label %103

103:                                              ; preds = %96, %102, %101
  br label %104

104:                                              ; preds = %61, %103, %95, %87, %79
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %109)
  store i32 4194304, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @SF_SEC_SIZE, align 4
  %118 = udiv i32 %116, %117
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %111, %39
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FLASH_MIN_SIZE, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.adapter*, %struct.adapter** %3, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FLASH_MIN_SIZE, align 4
  %137 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %122
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %24
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @sf1_read(%struct.adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_desc*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
