; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_tpa_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_tpa_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32*, %struct.bxe_softc* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.bxe_softc = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_fastpath*)* @bxe_free_tpa_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_free_tpa_pool(%struct.bxe_fastpath* %0) #0 {
  %2 = alloca %struct.bxe_fastpath*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %2, align 8
  %6 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %6, i32 0, i32 3
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  store %struct.bxe_softc* %8, %struct.bxe_softc** %3, align 8
  %9 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %10 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %99

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = call i32 @MAX_AGG_QS(%struct.bxe_softc* %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %96, %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %23 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %21
  %33 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %34 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %37 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %46 = call i32 @bus_dmamap_sync(i32* %35, i32* %44, i32 %45)
  %47 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %48 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %51 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_dmamap_unload(i32* %49, i32* %58)
  br label %60

60:                                               ; preds = %32, %21
  %61 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %62 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %60
  %72 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %73 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @m_freem(i32* %80)
  %82 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %83 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %91 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %71, %60
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %17

99:                                               ; preds = %13, %17
  ret void
}

declare dso_local i32 @MAX_AGG_QS(%struct.bxe_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
