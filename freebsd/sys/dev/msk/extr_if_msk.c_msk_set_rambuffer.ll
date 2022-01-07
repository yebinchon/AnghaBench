; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_set_rambuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_set_rambuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i64, i32, i32, %struct.msk_softc* }
%struct.msk_softc = type { i32*, i32*, i64, i32*, i32* }

@MSK_FLAG_RAMBUF = common dso_local global i32 0, align 4
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_CLR = common dso_local global i32 0, align 4
@RB_START = common dso_local global i32 0, align 4
@RB_END = common dso_local global i32 0, align 4
@RB_WP = common dso_local global i32 0, align 4
@RB_RP = common dso_local global i32 0, align 4
@MSK_RB_ULPP = common dso_local global i32 0, align 4
@MSK_RB_LLPP_B = common dso_local global i32 0, align 4
@MSK_MIN_RXQ_SIZE = common dso_local global i64 0, align 8
@MSK_RB_LLPP_S = common dso_local global i32 0, align 4
@RB_RX_UTPP = common dso_local global i32 0, align 4
@RB_RX_LTPP = common dso_local global i32 0, align 4
@RB_ENA_OP_MD = common dso_local global i32 0, align 4
@RB_ENA_STFWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_set_rambuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_set_rambuffer(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 4
  %8 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  store %struct.msk_softc* %8, %struct.msk_softc** %3, align 8
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %10 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MSK_FLAG_RAMBUF, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %270

16:                                               ; preds = %1
  %17 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RB_CTRL, align 4
  %22 = call i32 @RB_ADDR(i32 %20, i32 %21)
  %23 = load i32, i32* @RB_RST_CLR, align 4
  %24 = call i32 @CSR_WRITE_1(%struct.msk_softc* %17, i32 %22, i32 %23)
  %25 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %26 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %27 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RB_START, align 4
  %30 = call i32 @RB_ADDR(i32 %28, i32 %29)
  %31 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %35 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 8
  %40 = call i32 @CSR_WRITE_4(%struct.msk_softc* %25, i32 %30, i32 %39)
  %41 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %42 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %43 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RB_END, align 4
  %46 = call i32 @RB_ADDR(i32 %44, i32 %45)
  %47 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %48 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 8
  %56 = call i32 @CSR_WRITE_4(%struct.msk_softc* %41, i32 %46, i32 %55)
  %57 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %59 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RB_WP, align 4
  %62 = call i32 @RB_ADDR(i32 %60, i32 %61)
  %63 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %64 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %67 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 8
  %72 = call i32 @CSR_WRITE_4(%struct.msk_softc* %57, i32 %62, i32 %71)
  %73 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %74 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %75 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RB_RP, align 4
  %78 = call i32 @RB_ADDR(i32 %76, i32 %77)
  %79 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %80 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %83 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 8
  %88 = call i32 @CSR_WRITE_4(%struct.msk_softc* %73, i32 %78, i32 %87)
  %89 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %90 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %93 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  %98 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %99 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %97, %105
  %107 = load i32, i32* @MSK_RB_ULPP, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sdiv i32 %108, 8
  store i32 %109, i32* %5, align 4
  %110 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %111 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %114 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %120 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %123 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %118, %126
  %128 = load i32, i32* @MSK_RB_LLPP_B, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sdiv i32 %129, 8
  store i32 %130, i32* %4, align 4
  %131 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %132 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MSK_MIN_RXQ_SIZE, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %16
  %137 = load i32, i32* @MSK_RB_LLPP_B, align 4
  %138 = load i32, i32* @MSK_RB_LLPP_S, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sdiv i32 %139, 8
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %136, %16
  %144 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %145 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %146 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RB_RX_UTPP, align 4
  %149 = call i32 @RB_ADDR(i32 %147, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @CSR_WRITE_4(%struct.msk_softc* %144, i32 %149, i32 %150)
  %152 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %153 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %154 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RB_RX_LTPP, align 4
  %157 = call i32 @RB_ADDR(i32 %155, i32 %156)
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @CSR_WRITE_4(%struct.msk_softc* %152, i32 %157, i32 %158)
  %160 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %161 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %162 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RB_CTRL, align 4
  %165 = call i32 @RB_ADDR(i32 %163, i32 %164)
  %166 = load i32, i32* @RB_ENA_OP_MD, align 4
  %167 = call i32 @CSR_WRITE_1(%struct.msk_softc* %160, i32 %165, i32 %166)
  %168 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %169 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %170 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RB_CTRL, align 4
  %173 = call i32 @RB_ADDR(i32 %171, i32 %172)
  %174 = call i32 @CSR_READ_1(%struct.msk_softc* %168, i32 %173)
  %175 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %176 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %177 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @RB_CTRL, align 4
  %180 = call i32 @RB_ADDR(i32 %178, i32 %179)
  %181 = load i32, i32* @RB_RST_CLR, align 4
  %182 = call i32 @CSR_WRITE_1(%struct.msk_softc* %175, i32 %180, i32 %181)
  %183 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %184 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %185 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @RB_START, align 4
  %188 = call i32 @RB_ADDR(i32 %186, i32 %187)
  %189 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %190 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %193 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %196, 8
  %198 = call i32 @CSR_WRITE_4(%struct.msk_softc* %183, i32 %188, i32 %197)
  %199 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %200 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %201 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @RB_END, align 4
  %204 = call i32 @RB_ADDR(i32 %202, i32 %203)
  %205 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %206 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %209 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %212, 8
  %214 = call i32 @CSR_WRITE_4(%struct.msk_softc* %199, i32 %204, i32 %213)
  %215 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %216 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %217 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @RB_WP, align 4
  %220 = call i32 @RB_ADDR(i32 %218, i32 %219)
  %221 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %222 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %225 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sdiv i32 %228, 8
  %230 = call i32 @CSR_WRITE_4(%struct.msk_softc* %215, i32 %220, i32 %229)
  %231 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %232 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %233 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @RB_RP, align 4
  %236 = call i32 @RB_ADDR(i32 %234, i32 %235)
  %237 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %238 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %241 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %244, 8
  %246 = call i32 @CSR_WRITE_4(%struct.msk_softc* %231, i32 %236, i32 %245)
  %247 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %248 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %249 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @RB_CTRL, align 4
  %252 = call i32 @RB_ADDR(i32 %250, i32 %251)
  %253 = load i32, i32* @RB_ENA_STFWD, align 4
  %254 = call i32 @CSR_WRITE_1(%struct.msk_softc* %247, i32 %252, i32 %253)
  %255 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %256 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %257 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @RB_CTRL, align 4
  %260 = call i32 @RB_ADDR(i32 %258, i32 %259)
  %261 = load i32, i32* @RB_ENA_OP_MD, align 4
  %262 = call i32 @CSR_WRITE_1(%struct.msk_softc* %255, i32 %260, i32 %261)
  %263 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %264 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %265 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @RB_CTRL, align 4
  %268 = call i32 @RB_ADDR(i32 %266, i32 %267)
  %269 = call i32 @CSR_READ_1(%struct.msk_softc* %263, i32 %268)
  br label %270

270:                                              ; preds = %143, %15
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.msk_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
