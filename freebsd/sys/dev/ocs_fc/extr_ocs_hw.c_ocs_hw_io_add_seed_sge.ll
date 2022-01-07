; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_seed_sge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_seed_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCS_HW_DIF_OPER_DISABLED = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bad parameter hw=%p io=%p dif_info=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_SGE_TYPE_DISEED = common dso_local global i32 0, align 4
@OCS_HW_IO_TARGET_WRITE = common dso_local global i64 0, align 8
@OCS_HW_IO_INITIATOR_READ = common dso_local global i64 0, align 8
@SLI4_SGE_TYPE_SKIP = common dso_local global i32 0, align 4
@SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC = common dso_local global i8* null, align 8
@SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unsupported DIF operation %#x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_io_add_seed_sge(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OCS_HW_DIF_OPER_DISABLED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %19, i32* %4, align 4
  br label %254

20:                                               ; preds = %12
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32* [ %32, %29 ], [ null, %33 ]
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %36, %struct.TYPE_17__* %37, %struct.TYPE_18__* %38)
  %40 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %254

41:                                               ; preds = %23
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %49
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %8, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = call i32 @ocs_memset(%struct.TYPE_14__* %52, i32 0, i32 72)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = bitcast %struct.TYPE_14__* %54 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %9, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %41
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %82, %41
  %94 = load i32, i32* @SLI4_SGE_TYPE_DISEED, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @OCS_HW_IO_TARGET_WRITE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %93
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OCS_HW_IO_INITIATOR_READ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %102, %93
  %109 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %109, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @SLI4_SGE_TYPE_SKIP, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %115, %108, %102
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  switch i32 %162, label %226 [
    i32 129, label %163
    i32 131, label %170
    i32 130, label %177
    i32 134, label %184
    i32 132, label %191
    i32 136, label %198
    i32 133, label %205
    i32 135, label %212
    i32 128, label %219
  ]

163:                                              ; preds = %124
  %164 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_NODIF_OUT_CRC, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  br label %235

170:                                              ; preds = %124
  %171 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_NODIF, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %235

177:                                              ; preds = %124
  %178 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  br label %235

184:                                              ; preds = %124
  %185 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  br label %235

191:                                              ; preds = %124
  %192 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_CRC, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  br label %235

198:                                              ; preds = %124
  %199 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  br label %235

205:                                              ; preds = %124
  %206 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CRC_OUT_CHKSUM, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  br label %235

212:                                              ; preds = %124
  %213 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_CHKSUM_OUT_CRC, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  br label %235

219:                                              ; preds = %124
  %220 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** @SLI4_SGE_DIF_OP_IN_RAW_OUT_RAW, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  br label %235

226:                                              ; preds = %124
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %234, i32* %4, align 4
  br label %254

235:                                              ; preds = %219, %212, %205, %198, %191, %184, %177, %170, %163
  %236 = load i32, i32* @TRUE, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = load i32, i32* @FALSE, align 4
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i64 -1
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 4
  br label %248

248:                                              ; preds = %243, %235
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %250, align 8
  %253 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %248, %226, %34, %18
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @ocs_log_err(i32*, i8*, ...) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
