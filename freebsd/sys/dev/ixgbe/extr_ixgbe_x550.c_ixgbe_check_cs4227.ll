; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_check_cs4227.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_check_cs4227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_5__ = type { i32 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_CS4227_RETRIES = common dso_local global i64 0, align 8
@IXGBE_ERROR_CAUTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@IXGBE_CS4227_CHECK_DELAY = common dso_local global i32 0, align 4
@IXGBE_CS4227_SCRATCH = common dso_local global i32 0, align 4
@IXGBE_CS4227_RESET_COMPLETE = common dso_local global i64 0, align 8
@IXGBE_CS4227_RESET_PENDING = common dso_local global i64 0, align 8
@IXGBE_ERROR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CS4227 reset failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_check_cs4227 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_cs4227(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %68, %1
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.0*
  %24 = load i32, i32* %4, align 4
  %25 = call i64 %21(%struct.ixgbe_hw.0* %23, i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @IXGBE_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @ERROR_REPORT2(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %34 = call i32 @msec_delay(i32 %33)
  br label %68

35:                                               ; preds = %16
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %38 = call i64 @ixgbe_read_cs4227(%struct.ixgbe_hw* %36, i32 %37, i64* %5)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @IXGBE_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @IXGBE_CS4227_RESET_COMPLETE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %139

47:                                               ; preds = %42, %35
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @IXGBE_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @IXGBE_CS4227_RESET_PENDING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  br label %71

56:                                               ; preds = %51
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.1*
  %64 = load i32, i32* %4, align 4
  %65 = call i32 %61(%struct.ixgbe_hw.1* %63, i32 %64)
  %66 = load i32, i32* @IXGBE_CS4227_CHECK_DELAY, align 4
  %67 = call i32 @msec_delay(i32 %66)
  br label %68

68:                                               ; preds = %56, %29
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %12

71:                                               ; preds = %55, %12
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @IXGBE_CS4227_RETRIES, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = load i32, i32* %4, align 4
  %84 = call i64 %80(%struct.ixgbe_hw.0* %82, i32 %83)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @IXGBE_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @ERROR_REPORT2(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %90)
  br label %154

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %95 = call i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw* %94)
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @IXGBE_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @IXGBE_ERROR_INVALID_STATE, align 4
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @ERROR_REPORT2(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  br label %139

103:                                              ; preds = %93
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %106 = load i64, i64* @IXGBE_CS4227_RESET_PENDING, align 8
  %107 = call i64 @ixgbe_write_cs4227(%struct.ixgbe_hw* %104, i32 %105, i64 %106)
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %111, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = bitcast %struct.ixgbe_hw* %113 to %struct.ixgbe_hw.1*
  %115 = load i32, i32* %4, align 4
  %116 = call i32 %112(%struct.ixgbe_hw.1* %114, i32 %115)
  %117 = call i32 @msec_delay(i32 10)
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %121, align 8
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %124 = bitcast %struct.ixgbe_hw* %123 to %struct.ixgbe_hw.0*
  %125 = load i32, i32* %4, align 4
  %126 = call i64 %122(%struct.ixgbe_hw.0* %124, i32 %125)
  store i64 %126, i64* %3, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* @IXGBE_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %103
  %131 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @ERROR_REPORT2(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %132)
  br label %154

134:                                              ; preds = %103
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %136 = load i32, i32* @IXGBE_CS4227_SCRATCH, align 4
  %137 = load i64, i64* @IXGBE_CS4227_RESET_COMPLETE, align 8
  %138 = call i64 @ixgbe_write_cs4227(%struct.ixgbe_hw* %135, i32 %136, i64 %137)
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %134, %99, %46
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.1*
  %147 = load i32, i32* %4, align 4
  %148 = call i32 %144(%struct.ixgbe_hw.1* %146, i32 %147)
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @msec_delay(i32 %152)
  br label %154

154:                                              ; preds = %139, %130, %88
  ret void
}

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_read_cs4227(%struct.ixgbe_hw*, i32, i64*) #1

declare dso_local i64 @ixgbe_reset_cs4227(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_write_cs4227(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
