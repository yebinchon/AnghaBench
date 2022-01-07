; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_fbtab.c_login_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_fbtab.c_login_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@GLOB_NOSORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: chflags(%s): %m\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: chmod(%s): %m\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: chown(%s): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32)* @login_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_protect(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @GLOB_NOSORT, align 4
  %16 = call i64 @glob(i8* %14, i32 %15, i32* null, %struct.TYPE_4__* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %83

19:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i32, i32* %13, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @chflags(i8* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOENT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EOPNOTSUPP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @syslog(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %39, %35, %25
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @chmod(i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ENOENT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @syslog(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %53, %48
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @chown(i8* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOENT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @LOG_ERR, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @syslog(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %68, %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %20

81:                                               ; preds = %20
  %82 = call i32 @globfree(%struct.TYPE_4__* %11)
  br label %83

83:                                               ; preds = %81, %18
  ret void
}

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @chflags(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
