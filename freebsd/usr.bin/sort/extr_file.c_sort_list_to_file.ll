; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_sort_list_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sort_mods }
%struct.sort_mods = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sort_list = type { i32, i32 }

@keys = common dso_local global %struct.TYPE_4__* null, align 8
@sort_opts_vals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@byte_sort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DEFAULT_SORT_ALGORITHM = common dso_local global i32 0, align 4
@debug_sort = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"sort_method=%s\0A\00", align 1
@mergesort = common dso_local global i32 0, align 4
@heapsort = common dso_local global i32 0, align 4
@sort_qsort = common dso_local global i32 0, align 4
@DEFAULT_SORT_FUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_list_to_file(%struct.sort_list* %0, i8* %1) #0 {
  %3 = alloca %struct.sort_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sort_mods*, align 8
  store %struct.sort_list* %0, %struct.sort_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keys, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.sort_mods* %8, %struct.sort_mods** %5, align 8
  %9 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %10 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %15 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %13
  %19 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %20 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %18
  %24 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %25 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %30 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %35 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load %struct.sort_mods*, %struct.sort_mods** %5, align 8
  %40 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  %45 = icmp eq i32 %44, 132
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @byte_sort, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  br label %50

50:                                               ; preds = %49, %46, %43
  br label %58

51:                                               ; preds = %38, %33, %28, %23, %18, %13, %2
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i32 @getstr(i32 9)
  %56 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 1), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  switch i32 %62, label %66 [
    i32 130, label %63
    i32 128, label %64
    i32 132, label %65
  ]

63:                                               ; preds = %61
  br label %69

64:                                               ; preds = %61
  br label %69

65:                                               ; preds = %61
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  br label %69

66:                                               ; preds = %61
  %67 = call i32 @getstr(i32 10)
  %68 = call i32 @errx(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %65, %64, %63
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  %72 = icmp eq i32 %71, 132
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @DEFAULT_SORT_ALGORITHM, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i64, i64* @debug_sort, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  %80 = call i8* @get_sort_method_name(i32 %79)
  %81 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sort_opts_vals, i32 0, i32 0), align 8
  switch i32 %83, label %110 [
    i32 128, label %84
    i32 130, label %95
    i32 131, label %100
    i32 129, label %105
  ]

84:                                               ; preds = %82
  %85 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %86 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %89 = getelementptr inbounds %struct.sort_list, %struct.sort_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rxsort(i32 %87, i32 %90)
  %92 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @sort_list_dump(%struct.sort_list* %92, i8* %93)
  br label %115

95:                                               ; preds = %82
  %96 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %97 = load i32, i32* @mergesort, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @mt_sort(%struct.sort_list* %96, i32 %97, i8* %98)
  br label %115

100:                                              ; preds = %82
  %101 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %102 = load i32, i32* @heapsort, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @mt_sort(%struct.sort_list* %101, i32 %102, i8* %103)
  br label %115

105:                                              ; preds = %82
  %106 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %107 = load i32, i32* @sort_qsort, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @mt_sort(%struct.sort_list* %106, i32 %107, i8* %108)
  br label %115

110:                                              ; preds = %82
  %111 = load %struct.sort_list*, %struct.sort_list** %3, align 8
  %112 = load i32, i32* @DEFAULT_SORT_FUNC, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @mt_sort(%struct.sort_list* %111, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %110, %105, %100, %95, %84
  ret void
}

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @getstr(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @get_sort_method_name(i32) #1

declare dso_local i32 @rxsort(i32, i32) #1

declare dso_local i32 @sort_list_dump(%struct.sort_list*, i8*) #1

declare dso_local i32 @mt_sort(%struct.sort_list*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
