; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/sys/extr_uipc_mvec.c_busdma_map_sg_collapse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/sys/extr_uipc_mvec.c_busdma_map_sg_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"packet has zero header len\00", align 1
@PIO_LEN = common dso_local global i64 0, align 8
@TX_MAX_SEGS = common dso_local global i32 0, align 4
@cxgb_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"empty segment chain\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"mbuf chain too long: %d max allowed %d\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @busdma_map_sg_collapse(i32 %0, i32 %1, %struct.mbuf** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @KASSERT(i64 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PIO_LEN, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %125

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %114, %31
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %16, align 8
  store i32 0, i32* %13, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @busdma_map_mbuf_fast(i32 %39, i32 %40, %struct.mbuf* %41, i32* %42)
  %44 = load i32*, i32** %11, align 8
  store i32 1, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %125

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %73, %45
  %47 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @TX_MAX_SEGS, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %77

55:                                               ; preds = %53
  %56 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @__predict_true(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @busdma_map_mbuf_fast(i32 %66, i32 %67, %struct.mbuf* %68, i32* %69)
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %16, align 8
  br label %73

73:                                               ; preds = %63, %55
  %74 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  store %struct.mbuf* %76, %struct.mbuf** %12, align 8
  br label %46

77:                                               ; preds = %53
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i64, i64* @cxgb_debug, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* @EFBIG, align 4
  store i32 %86, i32* %15, align 4
  br label %123

87:                                               ; preds = %77
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @EFBIG, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @TX_MAX_SEGS, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91, %87
  %96 = load i64, i64* @cxgb_debug, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @TX_MAX_SEGS, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %102
  %106 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %106, align 8
  %108 = load i32, i32* @M_NOWAIT, align 4
  %109 = call %struct.mbuf* @m_defrag(%struct.mbuf* %107, i32 %108)
  store %struct.mbuf* %109, %struct.mbuf** %12, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %111 = icmp eq %struct.mbuf* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @ENOBUFS, align 4
  store i32 %113, i32* %15, align 4
  br label %123

114:                                              ; preds = %105
  %115 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %116 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %115, %struct.mbuf** %116, align 8
  store i32 1, i32* %14, align 4
  br label %32

117:                                              ; preds = %102
  %118 = load i32, i32* @EFBIG, align 4
  store i32 %118, i32* %15, align 4
  br label %123

119:                                              ; preds = %91
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117, %112, %85
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %38, %30
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @KASSERT(i64, i8*) #1

declare dso_local i32 @busdma_map_mbuf_fast(i32, i32, %struct.mbuf*, i32*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
