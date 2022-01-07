; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_misc.c_brace_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_misc.c_brace_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"brace_subst overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brace_subst(i8* %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %14, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %47, %4
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i64, i64* %14, align 8
  %32 = icmp ugt i64 %31, 2
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 2
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @errx(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33, %30
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %43, 2
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %13, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %10, align 8
  br label %26

50:                                               ; preds = %26
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i8* @reallocf(i8* %56, i64 %57)
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i32 @err(i32 2, i32* null)
  br label %65

65:                                               ; preds = %63, %54
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %99, %66
  %71 = load i8*, i8** %10, align 8
  %72 = call i8* @strstr(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %72, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i8* %75, i8* %76, i32 %82)
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %14, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i8* %91, i8* %92, i32 %94)
  %96 = load i64, i64* %14, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %12, align 8
  br label %99

99:                                               ; preds = %74
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  store i8* %101, i8** %10, align 8
  br label %70

102:                                              ; preds = %70
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(i8* %103, i8* %104, i32 %110)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
