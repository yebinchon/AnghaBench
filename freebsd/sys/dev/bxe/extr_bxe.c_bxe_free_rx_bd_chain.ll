; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_rx_bd_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_rx_bd_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32*, %struct.bxe_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.bxe_softc = type { i32 }

@RX_BD_TOTAL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_fastpath*)* @bxe_free_rx_bd_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_free_rx_bd_chain(%struct.bxe_fastpath* %0) #0 {
  %2 = alloca %struct.bxe_fastpath*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %2, align 8
  %5 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %6 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %5, i32 0, i32 3
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  store %struct.bxe_softc* %7, %struct.bxe_softc** %3, align 8
  %8 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %90

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %87, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RX_BD_TOTAL, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %90

18:                                               ; preds = %14
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %18
  %29 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %33 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %41 = call i32 @bus_dmamap_sync(i32* %31, i32* %39, i32 %40)
  %42 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %43 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_dmamap_unload(i32* %44, i32* %52)
  br label %54

54:                                               ; preds = %28, %18
  %55 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %56 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %54
  %65 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %66 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @m_freem(i32* %72)
  %74 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %75 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %82 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %64, %54
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %14

90:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
