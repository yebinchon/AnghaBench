; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_utils.c_nis_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_utils.c_nis_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/usr/bin/make\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/var/yp/\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"make exited with status %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nis_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @fflush(i32* null)
  %5 = call i32 (...) @fork()
  store i32 %5, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %27

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @execlp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %14 = call i32 @_exit(i32 1) #3
  unreachable

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @waitpid(i32 %16, i32* %3, i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @WEXITSTATUS(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %7
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
