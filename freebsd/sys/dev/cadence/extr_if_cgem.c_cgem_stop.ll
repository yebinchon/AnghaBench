; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i64, i64, %struct.TYPE_4__*, i32**, i32**, i32, i64, i64, i64, %struct.TYPE_3__*, i32**, i32**, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@CGEM_NUM_TX_DESCS = common dso_local global i32 0, align 4
@CGEM_TXDESC_USED = common dso_local global i32 0, align 4
@CGEM_TXDESC_WRAP = common dso_local global i32 0, align 4
@CGEM_NUM_RX_DESCS = common dso_local global i32 0, align 4
@CGEM_RXDESC_OWN = common dso_local global i32 0, align 4
@CGEM_RXDESC_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_stop(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %4 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %5 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %4)
  %6 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %6, i32 0, i32 14
  %8 = call i32 @callout_stop(i32* %7)
  %9 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %10 = call i32 @cgem_reset(%struct.cgem_softc* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %83, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load i32, i32* @CGEM_TXDESC_USED, align 4
  %17 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %18 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %17, i32 0, i32 11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 8
  %24 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %25 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %24, i32 0, i32 11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 12
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %82

39:                                               ; preds = %15
  %40 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %41 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %44 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %43, i32 0, i32 13
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_dmamap_unload(i32 %42, i32* %49)
  %51 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %52 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %55 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %54, i32 0, i32 13
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_dmamap_destroy(i32 %53, i32* %60)
  %62 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %63 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %62, i32 0, i32 13
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  %68 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %69 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %68, i32 0, i32 12
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @m_freem(i32* %74)
  %76 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %77 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %76, i32 0, i32 12
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %39, %15
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %11

86:                                               ; preds = %11
  %87 = load i32, i32* @CGEM_TXDESC_WRAP, align 4
  %88 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %89 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %88, i32 0, i32 11
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %87
  store i32 %97, i32* %95, align 8
  %98 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %99 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %98, i32 0, i32 10
  store i64 0, i64* %99, align 8
  %100 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %101 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %100, i32 0, i32 9
  store i64 0, i64* %101, align 8
  %102 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %103 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %102, i32 0, i32 8
  store i64 0, i64* %103, align 8
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %176, %86
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %179

108:                                              ; preds = %104
  %109 = load i32, i32* @CGEM_RXDESC_OWN, align 4
  %110 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %111 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %110, i32 0, i32 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %118 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %125 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %124, i32 0, i32 5
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %175

132:                                              ; preds = %108
  %133 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %134 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %137 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %136, i32 0, i32 6
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @bus_dmamap_unload(i32 %135, i32* %142)
  %144 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %145 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %148 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %147, i32 0, i32 6
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @bus_dmamap_destroy(i32 %146, i32* %153)
  %155 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %156 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %155, i32 0, i32 6
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  store i32* null, i32** %160, align 8
  %161 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %162 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %161, i32 0, i32 5
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @m_freem(i32* %167)
  %169 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %170 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %169, i32 0, i32 5
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %132, %108
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %104

179:                                              ; preds = %104
  %180 = load i32, i32* @CGEM_RXDESC_WRAP, align 4
  %181 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %182 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %181, i32 0, i32 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %180
  store i32 %190, i32* %188, align 8
  %191 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %192 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %194 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %193, i32 0, i32 2
  store i64 0, i64* %194, align 8
  %195 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %196 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %195, i32 0, i32 1
  store i64 0, i64* %196, align 8
  %197 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %198 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @cgem_reset(%struct.cgem_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
