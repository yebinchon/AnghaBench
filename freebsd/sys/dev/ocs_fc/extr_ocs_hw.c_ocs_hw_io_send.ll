; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_60__ = type { i32, i32, i32*, %struct.TYPE_49__, i32, %struct.TYPE_56__, i32, i32, i32, i32, %struct.TYPE_53__ }
%struct.TYPE_49__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_56__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_61__ = type { i32, i8*, %struct.TYPE_55__, %struct.TYPE_52__*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_54__*, i32, i64, %struct.TYPE_47__, %struct.TYPE_54__*, i8*, %struct.TYPE_51__, i8*, i8*, %struct.TYPE_59__* }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_52__ = type { i64, i32 }
%struct.TYPE_47__ = type { %struct.TYPE_58__, %struct.TYPE_50__ }
%struct.TYPE_58__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_50__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_54__ = type { i32, i8* }
%struct.TYPE_51__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i64, i64, i64 }
%struct.TYPE_59__ = type { i64 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"bad parm hw=%p io=%p iparam=%p rnode=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@OCS_HW_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot send IO, HW state=%d\0A\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"using unregistered RPI: %d\0A\00", align 1
@OCS_HW_DIF_MODE_SEPARATE = common dso_local global i32 0, align 4
@OCS_HW_DIF_OPER_DISABLED = common dso_local global i32 0, align 4
@SLI4_CQ_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"IREAD WQE error\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"IWRITE WQE error\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ICMND WQE error\0A\00", align 1
@SLI4_IO_CONTINUATION = common dso_local global i32 0, align 4
@OCS_HW_IO_STATE_WAIT_SEC_HIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"TRECEIVE WQE error\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"TSEND WQE error\0A\00", align 1
@SLI4_IO_DNRX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"TRSP WQE error\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unsupported IO type %#x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"sli_queue_write failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_io_send(%struct.TYPE_60__* %0, i32 %1, %struct.TYPE_61__* %2, i64 %3, %struct.TYPE_47__* %4, %struct.TYPE_59__* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_60__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_47__*, align 8
  %15 = alloca %struct.TYPE_59__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_48__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_60__* %0, %struct.TYPE_60__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_61__* %2, %struct.TYPE_61__** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_47__* %4, %struct.TYPE_47__** %14, align 8
  store %struct.TYPE_59__* %5, %struct.TYPE_59__** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %25 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** %20, align 8
  %27 = call i32 @CPUTRACE(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %29 = icmp ne %struct.TYPE_60__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %8
  %31 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %32 = icmp ne %struct.TYPE_61__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %35 = icmp ne %struct.TYPE_59__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %38 = icmp ne %struct.TYPE_47__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36, %33, %30, %8
  %40 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %41 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %42 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %43 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %44 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_60__* %40, %struct.TYPE_61__* %41, %struct.TYPE_47__* %42, %struct.TYPE_59__* %43)
  %45 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %45, i32* %9, align 4
  br label %866

46:                                               ; preds = %36
  %47 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OCS_HW_STATE_ACTIVE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %60, i32* %9, align 4
  br label %866

61:                                               ; preds = %46
  %62 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %19, align 8
  %65 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @UINT32_MAX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %19, align 8
  %79 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %19, align 8
  %83 = call i32 @ocs_log_test(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %74, %70, %61
  %85 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %86 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %86, i32 0, i32 21
  store %struct.TYPE_59__* %85, %struct.TYPE_59__** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %92, i32 0, i32 20
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %95, i32 0, i32 19
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %11, align 4
  switch i32 %97, label %785 [
    i32 132, label %98
    i32 131, label %185
    i32 133, label %252
    i32 128, label %303
    i32 130, label %594
    i32 129, label %690
  ]

98:                                               ; preds = %84
  %99 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @OCS_HW_DIF_MODE_SEPARATE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @OCS_HW_DIF_OPER_DISABLED, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i8*, i8** @TRUE, align 8
  %120 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %120, i32 0, i32 17
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %118, %111, %104, %98
  %123 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %124 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %125 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ocs_hw_io_ini_sge(%struct.TYPE_60__* %123, %struct.TYPE_61__* %124, i32 %128, i32 %132, i32 %136)
  %138 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %149, i32 0, i32 7
  %151 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %162 = load i64, i64* %19, align 8
  %163 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %164 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @sli_fcp_iread64_wqe(%struct.TYPE_49__* %139, i32 %143, i32 %148, i32* %150, i32 %153, i64 %154, i32 %157, i32 %160, i32 %161, i64 %162, %struct.TYPE_59__* %163, i32 %167, i32 %171, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %122
  %179 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %178, %122
  br label %792

185:                                              ; preds = %84
  %186 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %187 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ocs_hw_io_ini_sge(%struct.TYPE_60__* %186, %struct.TYPE_61__* %187, i32 %191, i32 %195, i32 %199)
  %201 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %214, i32 0, i32 11
  %216 = load i32, i32* %215, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %229 = load i64, i64* %19, align 8
  %230 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %231 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @sli_fcp_iwrite64_wqe(%struct.TYPE_49__* %202, i32 %206, i32 %211, i32* %213, i32 %216, i64 %217, i32 %221, i32 %224, i32 %227, i32 %228, i64 %229, %struct.TYPE_59__* %230, i32 %234, i32 %238, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %185
  %246 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %250 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %250, i32* %18, align 4
  br label %251

251:                                              ; preds = %245, %185
  br label %792

252:                                              ; preds = %84
  %253 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %254 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %255 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ocs_hw_io_ini_sge(%struct.TYPE_60__* %253, %struct.TYPE_61__* %254, i32 %258, i32 %262, i32 %266)
  %268 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %279, i32 0, i32 7
  %281 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %288 = load i64, i64* %19, align 8
  %289 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %290 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @sli_fcp_icmnd64_wqe(%struct.TYPE_49__* %269, i32 %273, i32 %278, i32* %280, i32 %283, i32 %286, i32 %287, i64 %288, %struct.TYPE_59__* %289, i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %252
  %297 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %299, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %301 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %301, i32* %18, align 4
  br label %302

302:                                              ; preds = %296, %252
  br label %792

303:                                              ; preds = %84
  %304 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  store i32 %307, i32* %21, align 4
  %308 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %308, i32 0, i32 18
  %310 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_48__*, %struct.TYPE_48__** %310, align 8
  store %struct.TYPE_48__* %311, %struct.TYPE_48__** %22, align 8
  %312 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i64 @ocs_htobe32(i64 %315)
  %317 = load %struct.TYPE_48__*, %struct.TYPE_48__** %22, align 8
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = inttoptr i64 %319 to i64*
  store i64 %316, i64* %320, align 8
  %321 = load i64, i64* %13, align 8
  %322 = call i64 @ocs_htobe32(i64 %321)
  %323 = load %struct.TYPE_48__*, %struct.TYPE_48__** %22, align 8
  %324 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i64*
  store i64 %322, i64* %326, align 8
  %327 = load %struct.TYPE_48__*, %struct.TYPE_48__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to i64*
  store i64 0, i64* %330, align 8
  %331 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %331, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %339

335:                                              ; preds = %303
  %336 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %337 = load i32, i32* %21, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %21, align 4
  br label %344

339:                                              ; preds = %303
  %340 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %21, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %21, align 4
  br label %344

344:                                              ; preds = %339, %335
  %345 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %349, i32 0, i32 8
  store i32 %348, i32* %350, align 8
  %351 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %374

356:                                              ; preds = %344
  %357 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %357, i32 0, i32 10
  %359 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @OCS_HW_DIF_MODE_SEPARATE, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %374

363:                                              ; preds = %356
  %364 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @OCS_HW_DIF_OPER_DISABLED, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %363
  %371 = load i8*, i8** @TRUE, align 8
  %372 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %372, i32 0, i32 17
  store i8* %371, i8** %373, align 8
  br label %374

374:                                              ; preds = %370, %363, %356, %344
  %375 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %456

380:                                              ; preds = %374
  %381 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @OCS_HW_DIF_OPER_DISABLED, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %456

387:                                              ; preds = %380
  %388 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %389 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %388, i32 0, i32 16
  %390 = load %struct.TYPE_54__*, %struct.TYPE_54__** %389, align 8
  %391 = icmp ne %struct.TYPE_54__* %390, null
  br i1 %391, label %392, label %403

392:                                              ; preds = %387
  %393 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %393, i32 0, i32 16
  %395 = load %struct.TYPE_54__*, %struct.TYPE_54__** %394, align 8
  %396 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %397 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %396, i32 0, i32 12
  store %struct.TYPE_54__* %395, %struct.TYPE_54__** %397, align 8
  %398 = load i8*, i8** @TRUE, align 8
  %399 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %399, i32 0, i32 12
  %401 = load %struct.TYPE_54__*, %struct.TYPE_54__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %401, i32 0, i32 1
  store i8* %398, i8** %402, align 8
  br label %408

403:                                              ; preds = %387
  %404 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %405 = call %struct.TYPE_54__* @ocs_hw_io_alloc(%struct.TYPE_60__* %404)
  %406 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %406, i32 0, i32 12
  store %struct.TYPE_54__* %405, %struct.TYPE_54__** %407, align 8
  br label %408

408:                                              ; preds = %403, %392
  %409 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %409, i32 0, i32 12
  %411 = load %struct.TYPE_54__*, %struct.TYPE_54__** %410, align 8
  %412 = icmp eq %struct.TYPE_54__* %411, null
  br i1 %412, label %413, label %444

413:                                              ; preds = %408
  %414 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %414, i32 0, i32 15
  %416 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %417 = bitcast %struct.TYPE_47__* %415 to i8*
  %418 = bitcast %struct.TYPE_47__* %416 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %417, i8* align 8 %418, i64 72, i1 false)
  %419 = load i64, i64* %13, align 8
  %420 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %421 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %420, i32 0, i32 14
  store i64 %419, i64* %421, align 8
  %422 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %422, i32 0, i32 6
  %424 = call i32 @ocs_lock(i32* %423)
  %425 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %425, i32 0, i32 9
  %427 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %428 = call i32 @ocs_list_remove(i32* %426, %struct.TYPE_61__* %427)
  %429 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %429, i32 0, i32 8
  %431 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %432 = call i32 @ocs_list_add_tail(i32* %430, %struct.TYPE_61__* %431)
  %433 = load i32, i32* @OCS_HW_IO_STATE_WAIT_SEC_HIO, align 4
  %434 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %435 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %434, i32 0, i32 13
  store i32 %433, i32* %435, align 8
  %436 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %436, i32 0, i32 7
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %437, align 4
  %440 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %440, i32 0, i32 6
  %442 = call i32 @ocs_unlock(i32* %441)
  %443 = load i8*, i8** @FALSE, align 8
  store i8* %443, i8** %20, align 8
  br label %792

444:                                              ; preds = %408
  %445 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %455

449:                                              ; preds = %444
  %450 = load i8*, i8** @TRUE, align 8
  %451 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %452 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %451, i32 0, i32 12
  %453 = load %struct.TYPE_54__*, %struct.TYPE_54__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %453, i32 0, i32 1
  store i8* %450, i8** %454, align 8
  br label %455

455:                                              ; preds = %449, %444
  br label %456

456:                                              ; preds = %455, %380, %374
  %457 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %457, i32 0, i32 1
  %459 = load i8*, i8** %458, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %532

461:                                              ; preds = %456
  %462 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %462, i32 0, i32 12
  %464 = load %struct.TYPE_54__*, %struct.TYPE_54__** %463, align 8
  %465 = icmp ne %struct.TYPE_54__* %464, null
  br i1 %465, label %466, label %532

466:                                              ; preds = %461
  %467 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %468 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %467, i32 0, i32 3
  %469 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %470 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %474 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %473, i32 0, i32 3
  %475 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %478, i32 0, i32 7
  %480 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %481 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %480, i32 0, i32 11
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* %13, align 8
  %488 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %491, i32 0, i32 12
  %493 = load %struct.TYPE_54__*, %struct.TYPE_54__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %497 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %496, i32 0, i32 5
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %500 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %501 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 8
  %504 = load i64, i64* %19, align 8
  %505 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %506 = load i32, i32* %21, align 4
  %507 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %508 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %508, i32 0, i32 7
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %512 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %512, i32 0, i32 6
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %516 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %520 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @sli_fcp_cont_treceive64_wqe(%struct.TYPE_49__* %468, i32 %472, i32 %477, i32* %479, i32 %482, i64 %486, i64 %487, i32 %490, i32 %495, i32 %498, i32 %499, i32 %503, i64 %504, %struct.TYPE_59__* %505, i32 %506, i32 %510, i32 %514, i32 %518, i32 %522)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %466
  %526 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %527 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %528, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %530 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %530, i32* %18, align 4
  br label %531

531:                                              ; preds = %525, %466
  br label %593

532:                                              ; preds = %461, %456
  %533 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %534 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %533, i32 0, i32 3
  %535 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %536 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %535, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %539, i32 0, i32 3
  %541 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %544, i32 0, i32 7
  %546 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %547 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %546, i32 0, i32 11
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %550 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* %13, align 8
  %554 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %555 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %554, i32 0, i32 6
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %558 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %557, i32 0, i32 5
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %561 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %562 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 8
  %565 = load i64, i64* %19, align 8
  %566 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %567 = load i32, i32* %21, align 4
  %568 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %569 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %569, i32 0, i32 7
  %571 = load i32, i32* %570, align 8
  %572 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %573 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %573, i32 0, i32 6
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %577 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %581 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 8
  %584 = call i32 @sli_fcp_treceive64_wqe(%struct.TYPE_49__* %534, i32 %538, i32 %543, i32* %545, i32 %548, i64 %552, i64 %553, i32 %556, i32 %559, i32 %560, i32 %564, i64 %565, %struct.TYPE_59__* %566, i32 %567, i32 %571, i32 %575, i32 %579, i32 %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %592

586:                                              ; preds = %532
  %587 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %588 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %589, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %591 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %591, i32* %18, align 4
  br label %592

592:                                              ; preds = %586, %532
  br label %593

593:                                              ; preds = %592, %531
  br label %792

594:                                              ; preds = %84
  %595 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %596 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %596, i32 0, i32 5
  %598 = load i32, i32* %597, align 8
  store i32 %598, i32* %23, align 4
  %599 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %600 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %599, i32 0, i32 1
  %601 = load i8*, i8** %600, align 8
  %602 = icmp ne i8* %601, null
  br i1 %602, label %603, label %607

603:                                              ; preds = %594
  %604 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %605 = load i32, i32* %23, align 4
  %606 = or i32 %605, %604
  store i32 %606, i32* %23, align 4
  br label %612

607:                                              ; preds = %594
  %608 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %609 = xor i32 %608, -1
  %610 = load i32, i32* %23, align 4
  %611 = and i32 %610, %609
  store i32 %611, i32* %23, align 4
  br label %612

612:                                              ; preds = %607, %603
  %613 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %614 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %618 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %617, i32 0, i32 8
  store i32 %616, i32* %618, align 8
  %619 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %620 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %619, i32 0, i32 3
  %621 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %622 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %626 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %625, i32 0, i32 3
  %627 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %631 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %630, i32 0, i32 7
  %632 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %633 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %632, i32 0, i32 11
  %634 = load i32, i32* %633, align 8
  %635 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %636 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* %13, align 8
  %640 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %641 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %640, i32 0, i32 6
  %642 = load i32, i32* %641, align 8
  %643 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %644 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %643, i32 0, i32 5
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %647 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %648 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 8
  %651 = load i64, i64* %19, align 8
  %652 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %653 = load i32, i32* %23, align 4
  %654 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %655 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %655, i32 0, i32 7
  %657 = load i32, i32* %656, align 8
  %658 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %659 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %659, i32 0, i32 6
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %663 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %667 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @sli_fcp_tsend64_wqe(%struct.TYPE_49__* %620, i32 %624, i32 %629, i32* %631, i32 %634, i64 %638, i64 %639, i32 %642, i32 %645, i32 %646, i32 %650, i64 %651, %struct.TYPE_59__* %652, i32 %653, i32 %657, i32 %661, i32 %665, i32 %669)
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %678

672:                                              ; preds = %612
  %673 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %674 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %675, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %677 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %677, i32* %18, align 4
  br label %689

678:                                              ; preds = %612
  %679 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %680 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 8
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %688

684:                                              ; preds = %678
  %685 = load i64, i64* %13, align 8
  %686 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %687 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %686, i32 0, i32 10
  store i64 %685, i64* %687, align 8
  br label %688

688:                                              ; preds = %684, %678
  br label %689

689:                                              ; preds = %688, %672
  br label %792

690:                                              ; preds = %84
  %691 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %692 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %692, i32 0, i32 5
  %694 = load i32, i32* %693, align 8
  store i32 %694, i32* %24, align 4
  %695 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %696 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %695, i32 0, i32 1
  %697 = load i8*, i8** %696, align 8
  %698 = icmp ne i8* %697, null
  br i1 %698, label %699, label %703

699:                                              ; preds = %690
  %700 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %701 = load i32, i32* %24, align 4
  %702 = or i32 %701, %700
  store i32 %702, i32* %24, align 4
  br label %708

703:                                              ; preds = %690
  %704 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %705 = xor i32 %704, -1
  %706 = load i32, i32* %24, align 4
  %707 = and i32 %706, %705
  store i32 %707, i32* %24, align 4
  br label %708

708:                                              ; preds = %703, %699
  %709 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %710 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %709, i32 0, i32 4
  %711 = load i32, i32* %710, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %730

713:                                              ; preds = %708
  %714 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %715 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %714, i32 0, i32 4
  %716 = load i32, i32* %715, align 8
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %730

718:                                              ; preds = %713
  %719 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %720 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %721 = call i32 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_60__* %719, %struct.TYPE_61__* %720, i32 1)
  %722 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %723 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %722, i32 0, i32 9
  store i32 %721, i32* %723, align 4
  %724 = icmp ne i32 %721, 0
  br i1 %724, label %725, label %729

725:                                              ; preds = %718
  %726 = load i32, i32* @SLI4_IO_DNRX, align 4
  %727 = load i32, i32* %24, align 4
  %728 = or i32 %727, %726
  store i32 %728, i32* %24, align 4
  br label %729

729:                                              ; preds = %725, %718
  br label %730

730:                                              ; preds = %729, %713, %708
  %731 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %732 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %732, i32 0, i32 4
  %734 = load i32, i32* %733, align 4
  %735 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %736 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %735, i32 0, i32 8
  store i32 %734, i32* %736, align 8
  %737 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %738 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %737, i32 0, i32 3
  %739 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %740 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %739, i32 0, i32 2
  %741 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %740, i32 0, i32 0
  %742 = load i32, i32* %741, align 8
  %743 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %744 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %743, i32 0, i32 3
  %745 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %744, i32 0, i32 0
  %746 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 8
  %748 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %749 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %748, i32 0, i32 7
  %750 = load i64, i64* %13, align 8
  %751 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %752 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %751, i32 0, i32 6
  %753 = load i32, i32* %752, align 8
  %754 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %755 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %754, i32 0, i32 5
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %758 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %759 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %758, i32 0, i32 0
  %760 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %759, i32 0, i32 3
  %761 = load i32, i32* %760, align 8
  %762 = load i64, i64* %19, align 8
  %763 = load %struct.TYPE_59__*, %struct.TYPE_59__** %15, align 8
  %764 = load i32, i32* %24, align 4
  %765 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %766 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %765, i32 0, i32 0
  %767 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %766, i32 0, i32 2
  %768 = load i32, i32* %767, align 4
  %769 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %770 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %769, i32 0, i32 4
  %771 = load i32, i32* %770, align 8
  %772 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %773 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %772, i32 0, i32 0
  %774 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 8
  %776 = call i32 @sli_fcp_trsp64_wqe(%struct.TYPE_49__* %738, i32 %742, i32 %747, i32* %749, i64 %750, i32 %753, i32 %756, i32 %757, i32 %761, i64 %762, %struct.TYPE_59__* %763, i32 %764, i32 %768, i32 %771, i32 %775)
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %784

778:                                              ; preds = %730
  %779 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %780 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 4
  %782 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %781, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %783 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %783, i32* %18, align 4
  br label %784

784:                                              ; preds = %778, %730
  br label %792

785:                                              ; preds = %84
  %786 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %787 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %786, i32 0, i32 1
  %788 = load i32, i32* %787, align 4
  %789 = load i32, i32* %11, align 4
  %790 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %788, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %789)
  %791 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %791, i32* %18, align 4
  br label %792

792:                                              ; preds = %785, %784, %689, %593, %413, %302, %251, %184
  %793 = load i8*, i8** %20, align 8
  %794 = icmp ne i8* %793, null
  br i1 %794, label %795, label %864

795:                                              ; preds = %792
  %796 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %797 = load i32, i32* %18, align 4
  %798 = icmp eq i32 %796, %797
  br i1 %798, label %799, label %864

799:                                              ; preds = %795
  %800 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %801 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %800, i32 0, i32 3
  %802 = load %struct.TYPE_52__*, %struct.TYPE_52__** %801, align 8
  %803 = icmp eq %struct.TYPE_52__* %802, null
  br i1 %803, label %804, label %816

804:                                              ; preds = %799
  %805 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %806 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %807 = call %struct.TYPE_52__* @ocs_hw_queue_next_wq(%struct.TYPE_60__* %805, %struct.TYPE_61__* %806)
  %808 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %809 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %808, i32 0, i32 3
  store %struct.TYPE_52__* %807, %struct.TYPE_52__** %809, align 8
  %810 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %811 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %810, i32 0, i32 3
  %812 = load %struct.TYPE_52__*, %struct.TYPE_52__** %811, align 8
  %813 = icmp ne %struct.TYPE_52__* %812, null
  %814 = zext i1 %813 to i32
  %815 = call i32 @ocs_hw_assert(i32 %814)
  br label %816

816:                                              ; preds = %804, %799
  %817 = load i8*, i8** @TRUE, align 8
  %818 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %819 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %818, i32 0, i32 1
  store i8* %817, i8** %819, align 8
  %820 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %821 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %820, i32 0, i32 2
  %822 = load i32*, i32** %821, align 8
  %823 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %824 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %823, i32 0, i32 3
  %825 = load %struct.TYPE_52__*, %struct.TYPE_52__** %824, align 8
  %826 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %825, i32 0, i32 0
  %827 = load i64, i64* %826, align 8
  %828 = getelementptr inbounds i32, i32* %822, i64 %827
  %829 = load i32, i32* %828, align 4
  %830 = add nsw i32 %829, 1
  store i32 %830, i32* %828, align 4
  %831 = call i32 @OCS_STAT(i32 %829)
  %832 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %833 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %832, i32 0, i32 3
  %834 = load %struct.TYPE_52__*, %struct.TYPE_52__** %833, align 8
  %835 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %834, i32 0, i32 1
  %836 = load i32, i32* %835, align 8
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %835, align 8
  %838 = call i32 @OCS_STAT(i32 %836)
  %839 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %840 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %841 = call i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_60__* %839, %struct.TYPE_61__* %840)
  %842 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %843 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %842, i32 0, i32 3
  %844 = load %struct.TYPE_52__*, %struct.TYPE_52__** %843, align 8
  %845 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %846 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %845, i32 0, i32 2
  %847 = call i32 @hw_wq_write(%struct.TYPE_52__* %844, %struct.TYPE_55__* %846)
  store i32 %847, i32* %18, align 4
  %848 = load i32, i32* %18, align 4
  %849 = icmp sge i32 %848, 0
  br i1 %849, label %850, label %851

850:                                              ; preds = %816
  store i32 0, i32* %18, align 4
  br label %863

851:                                              ; preds = %816
  %852 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %853 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %852, i32 0, i32 1
  %854 = load i32, i32* %853, align 4
  %855 = load i32, i32* %18, align 4
  %856 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %854, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %855)
  %857 = load i8*, i8** @FALSE, align 8
  %858 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %859 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %858, i32 0, i32 1
  store i8* %857, i8** %859, align 8
  %860 = load %struct.TYPE_60__*, %struct.TYPE_60__** %10, align 8
  %861 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %862 = call i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_60__* %860, %struct.TYPE_61__* %861)
  br label %863

863:                                              ; preds = %851, %850
  br label %864

864:                                              ; preds = %863, %795, %792
  %865 = load i32, i32* %18, align 4
  store i32 %865, i32* %9, align 4
  br label %866

866:                                              ; preds = %864, %52, %39
  %867 = load i32, i32* %9, align 4
  ret i32 %867
}

declare dso_local i32 @CPUTRACE(i8*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i32 @ocs_hw_io_ini_sge(%struct.TYPE_60__*, %struct.TYPE_61__*, i32, i32, i32) #1

declare dso_local i32 @sli_fcp_iread64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i64, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32) #1

declare dso_local i32 @sli_fcp_iwrite64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32) #1

declare dso_local i32 @sli_fcp_icmnd64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i32, i32, i64, %struct.TYPE_59__*, i32) #1

declare dso_local i64 @ocs_htobe32(i64) #1

declare dso_local %struct.TYPE_54__* @ocs_hw_io_alloc(%struct.TYPE_60__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_61__*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_61__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @sli_fcp_cont_treceive64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sli_fcp_treceive64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sli_fcp_tsend64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i32, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_hw_rqpair_auto_xfer_rdy_buffer_post(%struct.TYPE_60__*, %struct.TYPE_61__*, i32) #1

declare dso_local i32 @sli_fcp_trsp64_wqe(%struct.TYPE_49__*, i32, i32, i32*, i64, i32, i32, i32, i32, i64, %struct.TYPE_59__*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_52__* @ocs_hw_queue_next_wq(%struct.TYPE_60__*, %struct.TYPE_61__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32 @OCS_STAT(i32) #1

declare dso_local i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_60__*, %struct.TYPE_61__*) #1

declare dso_local i32 @hw_wq_write(%struct.TYPE_52__*, %struct.TYPE_55__*) #1

declare dso_local i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_60__*, %struct.TYPE_61__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
