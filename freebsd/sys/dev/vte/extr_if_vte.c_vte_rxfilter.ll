; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vte_maddr_ctx = type { i32*, i32**, i64 }

@VTE_RXFILT_PERFECT_CNT = common dso_local global i32 0, align 4
@VTE_MCR0 = common dso_local global i64 0, align 8
@MCR0_PROMISC = common dso_local global i32 0, align 4
@MCR0_MULTICAST = common dso_local global i32 0, align 4
@MCR0_BROADCAST_DIS = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@vte_hash_maddr = common dso_local global i32 0, align 4
@VTE_MAR0 = common dso_local global i64 0, align 8
@VTE_MAR1 = common dso_local global i64 0, align 8
@VTE_MAR2 = common dso_local global i64 0, align 8
@VTE_MAR3 = common dso_local global i64 0, align 8
@VTE_RXFILTER_PEEFECT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_rxfilter(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vte_maddr_ctx, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %7)
  %9 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @bzero(i32* %13, i32 8)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %41, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VTE_RXFILT_PERFECT_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 65535, i32* %26, align 4
  %27 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 65535, i32* %33, align 4
  %34 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 65535, i32* %40, align 4
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %15

44:                                               ; preds = %15
  %45 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %47 = load i64, i64* @VTE_MCR0, align 8
  %48 = call i32 @CSR_READ_2(%struct.vte_softc* %46, i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @MCR0_PROMISC, align 4
  %50 = load i32, i32* @MCR0_MULTICAST, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @MCR0_BROADCAST_DIS, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_BROADCAST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load i32, i32* @MCR0_BROADCAST_DIS, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %44
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_PROMISC, align 4
  %74 = load i32, i32* @IFF_ALLMULTI, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %69
  %79 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFF_PROMISC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @MCR0_PROMISC, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_ALLMULTI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @MCR0_MULTICAST, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 65535, i32* %103, align 4
  %104 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 65535, i32* %106, align 4
  %107 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 65535, i32* %109, align 4
  %110 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 65535, i32* %112, align 4
  br label %145

113:                                              ; preds = %69
  %114 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %115 = load i32, i32* @vte_hash_maddr, align 4
  %116 = call i32 @if_foreach_llmaddr(%struct.ifnet* %114, i32 %115, %struct.vte_maddr_ctx* %4)
  %117 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134, %128, %122, %113
  %141 = load i32, i32* @MCR0_MULTICAST, align 4
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %134
  br label %145

145:                                              ; preds = %144, %100
  %146 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %147 = load i64, i64* @VTE_MAR0, align 8
  %148 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @CSR_WRITE_2(%struct.vte_softc* %146, i64 %147, i32 %151)
  %153 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %154 = load i64, i64* @VTE_MAR1, align 8
  %155 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @CSR_WRITE_2(%struct.vte_softc* %153, i64 %154, i32 %158)
  %160 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %161 = load i64, i64* @VTE_MAR2, align 8
  %162 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @CSR_WRITE_2(%struct.vte_softc* %160, i64 %161, i32 %165)
  %167 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %168 = load i64, i64* @VTE_MAR3, align 8
  %169 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @CSR_WRITE_2(%struct.vte_softc* %167, i64 %168, i32 %172)
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %227, %145
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @VTE_RXFILT_PERFECT_CNT, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %230

178:                                              ; preds = %174
  %179 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %180 = load i64, i64* @VTE_RXFILTER_PEEFECT_BASE, align 8
  %181 = load i32, i32* %6, align 4
  %182 = mul nsw i32 8, %181
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %180, %183
  %185 = add nsw i64 %184, 0
  %186 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @CSR_WRITE_2(%struct.vte_softc* %179, i64 %185, i32 %193)
  %195 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %196 = load i64, i64* @VTE_RXFILTER_PEEFECT_BASE, align 8
  %197 = load i32, i32* %6, align 4
  %198 = mul nsw i32 8, %197
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %196, %199
  %201 = add nsw i64 %200, 2
  %202 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @CSR_WRITE_2(%struct.vte_softc* %195, i64 %201, i32 %209)
  %211 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %212 = load i64, i64* @VTE_RXFILTER_PEEFECT_BASE, align 8
  %213 = load i32, i32* %6, align 4
  %214 = mul nsw i32 8, %213
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %212, %215
  %217 = add nsw i64 %216, 4
  %218 = getelementptr inbounds %struct.vte_maddr_ctx, %struct.vte_maddr_ctx* %4, i32 0, i32 1
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @CSR_WRITE_2(%struct.vte_softc* %211, i64 %217, i32 %225)
  br label %227

227:                                              ; preds = %178
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %174

230:                                              ; preds = %174
  %231 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %232 = load i64, i64* @VTE_MCR0, align 8
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @CSR_WRITE_2(%struct.vte_softc* %231, i64 %232, i32 %233)
  %235 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %236 = load i64, i64* @VTE_MCR0, align 8
  %237 = call i32 @CSR_READ_2(%struct.vte_softc* %235, i64 %236)
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i64) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.vte_maddr_ctx*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
