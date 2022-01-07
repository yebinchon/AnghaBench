; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Okie dokie\00", align 1
@stdout = common dso_local global i32 0, align 4
@wait_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" -- Core dumped.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" -- Can't dump core.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @fork()
  store i32 %3, i32* %2, align 4
  switch i32 %3, label %8 [
    i32 -1, label %4
    i32 0, label %6
  ]

4:                                                ; preds = %0
  %5 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %0
  %9 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @wait_child(i32 %12)
  %14 = load i32, i32* @wait_status, align 4
  %15 = call i64 @WIFSIGNALED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i32, i32* @wait_status, align 4
  %19 = call i64 @WCOREDUMP(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %25

23:                                               ; preds = %17, %8
  %24 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @wait_child(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WCOREDUMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
