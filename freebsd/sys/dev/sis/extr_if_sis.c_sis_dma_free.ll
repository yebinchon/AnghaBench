; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, i64, i64, %struct.sis_txdesc*, i64, %struct.sis_rxdesc* }
%struct.sis_txdesc = type { i64 }
%struct.sis_rxdesc = type { i64 }

@SIS_RX_LIST_CNT = common dso_local global i32 0, align 4
@SIS_TX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_dma_free(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.sis_rxdesc*, align 8
  %4 = alloca %struct.sis_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %11, i32 0, i32 13
  %13 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %13, i64 %15
  store %struct.sis_rxdesc* %16, %struct.sis_rxdesc** %3, align 8
  %17 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %3, align 8
  %18 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %3, align 8
  %26 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @bus_dmamap_destroy(i64 %24, i64 %27)
  br label %29

29:                                               ; preds = %21, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %35 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %40 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %43 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %42, i32 0, i32 12
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_dmamap_destroy(i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %38, %33
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %53 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %52, i32 0, i32 11
  %54 = load %struct.sis_txdesc*, %struct.sis_txdesc** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %54, i64 %56
  store %struct.sis_txdesc* %57, %struct.sis_txdesc** %4, align 8
  %58 = load %struct.sis_txdesc*, %struct.sis_txdesc** %4, align 8
  %59 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %64 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sis_txdesc*, %struct.sis_txdesc** %4, align 8
  %67 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bus_dmamap_destroy(i64 %65, i64 %68)
  br label %70

70:                                               ; preds = %62, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %76 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %81 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %80, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @bus_dma_tag_destroy(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %86 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %91 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @bus_dma_tag_destroy(i64 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %96 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %95, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %101 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %104 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bus_dmamap_unload(i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %99, %94
  %108 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %109 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %114 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %117 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %120 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @bus_dmamem_free(i64 %115, i64 %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %107
  %124 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %125 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %130 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @bus_dma_tag_destroy(i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %135 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %140 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %143 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bus_dmamap_unload(i64 %141, i32 %144)
  br label %146

146:                                              ; preds = %138, %133
  %147 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %148 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %153 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %156 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %159 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @bus_dmamem_free(i64 %154, i64 %157, i32 %160)
  br label %162

162:                                              ; preds = %151, %146
  %163 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %164 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %169 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @bus_dma_tag_destroy(i64 %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %174 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %179 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @bus_dma_tag_destroy(i64 %180)
  br label %182

182:                                              ; preds = %177, %172
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
