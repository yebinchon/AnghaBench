; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_parse.c_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_parse.c_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64, i32*, i32, i32* }

@ps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dohead = common dso_local global i32 0, align 4
@ifhead = common dso_local global i32 0, align 4
@lbrace = common dso_local global i32 0, align 4
@case_ind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %101, %0
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %100 [
    i32 131, label %7
    i32 128, label %88
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %10 = sub i64 %9, 1
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %86 [
    i32 131, label %13
    i32 130, label %13
    i32 135, label %18
    i32 132, label %28
    i32 129, label %71
    i32 136, label %77
    i32 134, label %77
    i32 133, label %77
    i32 128, label %77
  ]

13:                                               ; preds = %7, %7
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 130, i32* %17, align 4
  br label %87

18:                                               ; preds = %7
  %19 = load i32, i32* @dohead, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 2), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 3), align 8
  br label %87

28:                                               ; preds = %7
  %29 = load i32, i32* @ifhead, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %35 = sub i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %62, %28
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 131
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 130
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @lbrace, align 4
  %58 = icmp ne i32 %56, %57
  br label %59

59:                                               ; preds = %51, %44, %37
  %60 = phi i1 [ false, %44 ], [ false, %37 ], [ %58, %51 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %1, align 4
  br label %37

65:                                               ; preds = %59
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 2), align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 3), align 8
  br label %87

71:                                               ; preds = %7
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 4), align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @case_ind, align 4
  br label %77

77:                                               ; preds = %7, %7, %7, %7, %71
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 131, i32* %81, align 4
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 2), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 3), align 8
  br label %87

86:                                               ; preds = %7
  br label %102

87:                                               ; preds = %77, %65, %18, %13
  br label %101

88:                                               ; preds = %2
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 0), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @dohead, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  %98 = sub i64 %97, 2
  store i64 %98, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps, i32 0, i32 1), align 8
  br label %101

99:                                               ; preds = %88
  br label %102

100:                                              ; preds = %2
  br label %102

101:                                              ; preds = %96, %87
  br label %2

102:                                              ; preds = %100, %99, %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
