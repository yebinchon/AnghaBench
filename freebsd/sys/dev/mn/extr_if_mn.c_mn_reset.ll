; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@NIQB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"mn%d: WARNING: Controller failed the PCI bus-master test.\0Amn%d: WARNING: Use a PCI slot which can support bus-master cards.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mn_softc*)* @mn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn_reset(%struct.mn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mn_softc* %0, %struct.mn_softc** %3, align 8
  %6 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i8* @vtophys(i32* %8)
  %10 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %10, i32 0, i32 7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 12
  store i8* %9, i8** %13, align 8
  %14 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i8* @vtophys(i32* %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bzero(i32 %24, i32 4)
  %26 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %26, i32 0, i32 0
  %28 = call i8* @vtophys(i32* %27)
  %29 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %29, i32 0, i32 7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 11
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* @NIQB, align 4
  %34 = sdiv i32 %33, 16
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %36, i32 0, i32 7
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bzero(i32 %42, i32 4)
  %44 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %44, i32 0, i32 1
  %46 = call i8* @vtophys(i32* %45)
  %47 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %47, i32 0, i32 7
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 10
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* @NIQB, align 4
  %52 = sdiv i32 %51, 16
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %54, i32 0, i32 7
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bzero(i32 %60, i32 4)
  %62 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %62, i32 0, i32 2
  %64 = call i8* @vtophys(i32* %63)
  %65 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %65, i32 0, i32 7
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 9
  store i8* %64, i8** %68, align 8
  %69 = load i32, i32* @NIQB, align 4
  %70 = sdiv i32 %69, 16
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %72, i32 0, i32 7
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 8
  %76 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bzero(i32 %78, i32 4)
  %80 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %80, i32 0, i32 3
  %82 = call i8* @vtophys(i32* %81)
  %83 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %83, i32 0, i32 7
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* @NIQB, align 4
  %88 = sdiv i32 %87, 16
  %89 = sub nsw i32 %88, 1
  %90 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %90, i32 0, i32 7
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 %89, i32* %93, align 4
  %94 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %95 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bzero(i32 %96, i32 4)
  %98 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %99 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %98, i32 0, i32 4
  %100 = call i8* @vtophys(i32* %99)
  %101 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %101, i32 0, i32 7
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 7
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* @NIQB, align 4
  %106 = sdiv i32 %105, 16
  %107 = sub nsw i32 %106, 1
  %108 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %108, i32 0, i32 7
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 8
  %112 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %113 = call i32 @m32_init(%struct.mn_softc* %112)
  %114 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %115 = call i32 @f54_init(%struct.mn_softc* %114)
  %116 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %117 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %116, i32 0, i32 7
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %123 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %122, i32 0, i32 7
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 5
  store i32 %121, i32* %125, align 4
  %126 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 4, i32* %128, align 4
  %129 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %130 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %129, i32 0, i32 7
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 6
  store i32 1, i32* %132, align 8
  %133 = call i32 @DELAY(i32 1000)
  %134 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %135 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %134, i32 0, i32 7
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %141 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %140, i32 0, i32 7
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  store i32 %139, i32* %143, align 4
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %155, %1
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 32
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %149 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 536879104, i32* %154, align 4
  br label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %144

158:                                              ; preds = %144
  %159 = load i32, i32* %4, align 4
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %164 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %167 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @printf(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %168)
  store i32 0, i32* %2, align 4
  br label %171

170:                                              ; preds = %158
  store i32 1, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %162
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @vtophys(i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @m32_init(%struct.mn_softc*) #1

declare dso_local i32 @f54_init(%struct.mn_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
