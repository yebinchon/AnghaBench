; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/threadsappend/extr_threadsappend.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/threadsappend/extr_threadsappend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Invalid return from sysconf(_SC_NPROCESSORS_ONLN) : errno (decimal)=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Must execute this binary on a multi-processor system\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@outfd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"zfs_threadsappend: open(%s, O_RDWR|O_CREAT|O_APPEND|O_TRUNC, 0777) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@go = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"zfs_threadsappend: thr_create(#%d) failed error=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %16 = call i64 @sysconf(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %14
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %24
  %32 = load i8**, i8*** %5, align 8
  %33 = load i64, i64* @optind, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @optind, align 8
  %35 = getelementptr inbounds i8*, i8** %32, i64 %33
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @O_RDWR, align 4
  %38 = load i32, i32* @O_CREAT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @O_APPEND, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @O_TRUNC, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @open(i8* %36, i32 %43, i32 511)
  store i32 %44, i32* @outfd, align 4
  %45 = load i32, i32* @outfd, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %56

47:                                               ; preds = %31
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = load i64, i64* @optind, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %62
  %64 = load i32, i32* @go, align 4
  %65 = bitcast i32* %9 to i8*
  %66 = call i32 @pthread_create(i32* %63, i32* null, i32 %64, i8* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %57

80:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @pthread_join(i32 %88, i32* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %96

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %81

96:                                               ; preds = %91, %81
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
