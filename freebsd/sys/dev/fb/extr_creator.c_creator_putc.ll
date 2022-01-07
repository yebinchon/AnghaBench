; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.creator_softc = type { i32, i32, i64 }

@creator_cmap = common dso_local global i32* null, align 8
@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_FONTXY = common dso_local global i32 0, align 4
@FFB_FBC_FONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @creator_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_putc(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.creator_softc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = bitcast %struct.TYPE_5__* %14 to %struct.creator_softc*
  store %struct.creator_softc* %15, %struct.creator_softc** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %16, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %27, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %39 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %51 = load i32*, i32** @creator_cmap, align 8
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @creator_ras_setfg(%struct.creator_softc* %50, i32 %56)
  %58 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %59 = load i32*, i32** @creator_cmap, align 8
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @creator_ras_setbg(%struct.creator_softc* %58, i32 %65)
  %67 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 1, %71
  %73 = call i32 @creator_ras_fifo_wait(%struct.creator_softc* %67, i32 %72)
  %74 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %75 = load i32, i32* @FFB_FBC, align 4
  %76 = load i32, i32* @FFB_FBC_FONTXY, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %79 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %85 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = or i32 %82, %87
  %89 = call i32 @FFB_WRITE(%struct.creator_softc* %74, i32 %75, i32 %76, i32 %88)
  %90 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @creator_ras_setfontw(%struct.creator_softc* %90, i32 %94)
  %96 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %97 = call i32 @creator_ras_setfontinc(%struct.creator_softc* %96, i32 65536)
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %114, %4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = load %struct.creator_softc*, %struct.creator_softc** %9, align 8
  %107 = load i32, i32* @FFB_FBC, align 4
  %108 = load i32, i32* @FFB_FBC_FONT, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  %111 = load i32, i32* %109, align 4
  %112 = shl i32 %111, 16
  %113 = call i32 @FFB_WRITE(%struct.creator_softc* %106, i32 %107, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %98

117:                                              ; preds = %98
  ret i32 0
}

declare dso_local i32 @creator_ras_setfg(%struct.creator_softc*, i32) #1

declare dso_local i32 @creator_ras_setbg(%struct.creator_softc*, i32) #1

declare dso_local i32 @creator_ras_fifo_wait(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

declare dso_local i32 @creator_ras_setfontw(%struct.creator_softc*, i32) #1

declare dso_local i32 @creator_ras_setfontinc(%struct.creator_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
