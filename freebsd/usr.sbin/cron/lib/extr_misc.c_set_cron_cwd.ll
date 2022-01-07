; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/lib/extr_misc.c_set_cron_cwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/lib/extr_misc.c_set_cron_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@CRONDIR = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: created\00", align 1
@ERROR_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s: mkdir\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"'%s' is not a directory, bailing out\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot chdir(%s), bailing out\00", align 1
@SPOOL_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cron_cwd() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = load i32, i32* @CRONDIR, align 4
  %3 = call i64 @stat(i32 %2, %struct.stat* %1)
  %4 = load i64, i64* @OK, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load i64, i64* @errno, align 8
  %8 = load i64, i64* @ENOENT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i32, i32* @CRONDIR, align 4
  %12 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @OK, align 8
  %14 = load i32, i32* @CRONDIR, align 4
  %15 = call i64 @mkdir(i32 %14, i32 448)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* @CRONDIR, align 4
  %19 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CRONDIR, align 4
  %21 = call i64 @stat(i32 %20, %struct.stat* %1)
  br label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @ERROR_EXIT, align 4
  %24 = load i32, i32* @CRONDIR, align 4
  %25 = call i32 @err(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %6, %0
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFDIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ERROR_EXIT, align 4
  %35 = load i32, i32* @CRONDIR, align 4
  %36 = call i32 @err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @CRONDIR, align 4
  %39 = call i64 @chdir(i32 %38)
  %40 = load i64, i64* @OK, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR_EXIT, align 4
  %44 = load i32, i32* @CRONDIR, align 4
  %45 = call i32 @err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @SPOOL_DIR, align 4
  %48 = call i64 @stat(i32 %47, %struct.stat* %1)
  %49 = load i64, i64* @OK, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* @SPOOL_DIR, align 4
  %57 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* @OK, align 8
  %59 = load i32, i32* @SPOOL_DIR, align 4
  %60 = call i64 @mkdir(i32 %59, i32 448)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @SPOOL_DIR, align 4
  %64 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @SPOOL_DIR, align 4
  %66 = call i64 @stat(i32 %65, %struct.stat* %1)
  br label %71

67:                                               ; preds = %55
  %68 = load i32, i32* @ERROR_EXIT, align 4
  %69 = load i32, i32* @SPOOL_DIR, align 4
  %70 = call i32 @err(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %51, %46
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @S_IFDIR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ERROR_EXIT, align 4
  %80 = load i32, i32* @SPOOL_DIR, align 4
  %81 = call i32 @err(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %72
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @mkdir(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @chdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
