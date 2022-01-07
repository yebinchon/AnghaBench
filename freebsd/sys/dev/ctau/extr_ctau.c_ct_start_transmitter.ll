; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_start_transmitter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_start_transmitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@M_ASYNC = common dso_local global i64 0, align 8
@IER0_TX_INTE_1 = common dso_local global i32 0, align 4
@IER0_TX_INTE_0 = common dso_local global i32 0, align 4
@IE0_TX_INTE = common dso_local global i32 0, align 4
@IE1_HDLC_UDRNE = common dso_local global i32 0, align 4
@IER1_TX_DMERE_1 = common dso_local global i32 0, align 4
@IER1_TX_DME_1 = common dso_local global i32 0, align 4
@IER1_TX_DMERE_0 = common dso_local global i32 0, align 4
@IER1_TX_DME_0 = common dso_local global i32 0, align 4
@IER0_TX_RDYE_1 = common dso_local global i32 0, align 4
@IER0_TX_RDYE_0 = common dso_local global i32 0, align 4
@IE0_TX_RDYE = common dso_local global i32 0, align 4
@DCR_ABORT = common dso_local global i32 0, align 4
@DIR_EOTE = common dso_local global i32 0, align 4
@DIR_CHAIN_BOFE = common dso_local global i32 0, align 4
@DIR_CHAIN_COFE = common dso_local global i32 0, align 4
@CMD_TX_ENABLE = common dso_local global i32 0, align 4
@B_TAU_G703 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_start_transmitter(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IER0(i32 %21)
  %23 = call i32 @inb(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IER1(i32 %28)
  %30 = call i32 @inb(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @inb(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @inb(i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @M_ASYNC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @IER0_TX_INTE_1, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @IER0_TX_INTE_0, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @IE0_TX_INTE, align 4
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @IE1_HDLC_UDRNE, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %53, %6
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @IER1_TX_DMERE_1, align 4
  %73 = load i32, i32* @IER1_TX_DME_1, align 4
  %74 = or i32 %72, %73
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @IER1_TX_DMERE_0, align 4
  %77 = load i32, i32* @IER1_TX_DME_0, align 4
  %78 = or i32 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %74, %71 ], [ %78, %75 ]
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %99

83:                                               ; preds = %63
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @IER0_TX_RDYE_1, align 4
  br label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @IER0_TX_RDYE_0, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @IE0_TX_RDYE, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %92, %79
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @IER0(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @outb(i32 %105, i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @IER1(i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @outb(i32 %113, i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @outb(i32 %118, i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @outb(i32 %123, i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %99
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  br label %141

136:                                              ; preds = %99
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i32 [ %135, %131 ], [ %140, %136 ]
  %143 = call i32 @outb(i32 %128, i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  br label %159

154:                                              ; preds = %141
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i32 [ %153, %149 ], [ %158, %154 ]
  %161 = call i32 @outb(i32 %146, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %239

164:                                              ; preds = %159
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DCR_ABORT, align 4
  %170 = call i32 @outb(i32 %168, i32 %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @M_ASYNC, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %206

176:                                              ; preds = %164
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* %9, align 8
  %182 = lshr i64 %181, 16
  %183 = trunc i64 %182 to i8
  %184 = zext i8 %183 to i32
  %185 = call i32 @outb(i32 %180, i32 %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %9, align 8
  %191 = trunc i64 %190 to i16
  %192 = call i32 @outw(i32 %189, i16 zeroext %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %10, align 4
  %198 = trunc i32 %197 to i16
  %199 = call i32 @outw(i32 %196, i16 zeroext %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DIR_EOTE, align 4
  %205 = call i32 @outb(i32 %203, i32 %204)
  br label %238

206:                                              ; preds = %164
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* %11, align 8
  %212 = lshr i64 %211, 16
  %213 = trunc i64 %212 to i8
  %214 = zext i8 %213 to i32
  %215 = call i32 @outb(i32 %210, i32 %214)
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* %12, align 8
  %221 = trunc i64 %220 to i16
  %222 = call i32 @outw(i32 %219, i16 zeroext %221)
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i64, i64* %11, align 8
  %228 = trunc i64 %227 to i16
  %229 = call i32 @outw(i32 %226, i16 zeroext %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DIR_CHAIN_BOFE, align 4
  %235 = load i32, i32* @DIR_CHAIN_COFE, align 4
  %236 = or i32 %234, %235
  %237 = call i32 @outb(i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %206, %176
  br label %239

239:                                              ; preds = %238, %159
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @CMD_TX_ENABLE, align 4
  %244 = call i32 @outb(i32 %242, i32 %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @B_TAU_G703, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %239
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @GERR(i32 %257)
  %259 = call i32 @outb(i32 %258, i32 255)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @GLDR(i32 %264)
  %266 = call i32 @outb(i32 %265, i32 255)
  br label %267

267:                                              ; preds = %252, %239
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @IER0(i32) #1

declare dso_local i32 @IER1(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i16 zeroext) #1

declare dso_local i32 @GERR(i32) #1

declare dso_local i32 @GLDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
