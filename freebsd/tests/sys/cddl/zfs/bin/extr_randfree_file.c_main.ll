; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_randfree_file.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_randfree_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"l:s:n:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"fcntl: F_FREESP not supported\0A\00", align 1
@F_FREESP = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.flock, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %32 [
    i32 108, label %22
    i32 115, label %26
    i32 110, label %29
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i8* @atoll(i32 %23)
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %8, align 8
  br label %37

26:                                               ; preds = %20
  %27 = load i32, i32* @optarg, align 4
  %28 = call i8* @atoll(i32 %27)
  store i8* %28, i8** %9, align 8
  br label %37

29:                                               ; preds = %20
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @atoll(i32 %30)
  store i8* %31, i8** %10, align 8
  br label %37

32:                                               ; preds = %20
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @usage(i8* %35)
  br label %37

37:                                               ; preds = %32, %29, %26, %22
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @optind, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  br label %54

49:                                               ; preds = %38
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @usage(i8* %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @malloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @O_RDWR, align 4
  %60 = load i32, i32* @O_CREAT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @O_TRUNC, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @open(i8* %58, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %80

68:                                               ; preds = %54
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @write(i32 %69, i8* %70, i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %75, %66
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoll(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
