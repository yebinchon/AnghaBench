; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_chaindesclist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_chaindesclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, %struct.ath_hal*, %struct.ath_descdma }
%struct.ath_hal = type { i32 }
%struct.ath_descdma = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_buf = type { i32, i32, %struct.ath_desc*, %struct.TYPE_4__, i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_desc*, %struct.ath_buf*, i32, i32, i32)* @ath_tx_chaindesclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_chaindesclist(%struct.ath_softc* %0, %struct.ath_desc* %1, %struct.ath_buf* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ath_desc*, align 8
  %9 = alloca %struct.ath_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_hal*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ath_descdma*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %7, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %8, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 3
  %25 = load %struct.ath_hal*, %struct.ath_hal** %24, align 8
  store %struct.ath_hal* %25, %struct.ath_hal** %13, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 4
  store %struct.ath_descdma* %27, %struct.ath_descdma** %22, align 8
  %28 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %20, align 4
  %31 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %32 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %36 = call i32 @bzero(i32* %35, i32 16)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %38 = call i32 @bzero(i32* %37, i32 16)
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %184, %6
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %42 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %187

45:                                               ; preds = %39
  %46 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %47 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %46, i32 0, i32 6
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %58 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %72 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %45
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %184

81:                                               ; preds = %76, %45
  store i32 0, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %84 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.ath_hal*, %struct.ath_hal** %13, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = bitcast i8* %90 to %struct.ath_desc*
  %92 = call i32 @ath_hal_settxdesclink(%struct.ath_hal* %89, %struct.ath_desc* %91, i64 0)
  br label %109

93:                                               ; preds = %81
  %94 = load %struct.ath_hal*, %struct.ath_hal** %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = bitcast i8* %95 to %struct.ath_desc*
  %97 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %98 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ath_descdma*, %struct.ath_descdma** %22, align 8
  %101 = getelementptr inbounds %struct.ath_descdma, %struct.ath_descdma* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  %105 = mul nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %99, %106
  %108 = call i32 @ath_hal_settxdesclink(%struct.ath_hal* %94, %struct.ath_desc* %96, i64 %107)
  br label %109

109:                                              ; preds = %93, %88
  %110 = load %struct.ath_hal*, %struct.ath_hal** %13, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = bitcast i8* %111 to %struct.ath_desc*
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %115 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %116 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %119 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %125 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %123, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %131 = call i32 @ath_hal_filltxdesc(%struct.ath_hal* %110, %struct.ath_desc* %112, i32* %113, i32* %114, i32 %117, i32 %121, i32 %122, i32 %129, %struct.ath_desc* %130)
  %132 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %133 = call i64 @ath_tx_is_11n(%struct.ath_softc* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %109
  %136 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %137 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %136, i32 0, i32 3
  %138 = load %struct.ath_hal*, %struct.ath_hal** %137, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = bitcast i8* %139 to %struct.ath_desc*
  %141 = call i32 @ath_hal_clr11n_aggr(%struct.ath_hal* %138, %struct.ath_desc* %140)
  br label %142

142:                                              ; preds = %135, %109
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %147 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %146, i32 0, i32 3
  %148 = load %struct.ath_hal*, %struct.ath_hal** %147, align 8
  %149 = load i8*, i8** %14, align 8
  %150 = bitcast i8* %149 to %struct.ath_desc*
  %151 = call i32 @ath_hal_set11n_aggr_last(%struct.ath_hal* %148, %struct.ath_desc* %150)
  br label %167

152:                                              ; preds = %142
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %157 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %156, i32 0, i32 3
  %158 = load %struct.ath_hal*, %struct.ath_hal** %157, align 8
  %159 = load i8*, i8** %14, align 8
  %160 = bitcast i8* %159 to %struct.ath_desc*
  %161 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %162 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ath_hal_set11n_aggr_middle(%struct.ath_hal* %158, %struct.ath_desc* %160, i32 %164)
  br label %166

166:                                              ; preds = %155, %152
  br label %167

167:                                              ; preds = %166, %145
  store i32 0, i32* %21, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = bitcast i8* %168 to %struct.ath_desc*
  %170 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %171 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %170, i32 0, i32 2
  store %struct.ath_desc* %169, %struct.ath_desc** %171, align 8
  %172 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %173 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %14, align 8
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %181 = call i32 @bzero(i32* %180, i32 16)
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %183 = call i32 @bzero(i32* %182, i32 16)
  br label %184

184:                                              ; preds = %167, %80
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %39

187:                                              ; preds = %39
  %188 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %189 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  %192 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %195 = call i32 @bus_dmamap_sync(i32 %190, i32 %193, i32 %194)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ath_hal_settxdesclink(%struct.ath_hal*, %struct.ath_desc*, i64) #1

declare dso_local i32 @ath_hal_filltxdesc(%struct.ath_hal*, %struct.ath_desc*, i32*, i32*, i32, i32, i32, i32, %struct.ath_desc*) #1

declare dso_local i64 @ath_tx_is_11n(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_clr11n_aggr(%struct.ath_hal*, %struct.ath_desc*) #1

declare dso_local i32 @ath_hal_set11n_aggr_last(%struct.ath_hal*, %struct.ath_desc*) #1

declare dso_local i32 @ath_hal_set11n_aggr_middle(%struct.ath_hal*, %struct.ath_desc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
