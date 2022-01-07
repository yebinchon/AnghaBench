; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sblock/extr_sblock.c_signaller.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sblock/extr_sblock.c_signaller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"signaller sleep(2)\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"signaller kill(%d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"signaller sleep(1)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"signaller send\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"signaller send ret %zd\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"signaller close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @signaller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signaller(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i64 @sleep(i32 2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %49

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = call i64 @kill(i32 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %49

19:                                               ; preds = %11
  %20 = call i64 @sleep(i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %49

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @send(i32 %25, i8* %6, i32 1, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @close(i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %49

44:                                               ; preds = %38
  %45 = call i64 @sleep(i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %9, %16, %22, %29, %35, %42, %47, %44
  ret void
}

declare dso_local i64 @sleep(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
