; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_matrix.c_feeder_matrix_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i64, i64, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@SND_CHN_T_MAX = common dso_local global i64 0, align 8
@SND_CHN_T_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feeder_matrix_compare(%struct.pcmchan_matrix* %0, %struct.pcmchan_matrix* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmchan_matrix*, align 8
  %5 = alloca %struct.pcmchan_matrix*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmchan_matrix* %0, %struct.pcmchan_matrix** %4, align 8
  store %struct.pcmchan_matrix* %1, %struct.pcmchan_matrix** %5, align 8
  %7 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %8 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %9 = icmp eq %struct.pcmchan_matrix* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

11:                                               ; preds = %2
  %12 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %13 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %16 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %11
  %20 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %21 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %24 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %29 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %32 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %19, %11
  store i32 1, i32* %3, align 4
  br label %130

36:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %126, %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %129

41:                                               ; preds = %37
  %42 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %43 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %51 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %49, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %130

60:                                               ; preds = %41
  %61 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %62 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SND_CHN_T_MAX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %129

72:                                               ; preds = %60
  %73 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %74 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %82 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %130

91:                                               ; preds = %72
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SND_CHN_T_END, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  %96 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %97 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %4, align 8
  %100 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %98, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %110 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %5, align 8
  %113 = getelementptr inbounds %struct.pcmchan_matrix, %struct.pcmchan_matrix* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i64, i64* %111, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %108, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %130

124:                                              ; preds = %95
  br label %125

125:                                              ; preds = %124, %91
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %37

129:                                              ; preds = %71, %37
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %123, %90, %59, %35, %10
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
