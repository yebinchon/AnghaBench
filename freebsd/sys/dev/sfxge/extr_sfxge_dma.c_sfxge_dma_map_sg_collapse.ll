; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_dma.c_sfxge_dma_map_sg_collapse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_dma.c_sfxge_dma_map_sg_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"packet has zero header length\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_dma_map_sg_collapse(i32 %0, i32 %1, %struct.mbuf** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %20, %struct.mbuf** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %93, %6
  %27 = load i32*, i32** %11, align 8
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @sfxge_map_mbuf_fast(i32 %33, i32 %34, %struct.mbuf* %35, i32* %36)
  %38 = load i32*, i32** %12, align 8
  store i32 1, i32* %38, align 4
  store i32 0, i32* %7, align 4
  br label %104

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %64, %39
  %41 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %42 = icmp ne %struct.mbuf* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  %50 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @sfxge_map_mbuf_fast(i32 %57, i32 %58, %struct.mbuf* %59, i32* %60)
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %14, align 8
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 1
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  store %struct.mbuf* %67, %struct.mbuf** %15, align 8
  br label %40

68:                                               ; preds = %47
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @EFBIG, align 4
  store i32 %72, i32* %18, align 4
  br label %102

73:                                               ; preds = %68
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @EFBIG, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %85, align 8
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = call %struct.mbuf* @m_defrag(%struct.mbuf* %86, i32 %87)
  store %struct.mbuf* %88, %struct.mbuf** %15, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %90 = icmp eq %struct.mbuf* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOBUFS, align 4
  store i32 %92, i32* %18, align 4
  br label %102

93:                                               ; preds = %84
  %94 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %95 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  store %struct.mbuf* %94, %struct.mbuf** %95, align 8
  store i32 1, i32* %17, align 4
  br label %26

96:                                               ; preds = %81
  %97 = load i32, i32* @EFBIG, align 4
  store i32 %97, i32* %18, align 4
  br label %102

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %12, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %96, %91, %71
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %32
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_map_mbuf_fast(i32, i32, %struct.mbuf*, i32*) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
