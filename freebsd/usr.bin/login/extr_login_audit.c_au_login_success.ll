; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_au_login_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_audit.c_au_login_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@pwd = common dso_local global %struct.TYPE_5__* null, align 8
@A_GETCOND = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"could not determine audit condition\00", align 1
@AUC_NOAUDIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not calculate audit mask\00", align 1
@tid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"setaudit failed\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"audit error: au_open() failed\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"audit error: au_to_subject32() failed\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"audit error: au_to_return32() failed\00", align 1
@AUE_login = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"audit record was not committed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au_login_success() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwd, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwd, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @getpid()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @A_GETCOND, align 4
  %17 = call i64 @auditon(i32 %16, i32* %8, i32 4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %0
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOSYS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %87

24:                                               ; preds = %19
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %0
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AUC_NOAUDIT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %87

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pwd, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @au_user_mask(i32 %34, i32* %3)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %45 = call i32 @bcopy(i32* @tid, i32* %44, i32 4)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %47 = call i32 @bcopy(i32* %3, i32* %46, i32 4)
  %48 = call i64 @setaudit(%struct.TYPE_4__* %4)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %39
  %53 = call i32 (...) @au_open()
  store i32 %53, i32* %2, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (...) @geteuid()
  %60 = call i32 (...) @getegid()
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32* @au_to_subject32(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32* @tid)
  store i32* %65, i32** %1, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %57
  %70 = load i32, i32* %2, align 4
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @au_write(i32 %70, i32* %71)
  %73 = call i32* @au_to_return32(i32 0, i32 0)
  store i32* %73, i32** %1, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i32, i32* %2, align 4
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @au_write(i32 %78, i32* %79)
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @AUE_login, align 4
  %83 = call i32 @au_close(i32 %81, i32 1, i32 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %23, %30, %85, %77
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @auditon(i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @au_user_mask(i32, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @setaudit(%struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*) #1

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
