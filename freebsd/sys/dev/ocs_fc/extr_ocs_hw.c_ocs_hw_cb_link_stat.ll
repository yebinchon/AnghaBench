; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_link_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_link_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 (i64, i32, %struct.TYPE_16__*, i32)* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }

@OCS_HW_LINK_STAT_MAX = common dso_local global i32 0, align 4
@OCS_HW_LINK_STAT_LINK_FAILURE_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_LOSS_OF_SYNC_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_LOSS_OF_SIGNAL_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_PRIMITIVE_SEQ_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_INVALID_XMIT_WORD_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_CRC_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_PRIMITIVE_SEQ_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_ELASTIC_BUFFER_OVERRUN_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_ARB_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_ADVERTISED_RCV_B2B_CREDIT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_CURR_RCV_B2B_CREDIT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_ADVERTISED_XMIT_B2B_CREDIT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_CURR_XMIT_B2B_CREDIT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_EOFA_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_EOFDTI_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_EOFNI_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_SOFF_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_DROPPED_NO_AER_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_DROPPED_NO_RPI_COUNT = common dso_local global i64 0, align 8
@OCS_HW_LINK_STAT_RCV_DROPPED_NO_XRI_COUNT = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64, %struct.TYPE_13__*, i8*)* @ocs_hw_cb_link_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_cb_link_stat(%struct.TYPE_15__* %0, i64 %1, %struct.TYPE_13__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = bitcast %struct.TYPE_13__* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load i32, i32* @OCS_HW_LINK_STAT_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.TYPE_16__, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 41
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 20, i32 13
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @OCS_HW_LINK_STAT_MAX, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ocs_memset(%struct.TYPE_16__* %21, i32 0, i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 40
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @OCS_HW_LINK_STAT_LINK_FAILURE_COUNT, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 39
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @OCS_HW_LINK_STAT_LOSS_OF_SYNC_COUNT, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 38
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @OCS_HW_LINK_STAT_LOSS_OF_SIGNAL_COUNT, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 37
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @OCS_HW_LINK_STAT_PRIMITIVE_SEQ_COUNT, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 36
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @OCS_HW_LINK_STAT_INVALID_XMIT_WORD_COUNT, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 35
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @OCS_HW_LINK_STAT_CRC_COUNT, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 34
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* @OCS_HW_LINK_STAT_PRIMITIVE_SEQ_TIMEOUT_COUNT, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 33
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @OCS_HW_LINK_STAT_ELASTIC_BUFFER_OVERRUN_COUNT, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 32
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @OCS_HW_LINK_STAT_ARB_TIMEOUT_COUNT, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 31
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* @OCS_HW_LINK_STAT_ADVERTISED_RCV_B2B_CREDIT, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 30
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @OCS_HW_LINK_STAT_CURR_RCV_B2B_CREDIT, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 29
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @OCS_HW_LINK_STAT_ADVERTISED_XMIT_B2B_CREDIT, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 28
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* @OCS_HW_LINK_STAT_CURR_XMIT_B2B_CREDIT, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 27
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFA_COUNT, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 26
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFDTI_COUNT, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 25
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFNI_COUNT, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 24
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @OCS_HW_LINK_STAT_RCV_SOFF_COUNT, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 23
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_AER_COUNT, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 22
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_RPI_COUNT, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 21
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_XRI_COUNT, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 20
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* @OCS_HW_LINK_STAT_LINK_FAILURE_COUNT, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 19
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* @OCS_HW_LINK_STAT_LOSS_OF_SYNC_COUNT, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 18
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* @OCS_HW_LINK_STAT_LOSS_OF_SIGNAL_COUNT, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 17
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* @OCS_HW_LINK_STAT_PRIMITIVE_SEQ_COUNT, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 16
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* @OCS_HW_LINK_STAT_INVALID_XMIT_WORD_COUNT, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 15
  %185 = load i32, i32* %184, align 8
  %186 = load i64, i64* @OCS_HW_LINK_STAT_CRC_COUNT, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = load i64, i64* @OCS_HW_LINK_STAT_PRIMITIVE_SEQ_TIMEOUT_COUNT, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* @OCS_HW_LINK_STAT_ELASTIC_BUFFER_OVERRUN_COUNT, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 12
  %203 = load i32, i32* %202, align 4
  %204 = load i64, i64* @OCS_HW_LINK_STAT_ARB_TIMEOUT_COUNT, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 11
  %209 = load i32, i32* %208, align 8
  %210 = load i64, i64* @OCS_HW_LINK_STAT_ADVERTISED_RCV_B2B_CREDIT, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = load i64, i64* @OCS_HW_LINK_STAT_CURR_RCV_B2B_CREDIT, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load i64, i64* @OCS_HW_LINK_STAT_ADVERTISED_XMIT_B2B_CREDIT, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = load i64, i64* @OCS_HW_LINK_STAT_CURR_XMIT_B2B_CREDIT, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFA_COUNT, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFDTI_COUNT, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load i64, i64* @OCS_HW_LINK_STAT_RCV_EOFNI_COUNT, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load i64, i64* @OCS_HW_LINK_STAT_RCV_SOFF_COUNT, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  store i32 %251, i32* %254, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_AER_COUNT, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_RPI_COUNT, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i64, i64* @OCS_HW_LINK_STAT_RCV_DROPPED_NO_XRI_COUNT, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  store i32 %269, i32* %272, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %274 = icmp ne %struct.TYPE_13__* %273, null
  br i1 %274, label %275, label %310

275:                                              ; preds = %4
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32 (i64, i32, %struct.TYPE_16__*, i32)*, i32 (i64, i32, %struct.TYPE_16__*, i32)** %277, align 8
  %279 = icmp ne i32 (i64, i32, %struct.TYPE_16__*, i32)* %278, null
  br i1 %279, label %280, label %304

280:                                              ; preds = %275
  %281 = load i64, i64* %6, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %6, align 8
  br label %294

294:                                              ; preds = %289, %283, %280
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32 (i64, i32, %struct.TYPE_16__*, i32)*, i32 (i64, i32, %struct.TYPE_16__*, i32)** %296, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load i32, i32* %13, align 4
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 %297(i64 %298, i32 %299, %struct.TYPE_16__* %21, i32 %302)
  br label %304

304:                                              ; preds = %294, %275
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %309 = call i32 @ocs_free(i32 %307, %struct.TYPE_13__* %308, i32 16)
  br label %310

310:                                              ; preds = %304, %4
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %315 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %316 = call i32 @ocs_free(i32 %313, %struct.TYPE_13__* %314, i32 %315)
  %317 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %317)
  ret i64 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_memset(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @ocs_free(i32, %struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
