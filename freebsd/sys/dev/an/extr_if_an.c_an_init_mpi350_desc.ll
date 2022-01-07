; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_mpi350_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_init_mpi350_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { %struct.TYPE_2__, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.an_command = type { i32, i8*, i32, i8* }
%struct.an_reply = type { i32, i64, i64, i8*, i64, i64, i64 }
%struct.an_card_rid_desc = type { i32, i64, i64, i8*, i64, i64, i64 }
%struct.an_card_rx_desc = type { i32, i64, i64, i8*, i64, i64, i64 }
%struct.an_card_tx_desc = type { i32, i64, i64, i8*, i64, i64, i64 }

@AN_RID_BUFFER_SIZE = common dso_local global i8* null, align 8
@AN_MAX_RX_DESC = common dso_local global i32 0, align 4
@AN_RX_BUFFER_SIZE = common dso_local global i8* null, align 8
@AN_MAX_TX_DESC = common dso_local global i32 0, align 4
@AN_TX_BUFFER_SIZE = common dso_local global i8* null, align 8
@AN_CMD_ALLOC_DESC = common dso_local global i8* null, align 8
@AN_DESCRIPTOR_RX = common dso_local global i32 0, align 4
@AN_RX_DESC_OFFSET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate RX descriptor\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AN_DESCRIPTOR_TX = common dso_local global i32 0, align 4
@AN_TX_DESC_OFFSET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to allocate TX descriptor\0A\00", align 1
@AN_DESCRIPTOR_HOSTRW = common dso_local global i32 0, align 4
@AN_HOST_DESC_OFFSET = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to allocate host descriptor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @an_init_mpi350_desc(%struct.an_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca %struct.an_command, align 8
  %5 = alloca %struct.an_reply, align 8
  %6 = alloca %struct.an_card_rid_desc, align 8
  %7 = alloca %struct.an_card_rx_desc, align 8
  %8 = alloca %struct.an_card_tx_desc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %3, align 8
  %11 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %12 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %11)
  %13 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %14 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %20 = load i8*, i8** @AN_RID_BUFFER_SIZE, align 8
  %21 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %22 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %21, i32 0, i32 0
  %23 = call i32 @an_dma_malloc(%struct.an_softc* %19, i8* %20, %struct.TYPE_2__* %22, i32 0)
  br label %24

24:                                               ; preds = %18, %1
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @AN_MAX_RX_DESC, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %31 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %41 = load i8*, i8** @AN_RX_BUFFER_SIZE, align 8
  %42 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %43 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = call i32 @an_dma_malloc(%struct.an_softc* %40, i8* %41, %struct.TYPE_2__* %47, i32 0)
  br label %49

49:                                               ; preds = %39, %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %25

53:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @AN_MAX_TX_DESC, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %60 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %58
  %69 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %70 = load i8*, i8** @AN_TX_BUFFER_SIZE, align 8
  %71 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %72 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = call i32 @an_dma_malloc(%struct.an_softc* %69, i8* %70, %struct.TYPE_2__* %76, i32 0)
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %54

82:                                               ; preds = %54
  %83 = call i32 @bzero(%struct.an_reply* %5, i32 56)
  %84 = load i8*, i8** @AN_CMD_ALLOC_DESC, align 8
  %85 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @AN_DESCRIPTOR_RX, align 4
  %87 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** @AN_RX_DESC_OFFSET, align 8
  %89 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* @AN_MAX_RX_DESC, align 4
  %91 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %93 = call i64 @an_cmd_struct(%struct.an_softc* %92, %struct.an_command* %4, %struct.an_reply* %5)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %97 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @if_printf(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  store i32 %100, i32* %2, align 4
  br label %272

101:                                              ; preds = %82
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %148, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @AN_MAX_RX_DESC, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %102
  %107 = bitcast %struct.an_card_rx_desc* %7 to %struct.an_reply*
  %108 = call i32 @bzero(%struct.an_reply* %107, i32 56)
  %109 = getelementptr inbounds %struct.an_card_rx_desc, %struct.an_card_rx_desc* %7, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i8*, i8** @AN_RX_BUFFER_SIZE, align 8
  %111 = getelementptr inbounds %struct.an_card_rx_desc, %struct.an_card_rx_desc* %7, i32 0, i32 3
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.an_card_rx_desc, %struct.an_card_rx_desc* %7, i32 0, i32 6
  store i64 0, i64* %112, align 8
  %113 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %114 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.an_card_rx_desc, %struct.an_card_rx_desc* %7, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %144, %106
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 14
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %128 = load i8*, i8** @AN_RX_DESC_OFFSET, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 56
  %132 = getelementptr i8, i8* %128, i64 %131
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %132, i64 %135
  %137 = bitcast %struct.an_card_rx_desc* %7 to i8*
  %138 = bitcast i8* %137 to i32*
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %127, i8* %136, i32 %142)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %122

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %102

151:                                              ; preds = %102
  %152 = call i32 @bzero(%struct.an_reply* %5, i32 56)
  %153 = load i8*, i8** @AN_CMD_ALLOC_DESC, align 8
  %154 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 3
  store i8* %153, i8** %154, align 8
  %155 = load i32, i32* @AN_DESCRIPTOR_TX, align 4
  %156 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load i8*, i8** @AN_TX_DESC_OFFSET, align 8
  %158 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 1
  store i8* %157, i8** %158, align 8
  %159 = load i32, i32* @AN_MAX_TX_DESC, align 4
  %160 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %162 = call i64 @an_cmd_struct(%struct.an_softc* %161, %struct.an_command* %4, %struct.an_reply* %5)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %151
  %165 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %166 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @if_printf(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @EIO, align 4
  store i32 %169, i32* %2, align 4
  br label %272

170:                                              ; preds = %151
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %217, %170
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @AN_MAX_TX_DESC, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %220

175:                                              ; preds = %171
  %176 = bitcast %struct.an_card_tx_desc* %8 to %struct.an_reply*
  %177 = call i32 @bzero(%struct.an_reply* %176, i32 56)
  %178 = getelementptr inbounds %struct.an_card_tx_desc, %struct.an_card_tx_desc* %8, i32 0, i32 5
  store i64 0, i64* %178, align 8
  %179 = getelementptr inbounds %struct.an_card_tx_desc, %struct.an_card_tx_desc* %8, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = getelementptr inbounds %struct.an_card_tx_desc, %struct.an_card_tx_desc* %8, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = getelementptr inbounds %struct.an_card_tx_desc, %struct.an_card_tx_desc* %8, i32 0, i32 3
  store i8* null, i8** %181, align 8
  %182 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %183 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.an_card_tx_desc, %struct.an_card_tx_desc* %8, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %213, %175
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %193, 14
  br i1 %194, label %195, label %216

195:                                              ; preds = %191
  %196 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %197 = load i8*, i8** @AN_TX_DESC_OFFSET, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 56
  %201 = getelementptr i8, i8* %197, i64 %200
  %202 = load i32, i32* %9, align 4
  %203 = mul nsw i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr i8, i8* %201, i64 %204
  %206 = bitcast %struct.an_card_tx_desc* %8 to i8*
  %207 = bitcast i8* %206 to i32*
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %196, i8* %205, i32 %211)
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %191

216:                                              ; preds = %191
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %171

220:                                              ; preds = %171
  %221 = call i32 @bzero(%struct.an_reply* %5, i32 56)
  %222 = load i8*, i8** @AN_CMD_ALLOC_DESC, align 8
  %223 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 3
  store i8* %222, i8** %223, align 8
  %224 = load i32, i32* @AN_DESCRIPTOR_HOSTRW, align 4
  %225 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 2
  store i32 %224, i32* %225, align 8
  %226 = load i8*, i8** @AN_HOST_DESC_OFFSET, align 8
  %227 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 1
  store i8* %226, i8** %227, align 8
  %228 = getelementptr inbounds %struct.an_command, %struct.an_command* %4, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %230 = call i64 @an_cmd_struct(%struct.an_softc* %229, %struct.an_command* %4, %struct.an_reply* %5)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %220
  %233 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %234 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @if_printf(i32 %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %237 = load i32, i32* @EIO, align 4
  store i32 %237, i32* %2, align 4
  br label %272

238:                                              ; preds = %220
  %239 = bitcast %struct.an_card_rid_desc* %6 to %struct.an_reply*
  %240 = call i32 @bzero(%struct.an_reply* %239, i32 56)
  %241 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 0
  store i32 1, i32* %241, align 8
  %242 = load i8*, i8** @AN_RID_BUFFER_SIZE, align 8
  %243 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 3
  store i8* %242, i8** %243, align 8
  %244 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 2
  store i64 0, i64* %244, align 8
  %245 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %246 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.an_card_rid_desc, %struct.an_card_rid_desc* %6, i32 0, i32 1
  store i64 %248, i64* %249, align 8
  store i32 0, i32* %9, align 4
  br label %250

250:                                              ; preds = %268, %238
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp ult i64 %252, 14
  br i1 %253, label %254, label %271

254:                                              ; preds = %250
  %255 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %256 = load i8*, i8** @AN_HOST_DESC_OFFSET, align 8
  %257 = load i32, i32* %9, align 4
  %258 = mul nsw i32 %257, 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr i8, i8* %256, i64 %259
  %261 = bitcast %struct.an_card_rid_desc* %6 to i8*
  %262 = bitcast i8* %261 to i32*
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %255, i8* %260, i32 %266)
  br label %268

268:                                              ; preds = %254
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %250

271:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %272

272:                                              ; preds = %271, %232, %164, %95
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @an_dma_malloc(%struct.an_softc*, i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @bzero(%struct.an_reply*, i32) #1

declare dso_local i64 @an_cmd_struct(%struct.an_softc*, %struct.an_command*, %struct.an_reply*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
