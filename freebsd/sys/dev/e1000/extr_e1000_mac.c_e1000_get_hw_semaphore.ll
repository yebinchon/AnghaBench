; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_hw_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_hw_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_get_hw_semaphore\00", align 1
@E1000_SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_SMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@E1000_SWSM_SWESMBI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Driver can't access the NVM\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_get_hw_semaphore(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %1
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @E1000_SWSM, align 4
  %34 = call i32 @E1000_READ_REG(%struct.e1000_hw* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  %41 = call i32 @usec_delay(i32 50)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %27

44:                                               ; preds = %39, %27
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %48, %44
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %56
  %64 = load i64, i64* @FALSE, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = call i32 @e1000_put_hw_semaphore(%struct.e1000_hw* %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %86, %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @E1000_SWSM, align 4
  %78 = call i32 @E1000_READ_REG(%struct.e1000_hw* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %89

84:                                               ; preds = %75
  %85 = call i32 @usec_delay(i32 50)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %71

89:                                               ; preds = %83, %71
  br label %90

90:                                               ; preds = %89, %56
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %114, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = load i32, i32* @E1000_SWSM, align 4
  %98 = call i32 @E1000_READ_REG(%struct.e1000_hw* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = load i32, i32* @E1000_SWSM, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %99, i32 %100, i32 %103)
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = load i32, i32* @E1000_SWSM, align 4
  %107 = call i32 @E1000_READ_REG(%struct.e1000_hw* %105, i32 %106)
  %108 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %117

112:                                              ; preds = %95
  %113 = call i32 @usec_delay(i32 50)
  br label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %91

117:                                              ; preds = %111, %91
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = call i32 @e1000_put_hw_semaphore(%struct.e1000_hw* %122)
  %124 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @E1000_ERR_NVM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %121
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_put_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
