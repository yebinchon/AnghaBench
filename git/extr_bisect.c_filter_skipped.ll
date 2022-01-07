; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_filter_skipped.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_filter_skipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@skipped_revs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @filter_skipped(%struct.commit_list* %0, %struct.commit_list** %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit_list**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit_list**, align 8
  %14 = alloca %struct.commit_list*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %7, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.commit_list* null, %struct.commit_list** %12, align 8
  store %struct.commit_list** %12, %struct.commit_list*** %13, align 8
  %15 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  store %struct.commit_list* null, %struct.commit_list** %15, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @skipped_revs, i32 0, i32 0), align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %29, %struct.commit_list** %6, align 8
  br label %109

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %96, %30
  %32 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %33 = icmp ne %struct.commit_list* %32, null
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 0
  %37 = load %struct.commit_list*, %struct.commit_list** %36, align 8
  store %struct.commit_list* %37, %struct.commit_list** %14, align 8
  %38 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %39 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %38, i32 0, i32 0
  store %struct.commit_list* null, %struct.commit_list** %39, align 8
  %40 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %41 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i64 @oid_array_lookup(%struct.TYPE_7__* @skipped_revs, i32* %44)
  %46 = icmp sle i64 0, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %50, %47
  %57 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %58 = load %struct.commit_list**, %struct.commit_list*** %8, align 8
  store %struct.commit_list* %57, %struct.commit_list** %58, align 8
  %59 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 0
  store %struct.commit_list** %60, %struct.commit_list*** %8, align 8
  br label %96

61:                                               ; preds = %34
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %72, %struct.commit_list** %6, align 8
  br label %109

73:                                               ; preds = %67
  br label %84

74:                                               ; preds = %61
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  store i32 -1, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %77, %74
  br label %84

84:                                               ; preds = %83, %73
  %85 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %86 = load %struct.commit_list**, %struct.commit_list*** %13, align 8
  store %struct.commit_list* %85, %struct.commit_list** %86, align 8
  %87 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 0
  store %struct.commit_list** %88, %struct.commit_list*** %13, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %91, %84
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %97, %struct.commit_list** %7, align 8
  br label %31

98:                                               ; preds = %31
  %99 = load i32*, i32** %11, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %101, %98
  %108 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %108, %struct.commit_list** %6, align 8
  br label %109

109:                                              ; preds = %107, %71, %28
  %110 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  ret %struct.commit_list* %110
}

declare dso_local i64 @oid_array_lookup(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
