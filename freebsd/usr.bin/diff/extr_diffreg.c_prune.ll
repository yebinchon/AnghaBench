; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@pref = common dso_local global i32 0, align 4
@len = common dso_local global i32* null, align 8
@file = common dso_local global %struct.TYPE_3__** null, align 8
@suff = common dso_local global i32 0, align 4
@sfile = common dso_local global %struct.TYPE_3__** null, align 8
@slen = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* @pref, align 4
  br label %3

3:                                                ; preds = %38, %0
  %4 = load i32, i32* @pref, align 4
  %5 = load i32*, i32** @len, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load i32, i32* @pref, align 4
  %11 = load i32*, i32** @len, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @file, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* @pref, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @file, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* @pref, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %24, %33
  br label %35

35:                                               ; preds = %15, %9, %3
  %36 = phi i1 [ false, %9 ], [ false, %3 ], [ %34, %15 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @pref, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @pref, align 4
  br label %3

41:                                               ; preds = %35
  store i32 0, i32* @suff, align 4
  br label %42

42:                                               ; preds = %87, %41
  %43 = load i32, i32* @suff, align 4
  %44 = load i32*, i32** @len, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @pref, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %42
  %51 = load i32, i32* @suff, align 4
  %52 = load i32*, i32** @len, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @pref, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @file, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32*, i32** @len, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @suff, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @file, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %71, i64 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32*, i32** @len, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @suff, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %70, %82
  br label %84

84:                                               ; preds = %58, %50, %42
  %85 = phi i1 [ false, %50 ], [ false, %42 ], [ %83, %58 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @suff, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @suff, align 4
  br label %42

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %143, %90
  %92 = load i32, i32* %2, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %146

94:                                               ; preds = %91
  %95 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @file, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %95, i64 %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* @pref, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sfile, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 %105
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %106, align 8
  %107 = load i32*, i32** @len, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @pref, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32, i32* @suff, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32*, i32** @slen, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %139, %94
  %121 = load i32, i32* %1, align 4
  %122 = load i32*, i32** @slen, align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %121, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %120
  %129 = load i32, i32* %1, align 4
  %130 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sfile, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %130, i64 %132
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %129, i32* %138, align 8
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %120

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %91

146:                                              ; preds = %91
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
