; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32*, i32, i32*, i32*, %struct.ste_chain_onefrag*, i32*, %struct.ste_chain* }
%struct.ste_chain_onefrag = type { i32* }
%struct.ste_chain = type { i32* }
%struct.TYPE_3__ = type { i64, i64, i32*, i32* }

@STE_TX_LIST_CNT = common dso_local global i32 0, align 4
@STE_RX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_dma_free(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ste_chain*, align 8
  %4 = alloca %struct.ste_chain_onefrag*, align 8
  %5 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %6 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  %20 = load %struct.ste_chain*, %struct.ste_chain** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %20, i64 %22
  store %struct.ste_chain* %23, %struct.ste_chain** %3, align 8
  %24 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %25 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %34 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamap_destroy(i32* %32, i32* %35)
  %37 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %38 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_dma_tag_destroy(i32* %47)
  %49 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %1
  %53 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %118

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  %67 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %67, i64 %69
  store %struct.ste_chain_onefrag* %70, %struct.ste_chain_onefrag** %4, align 8
  %71 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %72 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %81 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_dmamap_destroy(i32* %79, i32* %82)
  %84 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %85 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %75, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %59

90:                                               ; preds = %59
  %91 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_dmamap_destroy(i32* %100, i32* %104)
  %106 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %96, %90
  %110 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_dma_tag_destroy(i32* %113)
  %115 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %109, %52
  %119 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %120 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %175

124:                                              ; preds = %118
  %125 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %136 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bus_dmamap_unload(i32* %134, i32 %138)
  br label %140

140:                                              ; preds = %130, %124
  %141 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %152 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %156 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @bus_dmamem_free(i32* %150, i32* %154, i32 %158)
  br label %160

160:                                              ; preds = %146, %140
  %161 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %162 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  store i32* null, i32** %163, align 8
  %164 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %165 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  %167 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @bus_dma_tag_destroy(i32* %170)
  %172 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %160, %118
  %176 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %177 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %232

181:                                              ; preds = %175
  %182 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %183 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %189 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %193 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @bus_dmamap_unload(i32* %191, i32 %195)
  br label %197

197:                                              ; preds = %187, %181
  %198 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %199 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %205 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %209 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %213 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bus_dmamem_free(i32* %207, i32* %211, i32 %215)
  br label %217

217:                                              ; preds = %203, %197
  %218 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %219 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  store i32* null, i32** %220, align 8
  %221 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %222 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store i64 0, i64* %223, align 8
  %224 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %225 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @bus_dma_tag_destroy(i32* %227)
  %229 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %230 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %217, %175
  %233 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %234 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %240 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @bus_dma_tag_destroy(i32* %242)
  %244 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %245 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %238, %232
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
