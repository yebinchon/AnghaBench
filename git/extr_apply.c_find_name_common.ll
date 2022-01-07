; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_find_name_common.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_find_name_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i8*, i8*, i32, i8*, i32)* @find_name_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_name_common(%struct.strbuf* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %15, align 8
  br label %23

23:                                               ; preds = %21, %6
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %16, align 1
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load i8, i8* %16, align 1
  %35 = call i64 @isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i8, i8* %16, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %62

42:                                               ; preds = %37
  %43 = load i8, i8* %16, align 1
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @name_terminate(i8 signext %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %62

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %33, %28
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  %52 = load i8, i8* %16, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %15, align 8
  br label %61

61:                                               ; preds = %59, %55, %49
  br label %24

62:                                               ; preds = %47, %41, %24
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = call i8* @xstrdup_or_null(i8* %66)
  %68 = call i8* @squash_slash(i8* %67)
  store i8* %68, i8** %7, align 8
  br label %121

69:                                               ; preds = %62
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %69
  %79 = load i8*, i8** %10, align 8
  %80 = call i8* @xstrdup_or_null(i8* %79)
  %81 = call i8* @squash_slash(i8* %80)
  store i8* %81, i8** %7, align 8
  br label %121

82:                                               ; preds = %69
  %83 = load i8*, i8** %10, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @strncmp(i8* %92, i8* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = call i8* @xstrdup(i8* %98)
  %100 = call i8* @squash_slash(i8* %99)
  store i8* %100, i8** %7, align 8
  br label %121

101:                                              ; preds = %91, %85
  br label %102

102:                                              ; preds = %101, %82
  %103 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = call i8* @xstrfmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i8* %112)
  store i8* %113, i8** %18, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = call i8* @squash_slash(i8* %114)
  store i8* %115, i8** %7, align 8
  br label %121

116:                                              ; preds = %102
  %117 = load i8*, i8** %15, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i8* @xmemdupz(i8* %117, i32 %118)
  %120 = call i8* @squash_slash(i8* %119)
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %116, %107, %97, %78, %65
  %122 = load i8*, i8** %7, align 8
  ret i8* %122
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @name_terminate(i8 signext, i32) #1

declare dso_local i8* @squash_slash(i8*) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i32, i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
