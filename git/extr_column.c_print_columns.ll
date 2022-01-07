; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_print_columns.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_print_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.column_options = type { i8*, i8*, i32, i32 }

@COL_ENABLE_MASK = common dso_local global i32 0, align 4
@COL_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid layout mode %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_columns(%struct.string_list* %0, i32 %1, %struct.column_options* %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.column_options*, align 8
  %7 = alloca %struct.column_options, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.column_options* %2, %struct.column_options** %6, align 8
  %8 = load %struct.string_list*, %struct.string_list** %4, align 8
  %9 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %103

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @COL_ENABLE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @COL_AUTO, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i32 @memset(%struct.column_options* %7, i32 0, i32 24)
  %22 = load %struct.column_options*, %struct.column_options** %6, align 8
  %23 = icmp ne %struct.column_options* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.column_options*, %struct.column_options** %6, align 8
  %26 = getelementptr inbounds %struct.column_options, %struct.column_options* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.column_options*, %struct.column_options** %6, align 8
  %31 = getelementptr inbounds %struct.column_options, %struct.column_options* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %24, %13
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %33 ]
  %36 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.column_options*, %struct.column_options** %6, align 8
  %38 = icmp ne %struct.column_options* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.column_options*, %struct.column_options** %6, align 8
  %41 = getelementptr inbounds %struct.column_options, %struct.column_options* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.column_options*, %struct.column_options** %6, align 8
  %46 = getelementptr inbounds %struct.column_options, %struct.column_options* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.column_options*, %struct.column_options** %6, align 8
  %53 = icmp ne %struct.column_options* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.column_options*, %struct.column_options** %6, align 8
  %56 = getelementptr inbounds %struct.column_options, %struct.column_options* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ %57, %54 ], [ 1, %58 ]
  %61 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.column_options*, %struct.column_options** %6, align 8
  %63 = icmp ne %struct.column_options* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.column_options*, %struct.column_options** %6, align 8
  %66 = getelementptr inbounds %struct.column_options, %struct.column_options* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.column_options*, %struct.column_options** %6, align 8
  %71 = getelementptr inbounds %struct.column_options, %struct.column_options* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  br label %76

73:                                               ; preds = %64, %59
  %74 = call i32 (...) @term_columns()
  %75 = sub nsw i32 %74, 1
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i32 [ %72, %69 ], [ %75, %73 ]
  %78 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @column_active(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load %struct.string_list*, %struct.string_list** %4, align 8
  %84 = call i32 @display_plain(%struct.string_list* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %103

85:                                               ; preds = %76
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @COL_LAYOUT(i32 %86)
  switch i32 %87, label %99 [
    i32 129, label %88
    i32 128, label %95
    i32 130, label %95
  ]

88:                                               ; preds = %85
  %89 = load %struct.string_list*, %struct.string_list** %4, align 8
  %90 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.column_options, %struct.column_options* %7, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @display_plain(%struct.string_list* %89, i8* %91, i8* %93)
  br label %103

95:                                               ; preds = %85, %85
  %96 = load %struct.string_list*, %struct.string_list** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @display_table(%struct.string_list* %96, i32 %97, %struct.column_options* %7)
  br label %103

99:                                               ; preds = %85
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @COL_LAYOUT(i32 %100)
  %102 = call i32 @BUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %12, %82, %99, %95, %88
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.column_options*, i32, i32) #1

declare dso_local i32 @term_columns(...) #1

declare dso_local i32 @column_active(i32) #1

declare dso_local i32 @display_plain(%struct.string_list*, i8*, i8*) #1

declare dso_local i32 @COL_LAYOUT(i32) #1

declare dso_local i32 @display_table(%struct.string_list*, i32, %struct.column_options*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
