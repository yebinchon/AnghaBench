; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__, i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@AN_MAX_RX_DESC = common dso_local global i32 0, align 4
@AN_MAX_TX_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @an_release_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.an_softc* @device_get_softc(i32 %5)
  store %struct.an_softc* %6, %struct.an_softc** %3, align 8
  %7 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %8 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %7, i32 0, i32 10
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SYS_RES_IOPORT, align 4
  %14 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %15 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bus_release_resource(i32 %12, i32 %13, i32 %16, i64 %19)
  %21 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %22 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %25 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %32 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %35 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %33, i64 %36)
  %38 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %39 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %28, %23
  %41 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %42 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %49 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %52 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i64 %53)
  %55 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %56 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %59 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %66 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %69 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 %67, i64 %70)
  %72 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %73 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %62, %57
  %75 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %76 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %82 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %83 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %82, i32 0, i32 3
  %84 = call i32 @an_dma_free(%struct.an_softc* %81, %struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %80, %74
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %110, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @AN_MAX_RX_DESC, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %92 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %102 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %103 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = call i32 @an_dma_free(%struct.an_softc* %101, %struct.TYPE_2__* %107)
  br label %109

109:                                              ; preds = %100, %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %86

113:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %138, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @AN_MAX_TX_DESC, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %120 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %130 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %131 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = call i32 @an_dma_free(%struct.an_softc* %129, %struct.TYPE_2__* %135)
  br label %137

137:                                              ; preds = %128, %118
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %114

141:                                              ; preds = %114
  %142 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %143 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %148 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @bus_dma_tag_destroy(i64 %149)
  br label %151

151:                                              ; preds = %146, %141
  ret void
}

declare dso_local %struct.an_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @an_dma_free(%struct.an_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
