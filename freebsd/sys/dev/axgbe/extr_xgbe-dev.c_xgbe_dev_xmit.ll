; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, i32, i32, i32, i32, i32, i32, %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32, i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring_data = type { i32, %struct.xgbe_ring_desc*, %struct.TYPE_2__, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"-->xgbe_dev_xmit\0A\00", align 1
@TX_NORMAL_DESC2 = common dso_local global i32 0, align 4
@HL_B1L = common dso_local global i32 0, align 4
@TX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@PTP = common dso_local global i32 0, align 4
@TTSE = common dso_local global i32 0, align 4
@TX_NORMAL_DESC3 = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@CTXT = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@CPC = common dso_local global i32 0, align 4
@FL = common dso_local global i32 0, align 4
@LD = common dso_local global i32 0, align 4
@IC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"  %s: descriptors %u to %u written\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"<--xgbe_dev_xmit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*)* @xgbe_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_dev_xmit(%struct.xgbe_channel* %0) #0 {
  %2 = alloca %struct.xgbe_channel*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca %struct.xgbe_ring_desc*, align 8
  %7 = alloca %struct.xgbe_packet_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %2, align 8
  %12 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %12, i32 0, i32 2
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %13, align 8
  store %struct.xgbe_prv_data* %14, %struct.xgbe_prv_data** %3, align 8
  %15 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %15, i32 0, i32 1
  %17 = load %struct.xgbe_ring*, %struct.xgbe_ring** %16, align 8
  store %struct.xgbe_ring* %17, %struct.xgbe_ring** %4, align 8
  %18 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %18, i32 0, i32 7
  store %struct.xgbe_packet_data* %19, %struct.xgbe_packet_data** %7, align 8
  %20 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %24 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %28 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %31 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %64

39:                                               ; preds = %1
  %40 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %41 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %50 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %57 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %38
  store i32 1, i32* %8, align 4
  %65 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %65, i32 %66)
  store %struct.xgbe_ring_data* %67, %struct.xgbe_ring_data** %5, align 8
  %68 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %69 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %68, i32 0, i32 1
  %70 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %69, align 8
  store %struct.xgbe_ring_desc* %70, %struct.xgbe_ring_desc** %6, align 8
  %71 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %72 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %77 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %79 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @upper_32_bits(i32 %80)
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %84 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %86 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %89 = load i32, i32* @HL_B1L, align 4
  %90 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %91 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @XGMAC_SET_BITS_LE(i32 %87, i32 %88, i32 %89, i32 %92)
  %94 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %95 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TX_PACKET_ATTRIBUTES, align 4
  %98 = load i32, i32* @PTP, align 4
  %99 = call i64 @XGMAC_GET_BITS(i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %64
  %102 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %103 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %106 = load i32, i32* @TTSE, align 4
  %107 = call i32 @XGMAC_SET_BITS_LE(i32 %104, i32 %105, i32 %106, i32 1)
  br label %108

108:                                              ; preds = %101, %64
  %109 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %110 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %113 = load i32, i32* @FD, align 4
  %114 = call i32 @XGMAC_SET_BITS_LE(i32 %111, i32 %112, i32 %113, i32 1)
  %115 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %116 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %119 = load i32, i32* @CTXT, align 4
  %120 = call i32 @XGMAC_SET_BITS_LE(i32 %117, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %108
  %125 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %126 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %129 = load i32, i32* @OWN, align 4
  %130 = call i32 @XGMAC_SET_BITS_LE(i32 %127, i32 %128, i32 %129, i32 1)
  br label %131

131:                                              ; preds = %124, %108
  %132 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %133 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %136 = load i32, i32* @CPC, align 4
  %137 = call i32 @XGMAC_SET_BITS_LE(i32 %134, i32 %135, i32 %136, i32 0)
  %138 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %139 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %142 = load i32, i32* @FL, align 4
  %143 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %144 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @XGMAC_SET_BITS_LE(i32 %140, i32 %141, i32 %142, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %201, %131
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %154 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %204

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %160, i32 %161)
  store %struct.xgbe_ring_data* %162, %struct.xgbe_ring_data** %5, align 8
  %163 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %164 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %163, i32 0, i32 1
  %165 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %164, align 8
  store %struct.xgbe_ring_desc* %165, %struct.xgbe_ring_desc** %6, align 8
  %166 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %167 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @lower_32_bits(i32 %168)
  %170 = call i8* @cpu_to_le32(i32 %169)
  %171 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %172 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %174 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @upper_32_bits(i32 %175)
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %179 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %181 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %184 = load i32, i32* @HL_B1L, align 4
  %185 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %186 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @XGMAC_SET_BITS_LE(i32 %182, i32 %183, i32 %184, i32 %187)
  %189 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %190 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %193 = load i32, i32* @OWN, align 4
  %194 = call i32 @XGMAC_SET_BITS_LE(i32 %191, i32 %192, i32 %193, i32 1)
  %195 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %196 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %199 = load i32, i32* @CTXT, align 4
  %200 = call i32 @XGMAC_SET_BITS_LE(i32 %197, i32 %198, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %157
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %151

204:                                              ; preds = %151
  %205 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %206 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %209 = load i32, i32* @LD, align 4
  %210 = call i32 @XGMAC_SET_BITS_LE(i32 %207, i32 %208, i32 %209, i32 1)
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %215 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TX_NORMAL_DESC2, align 4
  %218 = load i32, i32* @IC, align 4
  %219 = call i32 @XGMAC_SET_BITS_LE(i32 %216, i32 %217, i32 %218, i32 1)
  br label %220

220:                                              ; preds = %213, %204
  %221 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %222 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %225 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  %227 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %7, align 8
  %228 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %231 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %234 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %237 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %240 = call i32 @bus_dmamap_sync(i32 %235, i32 %238, i32 %239)
  %241 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %242 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %245 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %248 = call i32 @bus_dmamap_sync(i32 %243, i32 %246, i32 %247)
  %249 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %249, i32 %250)
  store %struct.xgbe_ring_data* %251, %struct.xgbe_ring_data** %5, align 8
  %252 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %253 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %252, i32 0, i32 1
  %254 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %253, align 8
  store %struct.xgbe_ring_desc* %254, %struct.xgbe_ring_desc** %6, align 8
  %255 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %256 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @TX_NORMAL_DESC3, align 4
  %259 = load i32, i32* @OWN, align 4
  %260 = call i32 @XGMAC_SET_BITS_LE(i32 %257, i32 %258, i32 %259, i32 1)
  %261 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %262 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %265 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %268 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @bus_dmamap_sync(i32 %263, i32 %266, i32 %269)
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  %273 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %274 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %276 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %277 = call i32 @xgbe_tx_start_xmit(%struct.xgbe_channel* %275, %struct.xgbe_ring* %276)
  %278 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %279 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %283 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %284, 1
  %286 = and i32 %281, %285
  %287 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %288 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  %291 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %292 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %293, 1
  %295 = and i32 %290, %294
  %296 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %280, i32 %286, i32 %295)
  %297 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*, ...) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @XGMAC_SET_BITS_LE(i32, i32, i32, i32) #1

declare dso_local i64 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @xgbe_tx_start_xmit(%struct.xgbe_channel*, %struct.xgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
