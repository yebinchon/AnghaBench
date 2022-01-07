; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_free_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_free_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32, i32, i32**, i32*, i32, i64*, i32**, i32*, i32** }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*)* @cs4231_free_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_free_resource(%struct.cs4231_softc* %0) #0 {
  %2 = alloca %struct.cs4231_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %2, align 8
  %4 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %5 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %4)
  %6 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %7 = call i32 @cs4231_disable(%struct.cs4231_softc* %6)
  %8 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %9 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %86, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %89

16:                                               ; preds = %10
  %17 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %18 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %17, i32 0, i32 7
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %85

25:                                               ; preds = %16
  %26 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %27 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %26, i32 0, i32 9
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %25
  %35 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %36 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %39 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %38, i32 0, i32 7
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %46 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %45, i32 0, i32 9
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_teardown_intr(i32 %37, i32* %44, i32* %51)
  %53 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %54 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %53, i32 0, i32 9
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %34, %25
  %60 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %61 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %65 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %72 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %71, i32 0, i32 7
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %70, i32* %77)
  %79 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %80 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %79, i32 0, i32 7
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %59, %16
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %10

89:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %115, %89
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %93 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %98 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %97, i32 0, i32 6
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %107 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %106, i32 0, i32 6
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @bus_dma_tag_destroy(i64 %112)
  br label %114

114:                                              ; preds = %105, %96
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %90

118:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %155, %118
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %122 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %119
  %126 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %127 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %126, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %154

134:                                              ; preds = %125
  %135 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %136 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SYS_RES_MEMORY, align 4
  %139 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %140 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %147 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @bus_release_resource(i32 %137, i32 %138, i32 %145, i32* %152)
  br label %154

154:                                              ; preds = %134, %125
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %119

158:                                              ; preds = %119
  %159 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %160 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @snd_mtxfree(i32 %161)
  %163 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %164 = load i32, i32* @M_DEVBUF, align 4
  %165 = call i32 @free(%struct.cs4231_softc* %163, i32 %164)
  ret void
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_disable(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.cs4231_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
