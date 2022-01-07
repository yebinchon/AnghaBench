; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_audit_logout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_audit_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@A_GETCOND = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"could not determine audit condition\00", align 1
@AUC_NOAUDIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"audit error: au_open() failed\00", align 1
@tid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"audit error: au_to_subject32() failed\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"audit error: au_to_return32() failed\00", align 1
@AUE_logout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"audit record was not committed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_logout() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @getpid()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @A_GETCOND, align 4
  %15 = call i64 @auditon(i32 %14, i32* %6, i32 4)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOSYS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %64

22:                                               ; preds = %17
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %0
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AUC_NOAUDIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %64

29:                                               ; preds = %24
  %30 = call i32 (...) @au_open()
  store i32 %30, i32* %2, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (...) @geteuid()
  %37 = call i32 (...) @getegid()
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @au_to_subject32(i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* @tid)
  store i32* %42, i32** %1, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %34
  %47 = load i32, i32* %2, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @au_write(i32 %47, i32* %48)
  %50 = call i32* @au_to_return32(i32 0, i32 0)
  store i32* %50, i32** %1, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %2, align 4
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @au_write(i32 %55, i32* %56)
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @AUE_logout, align 4
  %60 = call i32 @au_close(i32 %58, i32 1, i32 %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %21, %28, %62, %54
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

declare dso_local i32* @au_to_return32(i32, i32) #1

declare dso_local i32 @au_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
