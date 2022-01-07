; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_assemble_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_assemble_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i64, %struct.mbuf* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32** }
%struct.TYPE_9__ = type { i32 }

@PFIL_PASS = common dso_local global i32 0, align 4
@PFIL_CONSUMED = common dso_local global i32 0, align 4
@PFIL_DROPPED = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @assemble_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @assemble_segments(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %15, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @PFIL_PASS, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %13, align 8
  br label %21

21:                                               ; preds = %135, %4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %27
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call %struct.mbuf* @rxd_frag_to_sd(i32 %22, %struct.TYPE_12__* %28, i32 %32, %struct.TYPE_10__* %33, i32* %34, %struct.TYPE_11__* %35)
  store %struct.mbuf* %36, %struct.mbuf** %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %21
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PFIL_CONSUMED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PFIL_DROPPED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61, %56, %53, %21
  %67 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %68 = icmp eq %struct.mbuf* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %17, align 4
  store i32* null, i32** %13, align 8
  br label %135

70:                                               ; preds = %66
  %71 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %72 = load i32, i32* @M_NOWAIT, align 4
  %73 = load i32, i32* @MT_DATA, align 4
  %74 = call i32 @m_init(%struct.mbuf* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %76 = call i32 @m_free(%struct.mbuf* %75)
  br label %135

77:                                               ; preds = %61
  %78 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %79 = icmp eq %struct.mbuf* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* @M_PKTHDR, align 4
  %82 = load i32, i32* @M_EXT, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %14, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %84, %struct.mbuf** %11, align 8
  store %struct.mbuf* %84, %struct.mbuf** %10, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %16, align 4
  br label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @M_EXT, align 4
  store i32 %89, i32* %14, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %91 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 2
  store %struct.mbuf* %90, %struct.mbuf** %92, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %93, %struct.mbuf** %11, align 8
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %12, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  store i32* null, i32** %101, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %103 = load i32, i32* @M_NOWAIT, align 4
  %104 = load i32, i32* @MT_DATA, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @m_init(%struct.mbuf* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @m_cljset(%struct.mbuf* %107, i32* %108, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %94, %70, %69
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %21, label %142

142:                                              ; preds = %135
  %143 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  ret %struct.mbuf* %143
}

declare dso_local %struct.mbuf* @rxd_frag_to_sd(i32, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @m_init(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @m_cljset(%struct.mbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
