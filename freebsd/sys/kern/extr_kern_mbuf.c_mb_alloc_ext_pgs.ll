; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_alloc_ext_pgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_alloc_ext_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i64, %struct.mbuf_ext_pgs*, i32, i32 }
%struct.mbuf_ext_pgs = type { i32*, i32*, i64, i64, i64, i64, i64, i64, i64 }

@MT_DATA = common dso_local global i32 0, align 4
@zone_extpgs = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@M_RDONLY = common dso_local global i32 0, align 4
@M_NOMAP = common dso_local global i32 0, align 4
@EXT_PGS = common dso_local global i32 0, align 4
@EXT_FLAG_EMBREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @mb_alloc_ext_pgs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf_ext_pgs*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MT_DATA, align 4
  %15 = call %struct.mbuf* @m_gethdr(i32 %13, i32 %14)
  store %struct.mbuf* %15, %struct.mbuf** %8, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = call %struct.mbuf* @m_get(i32 %17, i32 %18)
  store %struct.mbuf* %19, %struct.mbuf** %8, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = icmp eq %struct.mbuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %86

24:                                               ; preds = %20
  %25 = load i32, i32* @zone_extpgs, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.mbuf_ext_pgs* @uma_zalloc(i32 %25, i32 %26)
  store %struct.mbuf_ext_pgs* %27, %struct.mbuf_ext_pgs** %9, align 8
  %28 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %29 = icmp eq %struct.mbuf_ext_pgs* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = call i32 @m_free(%struct.mbuf* %31)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %86

33:                                               ; preds = %24
  %34 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %35 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %37 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %39 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %41 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %43 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %45 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %47 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %49 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %51 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @M_EXT, align 4
  %55 = load i32, i32* @M_RDONLY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @M_NOMAP, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @EXT_PGS, align 4
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @EXT_FLAG_EMBREF, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %9, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store %struct.mbuf_ext_pgs* %74, %struct.mbuf_ext_pgs** %77, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %85, %struct.mbuf** %4, align 8
  br label %86

86:                                               ; preds = %33, %30, %23
  %87 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %87
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local %struct.mbuf_ext_pgs* @uma_zalloc(i32, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
