; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_start_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_start_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8, i8 }
%struct.TYPE_6__ = type { i32 }

@IER1_RX_DMERE_1 = common dso_local global i32 0, align 4
@IER1_RX_DME_1 = common dso_local global i32 0, align 4
@IER1_RX_DMERE_0 = common dso_local global i32 0, align 4
@IER1_RX_DME_0 = common dso_local global i32 0, align 4
@M_ASYNC = common dso_local global i64 0, align 8
@IER0_RX_INTE_1 = common dso_local global i32 0, align 4
@IER0_RX_INTE_0 = common dso_local global i32 0, align 4
@IE0_RX_INTE = common dso_local global i32 0, align 4
@IE2_OVRNE = common dso_local global i32 0, align 4
@IE2_ASYNC_FRMEE = common dso_local global i32 0, align 4
@IE2_ASYNC_PEE = common dso_local global i32 0, align 4
@IER0_RX_RDYE_1 = common dso_local global i32 0, align 4
@IER0_RX_RDYE_0 = common dso_local global i32 0, align 4
@IE0_RX_RDYE = common dso_local global i32 0, align 4
@TEPR_64 = common dso_local global i8 0, align 1
@TCSR_ENABLE = common dso_local global i8 0, align 1
@TCSR_INTR = common dso_local global i8 0, align 1
@IER2_RX_TME_1 = common dso_local global i32 0, align 4
@IER2_RX_TME_0 = common dso_local global i32 0, align 4
@DCR_ABORT = common dso_local global i8 0, align 1
@DIR_EOTE = common dso_local global i8 0, align 1
@DIR_CHAIN_EOME = common dso_local global i8 0, align 1
@DIR_CHAIN_BOFE = common dso_local global i8 0, align 1
@DIR_CHAIN_COFE = common dso_local global i8 0, align 1
@DSR_DMA_ENABLE = common dso_local global i8 0, align 1
@CMD_RX_ENABLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_start_receiver(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IER0(i32 %22)
  %24 = call i32 @inb(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IER1(i32 %29)
  %31 = call i32 @inb(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IER2(i32 %36)
  %38 = call i32 @inb(i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @inb(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @inb(i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %6
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @IER1_RX_DMERE_1, align 4
  %56 = load i32, i32* @IER1_RX_DME_1, align 4
  %57 = or i32 %55, %56
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @IER1_RX_DMERE_0, align 4
  %60 = load i32, i32* @IER1_RX_DME_0, align 4
  %61 = or i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @M_ASYNC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @IER0_RX_INTE_1, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @IER0_RX_INTE_0, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @IE0_RX_INTE, align 4
  %85 = load i32, i32* %16, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* @IE2_OVRNE, align 4
  %88 = load i32, i32* @IE2_ASYNC_FRMEE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IE2_ASYNC_PEE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %17, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %80, %62
  br label %117

95:                                               ; preds = %6
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @IER0_RX_INTE_1, align 4
  %102 = load i32, i32* @IER0_RX_RDYE_1, align 4
  %103 = or i32 %101, %102
  br label %108

104:                                              ; preds = %95
  %105 = load i32, i32* @IER0_RX_INTE_0, align 4
  %106 = load i32, i32* @IER0_RX_RDYE_0, align 4
  %107 = or i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32 [ %103, %100 ], [ %107, %104 ]
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* @IE0_RX_INTE, align 4
  %113 = load i32, i32* @IE0_RX_RDYE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %16, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %108, %94
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = load i8, i8* @TEPR_64, align 1
  %126 = call i32 @outb(i32 %124, i8 zeroext %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @outw(i32 %130, i32 160)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 11
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @outw(i32 %135, i32 0)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = load i8, i8* @TCSR_ENABLE, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @TCSR_INTR, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = trunc i32 %145 to i8
  %147 = call i32 @outb(i32 %140, i8 zeroext %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %120
  %153 = load i32, i32* @IER2_RX_TME_1, align 4
  br label %156

154:                                              ; preds = %120
  %155 = load i32, i32* @IER2_RX_TME_0, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load i32, i32* %15, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %156, %117
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @IER0(i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = trunc i32 %167 to i8
  %169 = call i32 @outb(i32 %166, i8 zeroext %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @IER1(i32 %174)
  %176 = load i32, i32* %14, align 4
  %177 = trunc i32 %176 to i8
  %178 = call i32 @outb(i32 %175, i8 zeroext %177)
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 7
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @IER2(i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = trunc i32 %185 to i8
  %187 = call i32 @outb(i32 %184, i8 zeroext %186)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = trunc i32 %191 to i8
  %193 = call i32 @outb(i32 %190, i8 zeroext %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %17, align 4
  %198 = trunc i32 %197 to i8
  %199 = call i32 @outb(i32 %196, i8 zeroext %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %160
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i8, i8* %208, align 4
  %210 = zext i8 %209 to i32
  br label %217

211:                                              ; preds = %160
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i32 [ %210, %205 ], [ %216, %211 ]
  %219 = trunc i32 %218 to i8
  %220 = call i32 @outb(i32 %202, i8 zeroext %219)
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %316

223:                                              ; preds = %217
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = load i8, i8* @DCR_ABORT, align 1
  %229 = call i32 @outb(i32 %227, i8 zeroext %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @M_ASYNC, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %264

235:                                              ; preds = %223
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = load i64, i64* %9, align 8
  %241 = lshr i64 %240, 16
  %242 = trunc i64 %241 to i8
  %243 = call i32 @outb(i32 %239, i8 zeroext %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = load i64, i64* %9, align 8
  %249 = trunc i64 %248 to i16
  %250 = zext i16 %249 to i32
  %251 = call i32 @outw(i32 %247, i32 %250)
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @outw(i32 %255, i32 %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i8, i8* @DIR_EOTE, align 1
  %263 = call i32 @outb(i32 %261, i8 zeroext %262)
  br label %309

264:                                              ; preds = %223
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load i64, i64* %11, align 8
  %270 = lshr i64 %269, 16
  %271 = trunc i64 %270 to i8
  %272 = call i32 @outb(i32 %268, i8 zeroext %271)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load i64, i64* %12, align 8
  %278 = trunc i64 %277 to i16
  %279 = zext i16 %278 to i32
  %280 = call i32 @outw(i32 %276, i32 %279)
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load i64, i64* %11, align 8
  %286 = trunc i64 %285 to i16
  %287 = zext i16 %286 to i32
  %288 = call i32 @outw(i32 %284, i32 %287)
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @outw(i32 %292, i32 %293)
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i8, i8* @DIR_CHAIN_EOME, align 1
  %300 = zext i8 %299 to i32
  %301 = load i8, i8* @DIR_CHAIN_BOFE, align 1
  %302 = zext i8 %301 to i32
  %303 = or i32 %300, %302
  %304 = load i8, i8* @DIR_CHAIN_COFE, align 1
  %305 = zext i8 %304 to i32
  %306 = or i32 %303, %305
  %307 = trunc i32 %306 to i8
  %308 = call i32 @outb(i32 %298, i8 zeroext %307)
  br label %309

309:                                              ; preds = %264, %235
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i8, i8* @DSR_DMA_ENABLE, align 1
  %315 = call i32 @outb(i32 %313, i8 zeroext %314)
  br label %316

316:                                              ; preds = %309, %217
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i8, i8* @CMD_RX_ENABLE, align 1
  %321 = call i32 @outb(i32 %319, i8 zeroext %320)
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @IER0(i32) #1

declare dso_local i32 @IER1(i32) #1

declare dso_local i32 @IER2(i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
