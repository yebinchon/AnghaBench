; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_au_login_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_au_login_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@A_GETCOND = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"could not determine audit condition\00", align 1
@AUC_NOAUDIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"audit error: au_open() failed\00", align 1
@tid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"audit error: au_to_subject32() failed\00", align 1
@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"audit error: au_to_text() failed\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"audit error: au_to_return32() failed\00", align 1
@AUE_login = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"audit error: au_close() was not committed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au_login_fail(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @getpid()
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @A_GETCOND, align 4
  %13 = call i64 @auditon(i32 %12, i32* %7, i32 4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOSYS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %91

20:                                               ; preds = %15
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AUC_NOAUDIT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %91

27:                                               ; preds = %22
  %28 = call i32 (...) @au_open()
  store i32 %28, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = call i32 (...) @geteuid()
  %37 = call i32 (...) @getegid()
  %38 = load i32, i32* %10, align 4
  %39 = call i32* @au_to_subject32(i32 -1, i32 %36, i32 %37, i32 -1, i32 -1, i32 %38, i32 -1, i32* @tid)
  store i32* %39, i32** %5, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %63

44:                                               ; preds = %32
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (...) @geteuid()
  %53 = call i32 (...) @getegid()
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32* @au_to_subject32(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32* @tid)
  store i32* %58, i32** %5, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @au_write(i32 %64, i32* %65)
  %67 = load i8*, i8** %3, align 8
  %68 = call i32* @au_to_text(i8* %67)
  store i32* %68, i32** %5, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @au_write(i32 %73, i32* %74)
  %76 = load i64, i64* @errno, align 8
  %77 = call i32* @au_to_return32(i32 1, i64 %76)
  store i32* %77, i32** %5, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @au_write(i32 %82, i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AUE_login, align 4
  %87 = call i32 @au_close(i32 %85, i32 1, i32 %86)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %19, %26, %89, %81
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @auditon(i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @au_open(...) #1

declare dso_local i32* @au_to_subject32(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i32 @au_write(i32, i32*) #1

declare dso_local i32* @au_to_text(i8*) #1

declare dso_local i32* @au_to_return32(i32, i64) #1

declare dso_local i32 @au_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
