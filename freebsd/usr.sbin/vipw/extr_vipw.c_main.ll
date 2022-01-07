; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vipw/extr_vipw.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vipw/extr_vipw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"d:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"pw_init()\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pw_lock()\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pw_tmp()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_edit()\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"no changes made\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"password list updated\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"re-edit the password file? \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"fgetln()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %22 [
    i32 100, label %19
    i32 63, label %21
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %6, align 8
  br label %24

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %17, %21
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %19
  br label %12

25:                                               ; preds = %12
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %25
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @pw_init(i8* %39, i32* null)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = call i32 (...) @pw_lock()
  store i32 %45, i32* %8, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 (...) @pw_fini()
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pw_tmp(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 (...) @pw_fini()
  %56 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @close(i32 %58)
  %60 = call i32 @umask(i32 63)
  br label %61

61:                                               ; preds = %100, %57
  %62 = call i32 @pw_edit(i32 0)
  switch i32 %62, label %69 [
    i32 -1, label %63
    i32 0, label %66
  ]

63:                                               ; preds = %61
  %64 = call i32 (...) @pw_fini()
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %63
  %67 = call i32 (...) @pw_fini()
  %68 = call i32 @errx(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %61, %66
  br label %70

70:                                               ; preds = %69
  %71 = call i64 @pw_mkdb(i32* null)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 (...) @pw_fini()
  %75 = call i32 @errx(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  %77 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @fflush(i32 %78)
  %80 = load i32, i32* @stdin, align 4
  %81 = call i8* @fgetln(i32 %80, i64* %11)
  store i8* %81, i8** %10, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = call i32 (...) @pw_fini()
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i64, i64* %11, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 78
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 110
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89
  br label %101

100:                                              ; preds = %94, %86
  br label %61

101:                                              ; preds = %99
  %102 = call i32 (...) @pw_fini()
  %103 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @pw_init(i8*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pw_lock(...) #1

declare dso_local i32 @pw_fini(...) #1

declare dso_local i32 @pw_tmp(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @pw_edit(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @pw_mkdb(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgetln(i32, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
