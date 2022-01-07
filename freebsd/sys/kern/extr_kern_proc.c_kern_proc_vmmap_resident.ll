; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_kern_proc_vmmap_resident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_kern_proc_vmmap_resident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i64 }

@vmmap_skip_res_cnt = common dso_local global i64 0, align 8
@pagesizes = common dso_local global i64* null, align 8
@MINCORE_SUPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kern_proc_vmmap_resident(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64, i64* @vmmap_skip_res_cnt, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %157

23:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @OFF_TO_IDX(i32 %33)
  store i64 %34, i64* %15, align 8
  br label %35

35:                                               ; preds = %149, %23
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %157

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %11, align 8
  br label %102

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i64 @atop(i64 %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  store i64 %53, i64* %17, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %10, align 8
  br label %55

55:                                               ; preds = %97, %46
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = load i64, i64* %17, align 8
  %58 = call %struct.TYPE_11__* @vm_page_find_least(%struct.TYPE_12__* %56, i64 %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %11, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %101

68:                                               ; preds = %61
  %69 = load i64, i64* %16, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %17, align 8
  %74 = sub nsw i64 %72, %73
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %16, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %12, align 8
  br label %83

83:                                               ; preds = %76, %68
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = icmp eq %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %148

90:                                               ; preds = %84
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @OFF_TO_IDX(i32 %93)
  %95 = load i64, i64* %17, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %17, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %10, align 8
  br label %55

101:                                              ; preds = %67
  br label %102

102:                                              ; preds = %101, %44
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %140

107:                                              ; preds = %102
  %108 = load i64, i64* %13, align 8
  %109 = load i64*, i64** @pagesizes, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sle i64 %112, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %107
  %118 = load i64, i64* %13, align 8
  %119 = load i64*, i64** @pagesizes, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = and i64 %118, %122
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @pmap_mincore(i32 %128, i64 %129, i64* %14)
  %131 = load i32, i32* @MINCORE_SUPER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %125
  %135 = load i32*, i32** %8, align 8
  store i32 1, i32* %135, align 4
  %136 = load i64*, i64** @pagesizes, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @atop(i64 %138)
  store i64 %139, i64* %16, align 8
  br label %141

140:                                              ; preds = %125, %117, %107, %102
  store i64 1, i64* %16, align 8
  br label %141

141:                                              ; preds = %140, %134
  %142 = load i64, i64* %16, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %142
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  br label %148

148:                                              ; preds = %141, %89
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %16, align 8
  %151 = call i64 @IDX_TO_OFF(i64 %150)
  %152 = load i64, i64* %13, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %13, align 8
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* %15, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %15, align 8
  br label %35

157:                                              ; preds = %22, %35
  ret void
}

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local %struct.TYPE_11__* @vm_page_find_least(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @pmap_mincore(i32, i64, i64*) #1

declare dso_local i64 @IDX_TO_OFF(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
