; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_utils.c_pw_checkfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_utils.c_pw_checkfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad file descriptor '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_checkfd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 45, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @INT_MAX, align 4
  %13 = call i32 @strtonum(i8* %11, i32 0, i32 %12, i8** %4)
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @EX_USAGE, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @errx(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
