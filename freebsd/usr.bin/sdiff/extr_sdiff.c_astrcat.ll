; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_astrcat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_astrcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@astrcat.offset = internal global i64 0, align 8
@astrcat.oldstr = internal global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"astrcat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @astrcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @astrcat(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  %13 = load i8**, i8*** %3, align 8
  store i8* %12, i8** %13, align 8
  %14 = icmp ne i8* %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* @astrcat.offset, align 8
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @astrcat.oldstr, align 8
  br label %73

23:                                               ; preds = %2
  %24 = load i8*, i8** @astrcat.oldstr, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* @astrcat.offset, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** @astrcat.oldstr, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i64, i64* @astrcat.offset, align 8
  %36 = add i64 %35, 1
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add i64 %36, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i8* @realloc(i8* %42, i64 %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = call i32 @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %34
  %50 = load i8*, i8** %6, align 8
  %51 = load i8**, i8*** %3, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* @astrcat.offset, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @astrcat.offset, align 8
  %58 = sub i64 %56, %57
  %59 = call i32 @strlcpy(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i8**, i8*** %3, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* @astrcat.offset, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @astrcat.offset, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @strlcat(i8* %63, i8* %64, i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %69, 1
  store i64 %70, i64* @astrcat.offset, align 8
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** @astrcat.oldstr, align 8
  br label %73

73:                                               ; preds = %49, %17
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
