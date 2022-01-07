; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_new_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_new_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"NULL mbuf pointer!\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Too many segments returned!\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mge_new_rxbuf(): nsegs(%d), error(%d)\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mbuf**, i32*)* @mge_new_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_new_rxbuf(i32 %0, i32 %1, %struct.mbuf** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca [1 x %struct.TYPE_7__], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %15 = icmp ne %struct.mbuf** %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @MT_DATA, align 4
  %20 = load i32, i32* @M_PKTHDR, align 4
  %21 = call %struct.mbuf* @m_getcl(i32 %18, i32 %19, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %10, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOBUFS, align 4
  store i32 %25, i32* %5, align 4
  br label %78

26:                                               ; preds = %4
  %27 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  store i32 %30, i32* %35, align 4
  %36 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %43 = call i32 @bus_dmamap_sync(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bus_dmamap_unload(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %26
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %51 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %11, i64 0, i64 0
  %52 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %53 = call i32 @bus_dmamap_load_mbuf_sg(i32 %48, i32 %49, %struct.mbuf* %50, %struct.TYPE_7__* %51, i32* %13, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %47
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %71 = call i32 @bus_dmamap_sync(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %73 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %72, %struct.mbuf** %73, align 8
  %74 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %11, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %67, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
