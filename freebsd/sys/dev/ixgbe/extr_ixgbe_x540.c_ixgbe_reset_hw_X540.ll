; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.2*, i32*, i32*)*, i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.7*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_reset_hw_X540\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERROR_CAUTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_RXPBSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_hw_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.0*
  %20 = call i64 %17(%struct.ixgbe_hw.0* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @IXGBE_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %217

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %26)
  br label %28

28:                                               ; preds = %103, %25
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.1*
  %36 = load i32, i32* %7, align 4
  %37 = call i64 %33(%struct.ixgbe_hw.1* %35, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @IXGBE_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @ERROR_REPORT2(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %45, i64* %2, align 8
  br label %219

46:                                               ; preds = %28
  %47 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = load i32, i32* @IXGBE_CTRL, align 4
  %50 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = load i32, i32* @IXGBE_CTRL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %57)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 8
  %63 = load i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.8*
  %66 = load i32, i32* %7, align 4
  %67 = call i32 %63(%struct.ixgbe_hw.8* %65, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %82, %46
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 10
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = call i32 @usec_delay(i32 1)
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = load i32, i32* @IXGBE_CTRL, align 4
  %75 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %85

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %68

85:                                               ; preds = %80, %68
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %91, i64* %4, align 8
  %92 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %93 = call i32 @ERROR_REPORT1(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %85
  %95 = call i32 @msec_delay(i32 100)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %28

111:                                              ; preds = %94
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = call i32 @IXGBE_RXPBSIZE(i32 0)
  %114 = load i32, i32* @IXGBE_RXPBSIZE_SHIFT, align 4
  %115 = shl i32 384, %114
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %112, i32 %113, i32 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 7
  %121 = load i32 (%struct.ixgbe_hw.7*, i32)*, i32 (%struct.ixgbe_hw.7*, i32)** %120, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %123 = bitcast %struct.ixgbe_hw* %122 to %struct.ixgbe_hw.7*
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %121(%struct.ixgbe_hw.7* %123, i32 %127)
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 128, i32* %131, align 4
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 6
  %136 = load i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.6*)** %135, align 8
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = bitcast %struct.ixgbe_hw* %137 to %struct.ixgbe_hw.6*
  %139 = call i32 %136(%struct.ixgbe_hw.6* %138)
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  %144 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.5*
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 %144(%struct.ixgbe_hw.5* %146, i32 %150)
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ixgbe_validate_mac_addr(i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %202

158:                                              ; preds = %111
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 4
  %171 = load i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32, i32, i32)** %170, align 8
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = bitcast %struct.ixgbe_hw* %172 to %struct.ixgbe_hw.4*
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IXGBE_RAH_AV, align 4
  %183 = call i32 %171(%struct.ixgbe_hw.4* %173, i32 %177, i32 %181, i32 0, i32 %182)
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %185 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %187, align 8
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %190 = bitcast %struct.ixgbe_hw* %189 to %struct.ixgbe_hw.3*
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %196 = call i32 %188(%struct.ixgbe_hw.3* %190, i32 %194, i32 %195)
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %198 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %158, %111
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %204 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load i32 (%struct.ixgbe_hw.2*, i32*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*, i32*)** %206, align 8
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %209 = bitcast %struct.ixgbe_hw* %208 to %struct.ixgbe_hw.2*
  %210 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %211 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 4
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %214 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = call i32 %207(%struct.ixgbe_hw.2* %209, i32* %212, i32* %215)
  br label %217

217:                                              ; preds = %202, %24
  %218 = load i64, i64* %4, align 8
  store i64 %218, i64* %2, align 8
  br label %219

219:                                              ; preds = %217, %41
  %220 = load i64, i64* %2, align 8
  ret i64 %220
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i64 @ixgbe_validate_mac_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
