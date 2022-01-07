; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { i32, i32, i64, i32, i32, i32, i64, %struct.bwn_mac* }
%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_dma }
%struct.bwn_dma = type { i32, %struct.bhnd_dma_translation }
%struct.bhnd_dma_translation = type { i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@BHND_DMA_ADDR_64BIT = common dso_local global i64 0, align 8
@BWN_DMA64_TXENABLE = common dso_local global i32 0, align 4
@BWN_DMA64_TXPARITY_DISABLE = common dso_local global i32 0, align 4
@BWN_DMA64_TXADDREXT_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA64_TXADDREXT_MASK = common dso_local global i32 0, align 4
@BWN_DMA64_TXCTL = common dso_local global i32 0, align 4
@BWN_DMA64_TXRINGLO = common dso_local global i32 0, align 4
@BWN_DMA64_TXRINGHI = common dso_local global i32 0, align 4
@BWN_DMA32_TXENABLE = common dso_local global i32 0, align 4
@BWN_DMA32_TXPARITY_DISABLE = common dso_local global i32 0, align 4
@BWN_DMA32_TXADDREXT_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA32_TXADDREXT_MASK = common dso_local global i32 0, align 4
@BWN_DMA32_TXCTL = common dso_local global i32 0, align 4
@BWN_DMA32_TXRING = common dso_local global i32 0, align 4
@BWN_DMA64_RXFROFF_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA64_RXENABLE = common dso_local global i32 0, align 4
@BWN_DMA64_RXPARITY_DISABLE = common dso_local global i32 0, align 4
@BWN_DMA64_RXADDREXT_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA64_RXADDREXT_MASK = common dso_local global i32 0, align 4
@BWN_DMA64_RXCTL = common dso_local global i32 0, align 4
@BWN_DMA64_RXRINGLO = common dso_local global i32 0, align 4
@BWN_DMA64_RXRINGHI = common dso_local global i32 0, align 4
@BWN_DMA64_RXINDEX = common dso_local global i32 0, align 4
@BWN_DMA32_RXFROFF_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA32_RXENABLE = common dso_local global i32 0, align 4
@BWN_DMA32_RXPARITY_DISABLE = common dso_local global i32 0, align 4
@BWN_DMA32_RXADDREXT_SHIFT = common dso_local global i32 0, align 4
@BWN_DMA32_RXADDREXT_MASK = common dso_local global i32 0, align 4
@BWN_DMA32_RXCTL = common dso_local global i32 0, align 4
@BWN_DMA32_RXRING = common dso_local global i32 0, align 4
@BWN_DMA32_RXINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_dma_ring*)* @bwn_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_setup(%struct.bwn_dma_ring* %0) #0 {
  %2 = alloca %struct.bwn_dma_ring*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_dma*, align 8
  %5 = alloca %struct.bhnd_dma_translation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwn_dma_ring* %0, %struct.bwn_dma_ring** %2, align 8
  %12 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %13 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %12, i32 0, i32 7
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %13, align 8
  store %struct.bwn_mac* %14, %struct.bwn_mac** %3, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.bwn_dma* %17, %struct.bwn_dma** %4, align 8
  %18 = load %struct.bwn_dma*, %struct.bwn_dma** %4, align 8
  %19 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %18, i32 0, i32 1
  store %struct.bhnd_dma_translation* %19, %struct.bhnd_dma_translation** %5, align 8
  %20 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %21 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %5, align 8
  %25 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %5, align 8
  %29 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UINT32_MAX, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.bhnd_dma_translation*, %struct.bhnd_dma_translation** %5, align 8
  %39 = getelementptr inbounds %struct.bhnd_dma_translation, %struct.bhnd_dma_translation* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = load %struct.bwn_dma*, %struct.bwn_dma** %4, align 8
  %43 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %47 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %1
  %51 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %52 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %51, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %54 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BHND_DMA_ADDR_64BIT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load i32, i32* @BWN_DMA64_TXENABLE, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @BWN_DMA64_TXPARITY_DISABLE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BWN_DMA64_TXADDREXT_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @BWN_DMA64_TXADDREXT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %71 = load i32, i32* @BWN_DMA64_TXCTL, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %70, i32 %71, i32 %72)
  %74 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %75 = load i32, i32* @BWN_DMA64_TXRINGLO, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %74, i32 %75, i32 %76)
  %78 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %79 = load i32, i32* @BWN_DMA64_TXRINGHI, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %78, i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %50
  %83 = load i32, i32* @BWN_DMA32_TXENABLE, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @BWN_DMA32_TXPARITY_DISABLE, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @BWN_DMA32_TXADDREXT_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* @BWN_DMA32_TXADDREXT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %95 = load i32, i32* @BWN_DMA32_TXCTL, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %94, i32 %95, i32 %96)
  %98 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %99 = load i32, i32* @BWN_DMA32_TXRING, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %82, %58
  br label %190

103:                                              ; preds = %1
  %104 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %105 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %108 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %110 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BHND_DMA_ADDR_64BIT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %154

114:                                              ; preds = %103
  %115 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %116 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BWN_DMA64_RXFROFF_SHIFT, align 4
  %119 = shl i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* @BWN_DMA64_RXENABLE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @BWN_DMA64_RXPARITY_DISABLE, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @BWN_DMA64_RXADDREXT_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* @BWN_DMA64_RXADDREXT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %134 = load i32, i32* @BWN_DMA64_RXCTL, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %133, i32 %134, i32 %135)
  %137 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %138 = load i32, i32* @BWN_DMA64_RXRINGLO, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %137, i32 %138, i32 %139)
  %141 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %142 = load i32, i32* @BWN_DMA64_RXRINGHI, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %141, i32 %142, i32 %143)
  %145 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %146 = load i32, i32* @BWN_DMA64_RXINDEX, align 4
  %147 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %148 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %145, i32 %146, i32 %152)
  br label %190

154:                                              ; preds = %103
  %155 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %156 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BWN_DMA32_RXFROFF_SHIFT, align 4
  %159 = shl i32 %157, %158
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* @BWN_DMA32_RXENABLE, align 4
  %161 = load i32, i32* %11, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* @BWN_DMA32_RXPARITY_DISABLE, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @BWN_DMA32_RXADDREXT_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* @BWN_DMA32_RXADDREXT_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  %173 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %174 = load i32, i32* @BWN_DMA32_RXCTL, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %173, i32 %174, i32 %175)
  %177 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %178 = load i32, i32* @BWN_DMA32_RXRING, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %177, i32 %178, i32 %179)
  %181 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %182 = load i32, i32* @BWN_DMA32_RXINDEX, align 4
  %183 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %184 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = trunc i64 %187 to i32
  %189 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %181, i32 %182, i32 %188)
  br label %190

190:                                              ; preds = %102, %154, %114
  ret void
}

declare dso_local i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
