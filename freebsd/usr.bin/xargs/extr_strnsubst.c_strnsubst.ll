; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_strnsubst.c_strnsubst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_strnsubst.c_strnsubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strnsubst(i8** %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %102

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  store i8* null, i8** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @calloc(i32 1, i64 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %38, %35
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @strlcpy(i8* %47, i8* %48, i64 %49)
  br label %99

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strstr(i8* %53, i8* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %95

59:                                               ; preds = %52
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = add i64 %61, %63
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add i64 %64, %66
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = sub i64 %67, %69
  %71 = add i64 %70, 1
  %72 = load i64, i64* %8, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @strlcat(i8* %75, i8* %76, i64 %77)
  br label %99

79:                                               ; preds = %59
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = sub i64 %83, %85
  %87 = call i32 @strncat(i8* %80, i8* %81, i64 %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strcat(i8* %88, i8* %89)
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %9, align 8
  br label %52

95:                                               ; preds = %58
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @strcat(i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %74, %46
  %100 = load i8*, i8** %10, align 8
  %101 = load i8**, i8*** %5, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %99, %16
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
