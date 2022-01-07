; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_addr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%lu: %s: unterminated regular expression\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@AT_RE = common dso_local global i64 0, align 8
@AT_LAST = common dso_local global i64 0, align 8
@AT_RELLINE = common dso_local global i64 0, align 8
@AT_LINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%lu: %s: expected context address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.s_addr*)* @compile_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compile_addr(i8* %0, %struct.s_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.s_addr* %1, %struct.s_addr** %5, align 8
  %11 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %17 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %88 [
    i32 92, label %21
    i32 47, label %24
    i32 36, label %60
    i32 43, label %66
    i32 48, label %72
    i32 49, label %72
    i32 50, label %72
    i32 51, label %72
    i32 52, label %72
    i32 53, label %72
    i32 54, label %72
    i32 55, label %72
    i32 56, label %72
    i32 57, label %72
  ]

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %2, %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @compile_delimited(i8* %25, i8* %15, i32 0)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @linenum, align 4
  %31 = load i32, i32* @fname, align 4
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 73
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8, i8* %15, align 16
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %47 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %55

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = call i32* @compile_re(i8* %15, i32 %50)
  %52 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %53 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i64, i64* @AT_RE, align 8
  %57 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %58 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %4, align 8
  store i8* %59, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %92

60:                                               ; preds = %2
  %61 = load i64, i64* @AT_LAST, align 8
  %62 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %63 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %92

66:                                               ; preds = %2
  %67 = load i64, i64* @AT_RELLINE, align 8
  %68 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %69 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %66
  %73 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %74 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @AT_LINE, align 8
  %79 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %80 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @strtol(i8* %82, i8** %6, i32 10)
  %84 = load %struct.s_addr*, %struct.s_addr** %5, align 8
  %85 = getelementptr inbounds %struct.s_addr, %struct.s_addr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i8*, i8** %6, align 8
  store i8* %87, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %92

88:                                               ; preds = %2
  %89 = load i32, i32* @linenum, align 4
  %90 = load i32, i32* @fname, align 4
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %81, %60, %55
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i8*, i8** %3, align 8
  ret i8* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @compile_delimited(i8*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i32, i32) #2

declare dso_local i32* @compile_re(i8*, i32) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
