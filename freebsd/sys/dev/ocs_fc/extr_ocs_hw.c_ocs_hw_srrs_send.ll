; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_srrs_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_srrs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i64, i32, %struct.TYPE_50__ }
%struct.TYPE_50__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_47__ = type { i32, i8*, %struct.TYPE_56__, %struct.TYPE_54__*, i32, i32, %struct.TYPE_51__*, i8*, i32, i32* }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_51__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i8*, i32, i8*, i8*, i8* }
%struct.TYPE_49__ = type { i32, i64, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_62__, %struct.TYPE_60__, %struct.TYPE_58__, %struct.TYPE_57__, %struct.TYPE_55__, %struct.TYPE_53__, %struct.TYPE_52__ }
%struct.TYPE_62__ = type { i32, i32, i32, i32 }
%struct.TYPE_60__ = type { i32, i32, i32, i32 }
%struct.TYPE_58__ = type { i32, i32, i32 }
%struct.TYPE_57__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_55__ = type { i32, i32, i32, i32 }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_59__, i8* }
%struct.TYPE_59__ = type { i32, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"bad parm hw=%p io=%p send=%p receive=%p rnode=%p iparam=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@OCS_HW_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot send SRRS, HW state=%d\0A\00", align 1
@SLI4_IO_CONTINUATION = common dso_local global i32 0, align 4
@SLI4_SGE_TYPE_DATA = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_CQ_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"REQ WQE error\0A\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"RSP WQE error\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"RSP (SID) WQE error\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"GEN WQE error\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"XMIT SEQ WQE error\0A\00", align 1
@SLI_BLS_ACC = common dso_local global i8* null, align 8
@SLI_BLS_RJT = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"XMIT_BLS_RSP64 WQE error\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"XMIT_BLS_RSP64 WQE SID error\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"XMIT_BCAST64 WQE error\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"bad SRRS type %#x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"sli_queue_write failed: %d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_srrs_send(%struct.TYPE_46__* %0, i32 %1, %struct.TYPE_47__* %2, %struct.TYPE_49__* %3, i32 %4, %struct.TYPE_49__* %5, i32* %6, %struct.TYPE_48__* %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_46__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_47__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_48__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_45__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_44__, align 8
  %26 = alloca %struct.TYPE_44__, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.TYPE_47__* %2, %struct.TYPE_47__** %14, align 8
  store %struct.TYPE_49__* %3, %struct.TYPE_49__** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_49__* %5, %struct.TYPE_49__** %17, align 8
  store i32* %6, i32** %18, align 8
  store %struct.TYPE_48__* %7, %struct.TYPE_48__** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %22, align 8
  %27 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %27, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %28 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %29 = icmp ne %struct.TYPE_46__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %10
  %31 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %32 = icmp ne %struct.TYPE_47__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** %18, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %38 = icmp ne %struct.TYPE_48__* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36, %33, %30, %10
  %40 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %41 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %42 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %43 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %46 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.TYPE_46__* %40, %struct.TYPE_47__* %41, %struct.TYPE_49__* %42, %struct.TYPE_49__* %43, i32* %44, %struct.TYPE_48__* %45)
  %47 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %47, i32* %11, align 4
  br label %637

48:                                               ; preds = %36
  %49 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OCS_HW_STATE_ACTIVE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ocs_log_test(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %62, i32* %11, align 4
  br label %637

63:                                               ; preds = %48
  %64 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %65 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ocs_hw_is_xri_port_owned(%struct.TYPE_46__* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %72 = load i32, i32* %24, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %24, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32*, i32** %18, align 8
  %76 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %76, i32 0, i32 9
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %21, align 8
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_51__*, %struct.TYPE_51__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_45__*, %struct.TYPE_45__** %90, align 8
  store %struct.TYPE_45__* %91, %struct.TYPE_45__** %22, align 8
  %92 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_51__*, %struct.TYPE_51__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_45__*, %struct.TYPE_45__** %95, align 8
  %97 = call i32 @ocs_memset(%struct.TYPE_45__* %96, i32 0, i32 80)
  %98 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %99 = icmp ne %struct.TYPE_49__* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %74
  %101 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @ocs_addr32_hi(i32 %103)
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %106, i32 0, i32 4
  store i8* %104, i8** %107, align 8
  %108 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @ocs_addr32_lo(i32 %110)
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %113, i32 0, i32 3
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** @SLI4_SGE_TYPE_DATA, align 8
  %116 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %121 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  br label %123

123:                                              ; preds = %100, %74
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 132, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 129, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %126, %123
  %130 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @ocs_addr32_hi(i32 %132)
  %134 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %135, i32 0, i32 4
  store i8* %133, i8** %136, align 8
  %137 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @ocs_addr32_lo(i32 %139)
  %141 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %142, i32 0, i32 3
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** @SLI4_SGE_TYPE_DATA, align 8
  %145 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %152 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %151, i64 1
  %153 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load i8*, i8** @TRUE, align 8
  %155 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  br label %163

158:                                              ; preds = %126
  %159 = load i8*, i8** @TRUE, align 8
  %160 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %129
  %164 = load i32, i32* %13, align 4
  switch i32 %164, label %571 [
    i32 132, label %165
    i32 131, label %213
    i32 130, label %253
    i32 129, label %296
    i32 128, label %351
    i32 135, label %406
    i32 133, label %406
    i32 134, label %469
    i32 136, label %521
  ]

165:                                              ; preds = %163
  %166 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %167 = icmp ne %struct.TYPE_49__* %166, null
  br i1 %167, label %168, label %206

168:                                              ; preds = %165
  %169 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %180, i32 0, i32 6
  %182 = load %struct.TYPE_51__*, %struct.TYPE_51__** %181, align 8
  %183 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %203 = load i32*, i32** %18, align 8
  %204 = call i32 @sli_els_request64_wqe(%struct.TYPE_50__* %170, i32 %174, i32 %179, %struct.TYPE_51__* %182, i32 %187, i32 %188, i32 %191, i32 %195, i32 %198, i32 %201, i32 %202, i32* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %168, %165
  %207 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %211 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %211, i32* %23, align 4
  br label %212

212:                                              ; preds = %206, %168
  br label %578

213:                                              ; preds = %163
  %214 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %215 = icmp ne %struct.TYPE_49__* %214, null
  br i1 %215, label %216, label %246

216:                                              ; preds = %213
  %217 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %237 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* @UINT32_MAX, align 4
  %244 = call i32 @sli_xmit_els_rsp64_wqe(%struct.TYPE_50__* %218, i32 %222, i32 %227, %struct.TYPE_49__* %228, i32 %229, i32 %232, i32 %235, i32 %236, i32 %240, i32* %241, i32 %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %216, %213
  %247 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %251 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %251, i32* %23, align 4
  br label %252

252:                                              ; preds = %246, %216
  br label %578

253:                                              ; preds = %163
  %254 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %255 = icmp ne %struct.TYPE_49__* %254, null
  br i1 %255, label %256, label %289

256:                                              ; preds = %253
  %257 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %269 = load i32, i32* %16, align 4
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %277 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %18, align 8
  %282 = load i32, i32* %24, align 4
  %283 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @sli_xmit_els_rsp64_wqe(%struct.TYPE_50__* %258, i32 %262, i32 %267, %struct.TYPE_49__* %268, i32 %269, i32 %272, i32 %275, i32 %276, i32 %280, i32* %281, i32 %282, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %256, %253
  %290 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %292, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %294 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %294, i32* %23, align 4
  br label %295

295:                                              ; preds = %289, %256
  br label %578

296:                                              ; preds = %163
  %297 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %298 = icmp ne %struct.TYPE_49__* %297, null
  br i1 %298, label %299, label %344

299:                                              ; preds = %296
  %300 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %311, i32 0, i32 6
  %313 = load %struct.TYPE_51__*, %struct.TYPE_51__** %312, align 8
  %314 = load i32, i32* %16, align 4
  %315 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %331 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %335 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %339 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @sli_gen_request64_wqe(%struct.TYPE_50__* %301, i32 %305, i32 %310, %struct.TYPE_51__* %313, i32 %314, i32 %317, i32 %321, i32 %324, i32 %327, i32 %328, i32* %329, i32 %333, i32 %337, i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %299, %296
  %345 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %349 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %349, i32* %23, align 4
  br label %350

350:                                              ; preds = %344, %299
  br label %578

351:                                              ; preds = %163
  %352 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %353 = icmp ne %struct.TYPE_49__* %352, null
  br i1 %353, label %354, label %399

354:                                              ; preds = %351
  %355 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %358 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %366, i32 0, i32 6
  %368 = load %struct.TYPE_51__*, %struct.TYPE_51__** %367, align 8
  %369 = load i32, i32* %16, align 4
  %370 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %371 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %375 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = load i32*, i32** %18, align 8
  %385 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %386 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %390 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %394 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @sli_xmit_sequence64_wqe(%struct.TYPE_50__* %356, i32 %360, i32 %365, %struct.TYPE_51__* %368, i32 %369, i32 %373, i32 %377, i32 %380, i32 %383, i32* %384, i32 %388, i32 %392, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %354, %351
  %400 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %402, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %404 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %404, i32* %23, align 4
  br label %405

405:                                              ; preds = %399, %354
  br label %578

406:                                              ; preds = %163, %163
  %407 = load i32, i32* %13, align 4
  %408 = icmp eq i32 135, %407
  br i1 %408, label %409, label %419

409:                                              ; preds = %406
  %410 = load i8*, i8** @SLI_BLS_ACC, align 8
  %411 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 3
  store i8* %410, i8** %411, align 8
  %412 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %415 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @ocs_memcpy(i32* %413, i32 %417, i32 4)
  br label %429

419:                                              ; preds = %406
  %420 = load i8*, i8** @SLI_BLS_RJT, align 8
  %421 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 3
  store i8* %420, i8** %421, align 8
  %422 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %425 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @ocs_memcpy(i32* %423, i32 %427, i32 4)
  br label %429

429:                                              ; preds = %419, %409
  %430 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %431 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 1
  store i32 %433, i32* %434, align 4
  %435 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %436 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 0
  store i32 %438, i32* %439, align 8
  %440 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %440, i32 0, i32 2
  %442 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %443 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %452 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %455 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %458 = load i32*, i32** %18, align 8
  %459 = load i32, i32* @UINT32_MAX, align 4
  %460 = call i32 @sli_xmit_bls_rsp64_wqe(%struct.TYPE_50__* %441, i32 %445, i32 %450, %struct.TYPE_44__* %25, i32 %453, i32 %456, i32 %457, i32* %458, i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %429
  %463 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %467 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %467, i32* %23, align 4
  br label %468

468:                                              ; preds = %462, %429
  br label %578

469:                                              ; preds = %163
  %470 = load i8*, i8** @SLI_BLS_ACC, align 8
  %471 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 3
  store i8* %470, i8** %471, align 8
  %472 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %475 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @ocs_memcpy(i32* %473, i32 %477, i32 4)
  %479 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %480 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 4
  %483 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 1
  store i32 %482, i32* %483, align 4
  %484 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %485 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 0
  store i32 %487, i32* %488, align 8
  %489 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %490 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %489, i32 0, i32 2
  %491 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %492 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %496 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %501 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %507 = load i32*, i32** %18, align 8
  %508 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %509 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @sli_xmit_bls_rsp64_wqe(%struct.TYPE_50__* %490, i32 %494, i32 %499, %struct.TYPE_44__* %26, i32 %502, i32 %505, i32 %506, i32* %507, i32 %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %469
  %515 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %516 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %517, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %519 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %519, i32* %23, align 4
  br label %520

520:                                              ; preds = %514, %469
  br label %578

521:                                              ; preds = %163
  %522 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %523 = icmp ne %struct.TYPE_49__* %522, null
  br i1 %523, label %524, label %564

524:                                              ; preds = %521
  %525 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %526 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %528 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %532 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %537 = load i32, i32* %16, align 4
  %538 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %539 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %543 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %542, i32 0, i32 5
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %546 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %545, i32 0, i32 4
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %549 = load i32*, i32** %18, align 8
  %550 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %551 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %555 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %559 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @sli_xmit_bcast64_wqe(%struct.TYPE_50__* %526, i32 %530, i32 %535, %struct.TYPE_49__* %536, i32 %537, i32 %541, i32 %544, i32 %547, i32 %548, i32* %549, i32 %553, i32 %557, i32 %561)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %570

564:                                              ; preds = %524, %521
  %565 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %566 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %567, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %569 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %569, i32* %23, align 4
  br label %570

570:                                              ; preds = %564, %524
  br label %578

571:                                              ; preds = %163
  %572 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %573 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 8
  %575 = load i32, i32* %13, align 4
  %576 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %574, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %575)
  %577 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %577, i32* %23, align 4
  br label %578

578:                                              ; preds = %571, %570, %520, %468, %405, %350, %295, %252, %212
  %579 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %580 = load i32, i32* %23, align 4
  %581 = icmp eq i32 %579, %580
  br i1 %581, label %582, label %635

582:                                              ; preds = %578
  %583 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %584 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %583, i32 0, i32 3
  %585 = load %struct.TYPE_54__*, %struct.TYPE_54__** %584, align 8
  %586 = icmp eq %struct.TYPE_54__* %585, null
  br i1 %586, label %587, label %599

587:                                              ; preds = %582
  %588 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %589 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %590 = call %struct.TYPE_54__* @ocs_hw_queue_next_wq(%struct.TYPE_46__* %588, %struct.TYPE_47__* %589)
  %591 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %592 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %591, i32 0, i32 3
  store %struct.TYPE_54__* %590, %struct.TYPE_54__** %592, align 8
  %593 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %594 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %593, i32 0, i32 3
  %595 = load %struct.TYPE_54__*, %struct.TYPE_54__** %594, align 8
  %596 = icmp ne %struct.TYPE_54__* %595, null
  %597 = zext i1 %596 to i32
  %598 = call i32 @ocs_hw_assert(i32 %597)
  br label %599

599:                                              ; preds = %587, %582
  %600 = load i8*, i8** @TRUE, align 8
  %601 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %602 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %601, i32 0, i32 1
  store i8* %600, i8** %602, align 8
  %603 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %604 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %603, i32 0, i32 3
  %605 = load %struct.TYPE_54__*, %struct.TYPE_54__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %606, align 4
  %609 = call i32 @OCS_STAT(i32 %607)
  %610 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %611 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %612 = call i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_46__* %610, %struct.TYPE_47__* %611)
  %613 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %614 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %613, i32 0, i32 3
  %615 = load %struct.TYPE_54__*, %struct.TYPE_54__** %614, align 8
  %616 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %617 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %616, i32 0, i32 2
  %618 = call i32 @hw_wq_write(%struct.TYPE_54__* %615, %struct.TYPE_56__* %617)
  store i32 %618, i32* %23, align 4
  %619 = load i32, i32* %23, align 4
  %620 = icmp sge i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %599
  store i32 0, i32* %23, align 4
  br label %634

622:                                              ; preds = %599
  %623 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %624 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %23, align 4
  %627 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %625, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %626)
  %628 = load i8*, i8** @FALSE, align 8
  %629 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %630 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %629, i32 0, i32 1
  store i8* %628, i8** %630, align 8
  %631 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %632 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %633 = call i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_46__* %631, %struct.TYPE_47__* %632)
  br label %634

634:                                              ; preds = %622, %621
  br label %635

635:                                              ; preds = %634, %578
  %636 = load i32, i32* %23, align 4
  store i32 %636, i32* %11, align 4
  br label %637

637:                                              ; preds = %635, %54, %39
  %638 = load i32, i32* %11, align 4
  ret i32 %638
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i64 @ocs_hw_is_xri_port_owned(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_45__*, i32, i32) #1

declare dso_local i8* @ocs_addr32_hi(i32) #1

declare dso_local i8* @ocs_addr32_lo(i32) #1

declare dso_local i32 @sli_els_request64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_51__*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sli_xmit_els_rsp64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_49__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sli_gen_request64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_51__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sli_xmit_sequence64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_51__*, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ocs_memcpy(i32*, i32, i32) #1

declare dso_local i32 @sli_xmit_bls_rsp64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_44__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sli_xmit_bcast64_wqe(%struct.TYPE_50__*, i32, i32, %struct.TYPE_49__*, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_54__* @ocs_hw_queue_next_wq(%struct.TYPE_46__*, %struct.TYPE_47__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32 @OCS_STAT(i32) #1

declare dso_local i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_46__*, %struct.TYPE_47__*) #1

declare dso_local i32 @hw_wq_write(%struct.TYPE_54__*, %struct.TYPE_56__*) #1

declare dso_local i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_46__*, %struct.TYPE_47__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
