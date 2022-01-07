; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txdma_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txdma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32 }
%struct.mwl_txq = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, %struct.mwl_txbuf* }
%struct.mwl_txbuf = type { i32*, i32*, i32* }

@mwl_txbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mbuf on free list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"node on free list\00", align 1
@M_MWLDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*, %struct.mwl_txq*)* @mwl_txdma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_txdma_cleanup(%struct.mwl_softc* %0, %struct.mwl_txq* %1) #0 {
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca %struct.mwl_txq*, align 8
  %5 = alloca %struct.mwl_txbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  store %struct.mwl_txq* %1, %struct.mwl_txq** %4, align 8
  %7 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %8 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  store %struct.mwl_txbuf* %10, %struct.mwl_txbuf** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @mwl_txbuf, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %17 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %29 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %15
  %33 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %37 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_dmamap_destroy(i32 %35, i32* %38)
  br label %40

40:                                               ; preds = %32, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %5, align 8
  %45 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %44, i32 1
  store %struct.mwl_txbuf* %45, %struct.mwl_txbuf** %5, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %48 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %47, i32 0, i32 2
  %49 = call i32 @STAILQ_INIT(i32* %48)
  %50 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %51 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %53 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %54, align 8
  %56 = icmp ne %struct.mwl_txbuf* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %59 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %60, align 8
  %62 = load i32, i32* @M_MWLDEV, align 4
  %63 = call i32 @free(%struct.mwl_txbuf* %61, i32 %62)
  %64 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %65 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store %struct.mwl_txbuf* null, %struct.mwl_txbuf** %66, align 8
  br label %67

67:                                               ; preds = %57, %46
  %68 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %69 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %75 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %76 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %75, i32 0, i32 0
  %77 = call i32 @mwl_desc_cleanup(%struct.mwl_softc* %74, %struct.TYPE_2__* %76)
  br label %78

78:                                               ; preds = %73, %67
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @free(%struct.mwl_txbuf*, i32) #1

declare dso_local i32 @mwl_desc_cleanup(%struct.mwl_softc*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
