; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init_shared_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, i64, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_softc*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.vmxnet3_txq_shared*, %struct.vmxnet3_softc*, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_18__*, i32, %struct.vmxnet3_driver_shared* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.vmxnet3_rxq_shared = type { i32, i8*, i32, i32, i32*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.vmxnet3_txq_shared = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.vmxnet3_driver_shared = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_11__, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.vmxnet3_txqueue = type { i32, i64, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_txqueue*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txqueue*, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_18__*, i32, %struct.vmxnet3_driver_shared* }
%struct.vmxnet3_rxqueue = type { i32, i64, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxqueue*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.vmxnet3_txq_shared*, %struct.vmxnet3_rxqueue*, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_18__*, i32, %struct.vmxnet3_driver_shared* }

@VMXNET3_REV1_MAGIC = common dso_local global i32 0, align 4
@VMXNET3_DRIVER_VERSION = common dso_local global i32 0, align 4
@VMXNET3_GOS_FREEBSD = common dso_local global i32 0, align 4
@VMXNET3_GOS_64BIT = common dso_local global i32 0, align 4
@IFLIB_MAX_RX_SEGS = common dso_local global i32 0, align 4
@VMXNET3_FLAG_RSS = common dso_local global i32 0, align 4
@VMXNET3_IMM_AUTO = common dso_local global i64 0, align 8
@VMXNET3_ICTRL_DISABLE_ALL = common dso_local global i32 0, align 4
@UPT1_IMOD_ADAPTIVE = common dso_local global i32 0, align 4
@VMXNET3_GOS_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_init_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_init_shared_data(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca %struct.vmxnet3_driver_shared*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.vmxnet3_txqueue*, align 8
  %7 = alloca %struct.vmxnet3_txq_shared*, align 8
  %8 = alloca %struct.vmxnet3_rxqueue*, align 8
  %9 = alloca %struct.vmxnet3_rxq_shared*, align 8
  %10 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %11 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %11, i32 0, i32 16
  %13 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %12, align 8
  store %struct.vmxnet3_driver_shared* %13, %struct.vmxnet3_driver_shared** %3, align 8
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %17, i32 0, i32 14
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %5, align 8
  %20 = load i32, i32* @VMXNET3_REV1_MAGIC, align 4
  %21 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @VMXNET3_DRIVER_VERSION, align 4
  %24 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @VMXNET3_GOS_FREEBSD, align 4
  %27 = load i32, i32* @VMXNET3_GOS_64BIT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %36 = bitcast %struct.vmxnet3_softc* %35 to %struct.vmxnet3_txqueue*
  %37 = call i8* @vtophys(%struct.vmxnet3_txqueue* %36)
  %38 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %38, i32 0, i32 15
  store i8* %37, i8** %39, align 8
  %40 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %40, i32 0, i32 3
  store i32 136, i32* %41, align 4
  %42 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %48, i32 0, i32 13
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @IFLIB_MAX_RX_SEGS, align 4
  %55 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VMXNET3_FLAG_RSS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %1
  %64 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %67, i32 0, i32 12
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %79 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %63, %1
  %82 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VMXNET3_IMM_AUTO, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %104

95:                                               ; preds = %81
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %98, %101
  %103 = add nsw i32 %102, 1
  br label %104

104:                                              ; preds = %95, %94
  %105 = phi i32 [ 2, %94 ], [ %103, %95 ]
  %106 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %109 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %112 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %111, i32 0, i32 10
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @VMXNET3_ICTRL_DISABLE_ALL, align 4
  %114 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %115 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %130, %104
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load i32, i32* @UPT1_IMOD_ADAPTIVE, align 4
  %124 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %116

133:                                              ; preds = %116
  %134 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %135 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %134, i32 0, i32 10
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %139 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %141 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %140, i32 0, i32 10
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %3, align 8
  %145 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %193, %133
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %196

152:                                              ; preds = %146
  %153 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %154 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %153, i32 0, i32 9
  %155 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %155, i64 %157
  %159 = bitcast %struct.vmxnet3_softc* %158 to %struct.vmxnet3_txqueue*
  store %struct.vmxnet3_txqueue* %159, %struct.vmxnet3_txqueue** %6, align 8
  %160 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %161 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %160, i32 0, i32 8
  %162 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %161, align 8
  store %struct.vmxnet3_txq_shared* %162, %struct.vmxnet3_txq_shared** %7, align 8
  %163 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %164 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %168 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %170 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %174 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %176 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %180 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %182 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %186 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %6, align 8
  %188 = call i8* @vtophys(%struct.vmxnet3_txqueue* %187)
  %189 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %190 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %7, align 8
  %192 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %191, i32 0, i32 0
  store i32 136, i32* %192, align 8
  br label %193

193:                                              ; preds = %152
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %146

196:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %273, %196
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %276

203:                                              ; preds = %197
  %204 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %205 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %204, i32 0, i32 5
  %206 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %206, i64 %208
  %210 = bitcast %struct.vmxnet3_softc* %209 to %struct.vmxnet3_rxqueue*
  store %struct.vmxnet3_rxqueue* %210, %struct.vmxnet3_rxqueue** %8, align 8
  %211 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %212 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %211, i32 0, i32 4
  %213 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %212, align 8
  store %struct.vmxnet3_rxq_shared* %213, %struct.vmxnet3_rxq_shared** %9, align 8
  %214 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %215 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %214, i32 0, i32 3
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %221 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %219, i32* %223, align 4
  %224 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %225 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %224, i32 0, i32 3
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %231 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %229, i32* %233, align 4
  %234 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %235 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %234, i32 0, i32 3
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i64 1
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %241 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  store i32 %239, i32* %243, align 4
  %244 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %245 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %244, i32 0, i32 3
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 1
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %251 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %255 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %259 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  %260 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %261 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %265 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %8, align 8
  %267 = bitcast %struct.vmxnet3_rxqueue* %266 to %struct.vmxnet3_txqueue*
  %268 = call i8* @vtophys(%struct.vmxnet3_txqueue* %267)
  %269 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %270 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %9, align 8
  %272 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %271, i32 0, i32 0
  store i32 136, i32* %272, align 8
  br label %273

273:                                              ; preds = %203
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %197

276:                                              ; preds = %197
  ret void
}

declare dso_local i8* @vtophys(%struct.vmxnet3_txqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
