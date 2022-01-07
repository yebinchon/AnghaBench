; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_convert_dif_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_convert_dif_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCS_HW_DIF_OPER_DISABLED = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_NA = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CRC = common dso_local global i32 0, align 4
@SLI4_DIF_INSERT = common dso_local global i64 0, align 8
@OCS_HW_SGE_DIF_OP_IN_CRC_OUT_NODIF = common dso_local global i32 0, align 4
@SLI4_DIF_STRIP = common dso_local global i8* null, align 8
@OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CRC = common dso_local global i32 0, align 4
@SLI4_DIF_PASS_THROUGH = common dso_local global i8* null, align 8
@OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CHKSUM = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CRC = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unhandled SCSI DIF operation %d\0A\00", align 1
@OCS_HW_DIF_BK_SIZE_512 = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_1024 = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_2048 = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_4096 = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_520 = common dso_local global i32 0, align 4
@OCS_HW_DIF_BK_SIZE_4104 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unhandled SCSI DIF block size %d\0A\00", align 1
@OCS_HW_DIF_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ocs_scsi_convert_dif_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_scsi_convert_dif_info(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %10 = call i32 @ocs_memset(%struct.TYPE_11__* %9, i32 0, i32 64)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @OCS_HW_DIF_OPER_DISABLED, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @OCS_HW_DIF_BK_SIZE_NA, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %4, align 4
  br label %202

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %94 [
    i32 129, label %24
    i32 131, label %31
    i32 130, label %39
    i32 134, label %46
    i32 132, label %54
    i32 136, label %62
    i32 133, label %70
    i32 135, label %78
    i32 128, label %86
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CRC, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* @SLI4_DIF_INSERT, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %100

31:                                               ; preds = %20
  %32 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CRC_OUT_NODIF, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** @SLI4_DIF_STRIP, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %100

39:                                               ; preds = %20
  %40 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_NODIF_OUT_CHKSUM, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* @SLI4_DIF_INSERT, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %100

46:                                               ; preds = %20
  %47 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_NODIF, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 14
  store i32 %47, i32* %49, align 4
  %50 = load i8*, i8** @SLI4_DIF_STRIP, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %100

54:                                               ; preds = %20
  %55 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CRC, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** @SLI4_DIF_PASS_THROUGH, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %100

62:                                               ; preds = %20
  %63 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CHKSUM, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** @SLI4_DIF_PASS_THROUGH, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %100

70:                                               ; preds = %20
  %71 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CRC_OUT_CHKSUM, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** @SLI4_DIF_PASS_THROUGH, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %100

78:                                               ; preds = %20
  %79 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_CHKSUM_OUT_CRC, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** @SLI4_DIF_PASS_THROUGH, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %100

86:                                               ; preds = %20
  %87 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 14
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** @SLI4_DIF_PASS_THROUGH, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %100

94:                                               ; preds = %20
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ocs_log_test(%struct.TYPE_9__* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %98)
  store i32 -1, i32* %4, align 4
  br label %202

100:                                              ; preds = %86, %78, %70, %62, %54, %46, %39, %31, %24
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %128 [
    i32 138, label %104
    i32 142, label %108
    i32 141, label %112
    i32 140, label %116
    i32 137, label %120
    i32 139, label %124
  ]

104:                                              ; preds = %100
  %105 = load i32, i32* @OCS_HW_DIF_BK_SIZE_512, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 13
  store i32 %105, i32* %107, align 8
  br label %134

108:                                              ; preds = %100
  %109 = load i32, i32* @OCS_HW_DIF_BK_SIZE_1024, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 13
  store i32 %109, i32* %111, align 8
  br label %134

112:                                              ; preds = %100
  %113 = load i32, i32* @OCS_HW_DIF_BK_SIZE_2048, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 8
  br label %134

116:                                              ; preds = %100
  %117 = load i32, i32* @OCS_HW_DIF_BK_SIZE_4096, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 13
  store i32 %117, i32* %119, align 8
  br label %134

120:                                              ; preds = %100
  %121 = load i32, i32* @OCS_HW_DIF_BK_SIZE_520, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 13
  store i32 %121, i32* %123, align 8
  br label %134

124:                                              ; preds = %100
  %125 = load i32, i32* @OCS_HW_DIF_BK_SIZE_4104, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 8
  br label %134

128:                                              ; preds = %100
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ocs_log_test(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  store i32 -1, i32* %4, align 4
  br label %202

134:                                              ; preds = %124, %120, %116, %112, %108, %104
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SLI4_DIF_INSERT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 8
  br label %162

151:                                              ; preds = %134
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %151, %140
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i32 1, i32* %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* @OCS_HW_DIF_SEED, align 4
  %198 = call i32 @ocs_hw_get(i32* %196, i32 %197, i32* %8)
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %162, %128, %94, %13
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @ocs_memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @ocs_hw_get(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
