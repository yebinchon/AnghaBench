; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_stp_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_stp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32*, i32*, i32*, i32*, i32 }
%struct.mfi_command = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mfi_ioc_packet = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.megasas_sge = type { i32, i32 }

@MFI_FRAME_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot allocate mfi_kbuff_arr_dmat tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot allocate mfi_kbuff_arr_dmamap memory\0A\00", align 1
@mfi_addr_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not allocate memory for kbuff_arr info\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Copy in failed\0A\00", align 1
@MFI_CMD_MAPPED = common dso_local global i32 0, align 4
@MFI_FRAME_SGL64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_command*, i64)* @mfi_stp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_stp_cmd(%struct.mfi_softc* %0, %struct.mfi_command* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfi_softc*, align 8
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mfi_ioc_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.megasas_sge*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %5, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.mfi_ioc_packet*
  store %struct.mfi_ioc_packet* %14, %struct.mfi_ioc_packet** %9, align 8
  %15 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 8)
  %19 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %20 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %19, i32 0, i32 3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = ptrtoint %struct.TYPE_13__* %21 to i64
  %23 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %24 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.megasas_sge*
  store %struct.megasas_sge* %27, %struct.megasas_sge** %12, align 8
  %28 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %29 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %32 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @MFI_FRAME_SIZE, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %43 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 4, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %46 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %50 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %250, %3
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %56 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %253

60:                                               ; preds = %53
  %61 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %62 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %65 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %66 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %67 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %74 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %82 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i64 @bus_dma_tag_create(i32 %63, i32 1, i32 0, i32 %64, i32 %65, i32* null, i32* null, i32 %72, i32 2, i32 %79, i32 %80, i32* null, i32* null, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %60
  %89 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %90 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %4, align 4
  br label %259

94:                                               ; preds = %60
  %95 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %96 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %102 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = bitcast i32* %105 to i8**
  %107 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %108 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %109 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = call i64 @bus_dmamem_alloc(i32 %100, i8** %106, i32 %107, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %94
  %116 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %117 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %4, align 4
  br label %259

121:                                              ; preds = %94
  %122 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %123 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %129 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %135 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %141 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @mfi_addr_cb, align 4
  %148 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %149 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i32 @bus_dmamap_load(i32 %127, i32 %133, i32 %139, i32 %146, i32 %147, i32* %152, i32 0)
  %154 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %155 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %121
  %162 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %163 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %259

166:                                              ; preds = %121
  %167 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %168 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.megasas_sge*, %struct.megasas_sge** %12, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %173, i64 %174
  %176 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 4
  %177 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %178 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.megasas_sge*, %struct.megasas_sge** %12, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %184, i64 %185
  %187 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.megasas_sge*, %struct.megasas_sge** %12, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %188, i64 %189
  %191 = getelementptr inbounds %struct.megasas_sge, %struct.megasas_sge* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %194 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %193, i32 0, i32 3
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store i32 %192, i32* %202, align 4
  %203 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %204 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %203, i32 0, i32 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %211 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %210, i32 0, i32 3
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  store i32 %209, i32* %219, align 4
  %220 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %221 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load i64, i64* %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %228 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %8, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.mfi_ioc_packet*, %struct.mfi_ioc_packet** %9, align 8
  %234 = getelementptr inbounds %struct.mfi_ioc_packet, %struct.mfi_ioc_packet* %233, i32 0, i32 1
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = load i64, i64* %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @copyin(i32 %226, i32 %232, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %166
  %244 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %245 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @device_printf(i32 %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* %4, align 4
  br label %259

249:                                              ; preds = %166
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %8, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %8, align 8
  br label %53

253:                                              ; preds = %53
  %254 = load i32, i32* @MFI_CMD_MAPPED, align 4
  %255 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %256 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %253, %243, %161, %115, %88
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
