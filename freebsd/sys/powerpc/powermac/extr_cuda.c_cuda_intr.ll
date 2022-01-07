; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32, i32, i64, i32*, i32, i64, i32, i32, i32, i8** }
%struct.cuda_packet = type { i32, i32, i8* }

@vIFR = common dso_local global i32 0, align 4
@vSR_INT = common dso_local global i32 0, align 4
@vSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"input overflow\0A\00", align 1
@pkt_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cuda_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cuda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cuda_packet*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call %struct.cuda_softc* @device_get_softc(i64 %13)
  store %struct.cuda_softc* %14, %struct.cuda_softc** %4, align 8
  %15 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %16 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %15, i32 0, i32 6
  %17 = call i32 @mtx_lock(i32* %16)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %19 = load i32, i32* @vIFR, align 4
  %20 = call i8* @cuda_read_reg(%struct.cuda_softc* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @vSR_INT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @vSR_INT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %28, i32 0, i32 6
  %30 = call i32 @mtx_unlock(i32* %29)
  br label %307

31:                                               ; preds = %1
  %32 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %33 = load i32, i32* @vIFR, align 4
  %34 = call i32 @cuda_write_reg(%struct.cuda_softc* %32, i32 %33, i32 127)
  br label %35

35:                                               ; preds = %230, %186, %31
  %36 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %277 [
    i32 131, label %39
    i32 130, label %85
    i32 128, label %218
    i32 129, label %276
  ]

39:                                               ; preds = %35
  %40 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %41 = load i32, i32* @vSR, align 4
  %42 = call i8* @cuda_read_reg(%struct.cuda_softc* %40, i32 %41)
  %43 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %44 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %43, i32 0, i32 9
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %42, i8** %46, align 8
  %47 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %48 = call i32 @cuda_intr_state(%struct.cuda_softc* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %39
  %51 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %52 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = call i32 @DELAY(i32 150)
  %57 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %58 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %57, i32 0, i32 0
  store i32 128, i32* %58, align 8
  %59 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %60 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %62 = call i32 @cuda_out(%struct.cuda_softc* %61)
  %63 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %64 = load i32, i32* @vSR, align 4
  %65 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cuda_write_reg(%struct.cuda_softc* %63, i32 %64, i32 %69)
  %71 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %72 = call i32 @cuda_ack_off(%struct.cuda_softc* %71)
  %73 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %74 = call i32 @cuda_tip(%struct.cuda_softc* %73)
  br label %75

75:                                               ; preds = %55, %50
  br label %278

76:                                               ; preds = %39
  %77 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %78 = call i32 @cuda_in(%struct.cuda_softc* %77)
  %79 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %80 = call i32 @cuda_tip(%struct.cuda_softc* %79)
  %81 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %81, i32 0, i32 4
  store i32 1, i32* %82, align 8
  %83 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %84 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %83, i32 0, i32 0
  store i32 130, i32* %84, align 8
  br label %278

85:                                               ; preds = %35
  %86 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %87 = load i32, i32* @vSR, align 4
  %88 = call i8* @cuda_read_reg(%struct.cuda_softc* %86, i32 %87)
  %89 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %90 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %89, i32 0, i32 9
  %91 = load i8**, i8*** %90, align 8
  %92 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %93 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95
  store i8* %88, i8** %96, align 8
  store i32 0, i32* %6, align 4
  %97 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %98 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 255
  br i1 %100, label %101, label %110

101:                                              ; preds = %85
  %102 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %103 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 256
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @device_printf(i64 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %101
  br label %115

110:                                              ; preds = %85
  %111 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %112 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %110, %109
  %116 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %117 = call i32 @cuda_intr_state(%struct.cuda_softc* %116)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %6, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %122 = call i32 @cuda_toggle_ack(%struct.cuda_softc* %121)
  br label %123

123:                                              ; preds = %120, %119
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %217

126:                                              ; preds = %123
  %127 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %128 = call i32 @cuda_idle(%struct.cuda_softc* %127)
  %129 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %129, i32 0, i32 8
  %131 = call %struct.cuda_packet* @STAILQ_FIRST(i32* %130)
  store %struct.cuda_packet* %131, %struct.cuda_packet** %10, align 8
  %132 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %133 = icmp ne %struct.cuda_packet* %132, null
  br i1 %133, label %134, label %168

134:                                              ; preds = %126
  %135 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %136 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, 2
  %139 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %140 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %142 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %141, i32 0, i32 9
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %147 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %149 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %152 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %151, i32 0, i32 9
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  %155 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %156 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memcpy(i32 %150, i8** %154, i32 %157)
  %159 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %160 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %159, i32 0, i32 8
  %161 = load i32, i32* @pkt_q, align 4
  %162 = call i32 @STAILQ_REMOVE_HEAD(i32* %160, i32 %161)
  %163 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %164 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %163, i32 0, i32 7
  %165 = load %struct.cuda_packet*, %struct.cuda_packet** %10, align 8
  %166 = load i32, i32* @pkt_q, align 4
  %167 = call i32 @STAILQ_INSERT_TAIL(i32* %164, %struct.cuda_packet* %165, i32 %166)
  store i32 1, i32* %8, align 4
  br label %168

168:                                              ; preds = %134, %126
  %169 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %170 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %169, i32 0, i32 0
  store i32 131, i32* %170, align 8
  %171 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %172 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %171, i32 0, i32 4
  store i32 0, i32* %172, align 8
  %173 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %174 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %216

177:                                              ; preds = %168
  %178 = call i32 @DELAY(i32 1500)
  %179 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %180 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %179, i32 0, i32 2
  store i64 0, i64* %180, align 8
  %181 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %182 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %181, i32 0, i32 0
  store i32 128, i32* %182, align 8
  %183 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %184 = call i32 @cuda_intr_state(%struct.cuda_softc* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %177
  %187 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %188 = call i32 @cuda_in(%struct.cuda_softc* %187)
  %189 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %190 = call i32 @cuda_idle(%struct.cuda_softc* %189)
  %191 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %192 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %191, i32 0, i32 2
  store i64 0, i64* %192, align 8
  %193 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %194 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %193, i32 0, i32 0
  store i32 131, i32* %194, align 8
  %195 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %196 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %195, i32 0, i32 4
  store i32 0, i32* %196, align 8
  %197 = call i32 @DELAY(i32 150)
  br label %35

198:                                              ; preds = %177
  %199 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %200 = call i32 @cuda_out(%struct.cuda_softc* %199)
  %201 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %202 = load i32, i32* @vSR, align 4
  %203 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %204 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %207 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @cuda_write_reg(%struct.cuda_softc* %201, i32 %202, i32 %210)
  %212 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %213 = call i32 @cuda_ack_off(%struct.cuda_softc* %212)
  %214 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %215 = call i32 @cuda_tip(%struct.cuda_softc* %214)
  br label %216

216:                                              ; preds = %198, %168
  br label %217

217:                                              ; preds = %216, %123
  br label %278

218:                                              ; preds = %35
  %219 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %220 = load i32, i32* @vSR, align 4
  %221 = call i8* @cuda_read_reg(%struct.cuda_softc* %219, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %5, align 4
  %223 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %224 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %228 = call i32 @cuda_intr_state(%struct.cuda_softc* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %218
  %231 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %232 = call i32 @cuda_in(%struct.cuda_softc* %231)
  %233 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %234 = call i32 @cuda_idle(%struct.cuda_softc* %233)
  %235 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %236 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %235, i32 0, i32 2
  store i64 0, i64* %236, align 8
  %237 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %238 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %237, i32 0, i32 0
  store i32 131, i32* %238, align 8
  %239 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %240 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %239, i32 0, i32 4
  store i32 0, i32* %240, align 8
  %241 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %242 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %241, i32 0, i32 1
  store i32 1, i32* %242, align 4
  %243 = call i32 @DELAY(i32 150)
  br label %35

244:                                              ; preds = %218
  %245 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %246 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %249 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %247, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %244
  %253 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %254 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %253, i32 0, i32 1
  store i32 0, i32* %254, align 4
  %255 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %256 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %255, i32 0, i32 0
  store i32 131, i32* %256, align 8
  %257 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %258 = call i32 @cuda_in(%struct.cuda_softc* %257)
  %259 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %260 = call i32 @cuda_idle(%struct.cuda_softc* %259)
  br label %275

261:                                              ; preds = %244
  %262 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %263 = load i32, i32* @vSR, align 4
  %264 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %265 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %268 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @cuda_write_reg(%struct.cuda_softc* %262, i32 %263, i32 %271)
  %273 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %274 = call i32 @cuda_toggle_ack(%struct.cuda_softc* %273)
  br label %275

275:                                              ; preds = %261, %252
  br label %278

276:                                              ; preds = %35
  br label %278

277:                                              ; preds = %35
  br label %278

278:                                              ; preds = %277, %276, %275, %217, %76, %75
  %279 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %280 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %279, i32 0, i32 6
  %281 = call i32 @mtx_unlock(i32* %280)
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %286 = call i32 @cuda_send_inbound(%struct.cuda_softc* %285)
  br label %287

287:                                              ; preds = %284, %278
  %288 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %289 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %288, i32 0, i32 6
  %290 = call i32 @mtx_lock(i32* %289)
  %291 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %292 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %287
  %296 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %297 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 131
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %302 = call i32 @cuda_send_outbound(%struct.cuda_softc* %301)
  br label %303

303:                                              ; preds = %300, %295, %287
  %304 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %305 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %304, i32 0, i32 6
  %306 = call i32 @mtx_unlock(i32* %305)
  br label %307

307:                                              ; preds = %303, %27
  ret void
}

declare dso_local %struct.cuda_softc* @device_get_softc(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @cuda_read_reg(%struct.cuda_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cuda_write_reg(%struct.cuda_softc*, i32, i32) #1

declare dso_local i32 @cuda_intr_state(%struct.cuda_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cuda_out(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_ack_off(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_tip(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_in(%struct.cuda_softc*) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @cuda_toggle_ack(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_idle(%struct.cuda_softc*) #1

declare dso_local %struct.cuda_packet* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cuda_packet*, i32) #1

declare dso_local i32 @cuda_send_inbound(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_send_outbound(%struct.cuda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
