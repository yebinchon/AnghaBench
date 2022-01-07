; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_check_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_check_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"check_child: lost child %s exited\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"check_child: lost child %s terminated; signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_child(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @WNOHANG, align 4
  %9 = call i64 @waitpid(i32 %7, i32* %6, i32 %8)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @WIFEXITED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %29

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @WIFSIGNALED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WTERMSIG(i32 %24)
  %26 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @log_warnx(i8*, i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
