; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_charmap_range.digits = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"malformed charmap range\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%0*u\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_charmap_range(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** @add_charmap_range.digits, align 8
  %20 = call i32 @strcspn(i8* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %68, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @strncmp(i8* %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8*, i8** @add_charmap_range.digits, align 8
  %38 = call i64 @strspn(i8* %36, i8* %37)
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %32
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** @add_charmap_range.digits, align 8
  %50 = call i64 @strspn(i8* %48, i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %44
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = call i32 @atoi(i8* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %11, align 4
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56, %44, %32, %26, %22, %3
  %69 = call i32 @errf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %105

70:                                               ; preds = %56
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %97, %70
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %81, i32 %84, i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 @errf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %105

91:                                               ; preds = %80
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @add_charmap_impl(i8* %92, i32 %93, i32 1)
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %76

100:                                              ; preds = %76
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %100, %89, %68
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errf(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32) #1

declare dso_local i32 @add_charmap_impl(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
