; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_new_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_new_rxbuf.c"
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
@MCLBYTES = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Too many segments returned!\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"tsec_new_rxbuf(): nsegs(%d), error(%d)\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@TSEC_RXBUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mbuf**, i32*)* @tsec_new_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_new_rxbuf(i32 %0, i32 %1, %struct.mbuf** %2, i32* %3) #0 {
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
  %21 = load i32, i32* @MCLBYTES, align 4
  %22 = call %struct.mbuf* @m_getjcl(i32 %18, i32 %19, i32 %20, i32 %21)
  store %struct.mbuf* %22, %struct.mbuf** %10, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %24 = icmp eq %struct.mbuf* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOBUFS, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %44 = call i32 @bus_dmamap_sync(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bus_dmamap_unload(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %27
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %11, i64 0, i64 0
  %53 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %54 = call i32 @bus_dmamap_load_mbuf_sg(i32 %49, i32 %50, %struct.mbuf* %51, %struct.TYPE_7__* %52, i32* %13, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @KASSERT(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %48
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %74 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %73, %struct.mbuf** %74, align 8
  %75 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %11, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %68, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

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
