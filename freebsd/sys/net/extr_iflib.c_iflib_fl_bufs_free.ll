; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fl_bufs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fl_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.mbuf**, %struct.mbuf**, i32* }
%struct.mbuf = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@zone_mbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @iflib_fl_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_fl_bufs_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.mbuf**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 11
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %91, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.mbuf**, %struct.mbuf*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %21, i64 %22
  store %struct.mbuf** %23, %struct.mbuf*** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.mbuf**, %struct.mbuf*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %27, i64 %28
  store %struct.mbuf** %29, %struct.mbuf*** %7, align 8
  %30 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %77

33:                                               ; preds = %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bus_dmamap_unload(i32 %49, i32 %50)
  %52 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  %54 = icmp ne %struct.mbuf* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %33
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %59, align 8
  %61 = call i32 @uma_zfree(i32 %58, %struct.mbuf* %60)
  br label %62

62:                                               ; preds = %55, %33
  %63 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %63, align 8
  %65 = icmp ne %struct.mbuf* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = load i32, i32* @MT_DATA, align 4
  %71 = call i32 @m_init(%struct.mbuf* %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @zone_mbuf, align 4
  %73 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %73, align 8
  %75 = call i32 @uma_zfree(i32 %72, %struct.mbuf* %74)
  br label %76

76:                                               ; preds = %66, %62
  br label %88

77:                                               ; preds = %17
  %78 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  %80 = icmp eq %struct.mbuf* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @MPASS(i32 %81)
  %83 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  %85 = icmp eq %struct.mbuf* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @MPASS(i32 %86)
  br label %88

88:                                               ; preds = %77, %76
  %89 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %89, align 8
  %90 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %90, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %11

94:                                               ; preds = %11
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bzero(i32 %107, i32 %110)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.mbuf*) #1

declare dso_local i32 @m_init(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
