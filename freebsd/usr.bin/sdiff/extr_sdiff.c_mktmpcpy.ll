; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_mktmpcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_mktmpcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error getting file status from %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/sdiff.XXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"error writing to %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"error reading from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mktmpcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mktmpcpy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fstat(i32 %23, %struct.stat* %4)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISREG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @close(i32 %35)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %108

37:                                               ; preds = %29
  br label %52

38:                                               ; preds = %1
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %47, i32* %6, align 4
  br label %51

48:                                               ; preds = %42, %38
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %46
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* @tmpdir, align 4
  %54 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @mkstemp(i8* %59)
  store i32 %60, i32* %7, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %104

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i32, i32* %6, align 4
  %68 = mul nuw i64 4, %14
  %69 = trunc i64 %68 to i32
  %70 = call i32 @read(i32 %67, i32* %16, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i1 [ false, %66 ], [ %74, %72 ]
  br i1 %76, label %77, label %92

77:                                               ; preds = %75
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @write(i32 %78, i32* %16, i64 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 -1, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %77
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %104

91:                                               ; preds = %84
  br label %66

92:                                               ; preds = %75
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  br label %104

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @close(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i8*, i8** %10, align 8
  store i8* %103, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %108

104:                                              ; preds = %95, %88, %62
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @unlink(i8* %105)
  %107 = call i32 @exit(i32 2) #4
  unreachable

108:                                              ; preds = %98, %34
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @write(i32, i32*, i64) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
