; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i64 }

@cf = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_value() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @strbuf_reset(%struct.TYPE_4__* %7)
  br label %9

9:                                                ; preds = %92, %89, %81, %75, %56, %46, %29, %0
  %10 = call i32 (...) @get_next_char()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  store i8* null, i8** %1, align 8
  br label %97

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %1, align 8
  br label %97

26:                                               ; preds = %9
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %9

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @isspace(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %37
  br label %9

47:                                               ; preds = %34, %30
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 59
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  store i32 1, i32* %3, align 4
  br label %9

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %66, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @strbuf_addch(%struct.TYPE_4__* %64, i32 32)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  br label %59

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 92
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = call i32 (...) @get_next_char()
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  switch i32 %74, label %80 [
    i32 10, label %75
    i32 116, label %76
    i32 98, label %77
    i32 110, label %78
    i32 92, label %79
    i32 34, label %79
  ]

75:                                               ; preds = %72
  br label %9

76:                                               ; preds = %72
  store i32 9, i32* %5, align 4
  br label %81

77:                                               ; preds = %72
  store i32 8, i32* %5, align 4
  br label %81

78:                                               ; preds = %72
  store i32 10, i32* %5, align 4
  br label %81

79:                                               ; preds = %72, %72
  br label %81

80:                                               ; preds = %72
  store i8* null, i8** %1, align 8
  br label %97

81:                                               ; preds = %79, %78, %77, %76
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @strbuf_addch(%struct.TYPE_4__* %83, i32 %84)
  br label %9

86:                                               ; preds = %69
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 34
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %2, align 4
  %91 = sub nsw i32 1, %90
  store i32 %91, i32* %2, align 4
  br label %9

92:                                               ; preds = %86
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cf, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @strbuf_addch(%struct.TYPE_4__* %94, i32 %95)
  br label %9

97:                                               ; preds = %80, %21, %16
  %98 = load i8*, i8** %1, align 8
  ret i8* %98
}

declare dso_local i32 @strbuf_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
