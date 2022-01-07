; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_alternates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_alternates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@altnames = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alternates(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = call i32 @argcount(i8** %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i8**, i8*** @altnames, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %72

17:                                               ; preds = %13
  %18 = load i8**, i8*** @altnames, align 8
  store i8** %18, i8*** %5, align 8
  br label %19

19:                                               ; preds = %27, %17
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %5, align 8
  br label %19

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

32:                                               ; preds = %1
  %33 = load i8**, i8*** @altnames, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8**, i8*** @altnames, align 8
  %37 = call i32 @free(i8** %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = call i8* @calloc(i32 %39, i32 8)
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** @altnames, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8**, i8*** %3, align 8
  store i8** %46, i8*** %5, align 8
  %47 = load i8**, i8*** @altnames, align 8
  store i8** %47, i8*** %6, align 8
  br label %48

48:                                               ; preds = %65, %45
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = trunc i64 %55 to i32
  %57 = add i32 %56, 1
  %58 = call i8* @calloc(i32 %57, i32 1)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcpy(i8* %59, i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %5, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %6, align 8
  br label %48

70:                                               ; preds = %48
  %71 = load i8**, i8*** %6, align 8
  store i8* null, i8** %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %30, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @argcount(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
