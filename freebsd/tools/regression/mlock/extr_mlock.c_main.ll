; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/mlock/extr_mlock.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/mlock/extr_mlock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"mlock must run as root\00", align 1
@errno = common dso_local global i64 0, align 8
@NOBODY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"getpwnam: user \22%s\22 not found\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"getpwnam: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"getpwnam: user \22%s\22 has uid 0\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"mmap: %s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mlock privileged: %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"munlock privileged: %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"seteuid: %s\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"mlock unprivileged: succeeded but shouldn't have\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"mlock unprivileged: %s\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"munlock unprivileged: succeeded but shouldn't have\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"munlock unprivileged: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i64 (...) @geteuid()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  store i64 0, i64* @errno, align 8
  %14 = load i32, i32* @NOBODY, align 4
  %15 = call %struct.passwd* @getpwnam(i32 %14)
  store %struct.passwd* %15, %struct.passwd** %6, align 8
  %16 = load %struct.passwd*, %struct.passwd** %6, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* @errno, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @NOBODY, align 4
  %23 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18, %13
  %25 = load %struct.passwd*, %struct.passwd** %6, align 8
  %26 = icmp eq %struct.passwd* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @strerror(i64 %28)
  %30 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.passwd*, %struct.passwd** %6, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @NOBODY, align 4
  %38 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 (...) @getpagesize()
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PROT_READ, align 4
  %43 = load i32, i32* @PROT_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MAP_ANON, align 4
  %46 = call i8* @mmap(i32* null, i32 %41, i32 %44, i32 %45, i32 -1, i32 0)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** @MAP_FAILED, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i64, i64* @errno, align 8
  %52 = call i32 @strerror(i64 %51)
  %53 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @mlock(i8* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* @errno, align 8
  %61 = call i32 @strerror(i64 %60)
  %62 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @munlock(i8* %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i64, i64* @errno, align 8
  %70 = call i32 @strerror(i64 %69)
  %71 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.passwd*, %struct.passwd** %6, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @seteuid(i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @errno, align 8
  %80 = call i32 @strerror(i64 %79)
  %81 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @mlock(i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EPERM, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* @errno, align 8
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @munlock(i8* %98, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @EPERM, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i64, i64* @errno, align 8
  %110 = call i32 @strerror(i64 %109)
  %111 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %104
  ret i32 0
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlock(i8*, i32) #1

declare dso_local i64 @munlock(i8*, i32) #1

declare dso_local i64 @seteuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
