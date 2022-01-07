; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_host_interface_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_host_interface_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_host_interface_command\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Hardware doesn't support host interface command.\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Firmware is not present.\0A\00", align 1
@E1000_HI_MAX_BLOCK_BYTE_LENGTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Buffer length failure.\0A\00", align 1
@E1000_ERR_HOST_INTERFACE_COMMAND = common dso_local global i32 0, align 4
@E1000_HICR = common dso_local global i32 0, align 4
@E1000_HICR_EN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"E1000_HOST_EN bit disabled.\0A\00", align 1
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_HICR_C = common dso_local global i64 0, align 8
@E1000_HI_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@E1000_HICR_SV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Command has failed with no status valid.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_host_interface_command(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %27, i32* %4, align 4
  br label %134

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, 3
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @E1000_HI_MAX_BLOCK_BYTE_LENGTH, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31, %28
  %40 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %134

43:                                               ; preds = %35
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %45 = load i32, i32* @E1000_HICR, align 4
  %46 = call i64 @E1000_READ_REG(%struct.e1000_hw* %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @E1000_HICR_EN, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %134

55:                                               ; preds = %43
  %56 = load i64, i64* %7, align 8
  %57 = ashr i64 %56, 2
  store i64 %57, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %72, %55
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = load i32, i32* @E1000_HOST_IF, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = bitcast i32* %66 to i64*
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %63, i32 %64, i64 %65, i64 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %58

75:                                               ; preds = %58
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %77 = load i32, i32* @E1000_HICR, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @E1000_HICR_C, align 8
  %80 = or i64 %78, %79
  %81 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %76, i32 %77, i64 %80)
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %97, %75
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @E1000_HI_COMMAND_TIMEOUT, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %88 = load i32, i32* @E1000_HICR, align 4
  %89 = call i64 @E1000_READ_REG(%struct.e1000_hw* %87, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @E1000_HICR_C, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %100

95:                                               ; preds = %86
  %96 = call i32 @msec_delay(i32 1)
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %9, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %82

100:                                              ; preds = %94, %82
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @E1000_HI_COMMAND_TIMEOUT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %106 = load i32, i32* @E1000_HICR, align 4
  %107 = call i64 @E1000_READ_REG(%struct.e1000_hw* %105, i32 %106)
  %108 = load i64, i64* @E1000_HICR_SV, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %104, %100
  %112 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @E1000_ERR_HOST_INTERFACE_COMMAND, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %134

115:                                              ; preds = %104
  store i64 0, i64* %9, align 8
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %122 = load i32, i32* @E1000_HOST_IF, align 4
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw* %121, i32 %122, i64 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = bitcast i32* %125 to i64*
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %120
  %130 = load i64, i64* %9, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %9, align 8
  br label %116

132:                                              ; preds = %116
  %133 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %111, %51, %39, %25, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i64, i64) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
