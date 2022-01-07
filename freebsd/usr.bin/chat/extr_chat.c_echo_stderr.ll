; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_echo_stderr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_echo_stderr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@echo_stderr.need_lf = internal global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @echo_stderr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %14 [
    i32 13, label %5
    i32 -1, label %6
    i32 10, label %11
  ]

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load i32, i32* @echo_stderr.need_lf, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %22

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %1, %10
  %12 = load i32, i32* @STDERR_FILENO, align 4
  %13 = call i32 @write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* @echo_stderr.need_lf, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i8* @character(i32 %15)
  store i8* %16, i8** %3, align 8
  %17 = load i32, i32* @STDERR_FILENO, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @write(i32 %17, i8* %18, i32 %20)
  store i32 1, i32* @echo_stderr.need_lf, align 4
  br label %22

22:                                               ; preds = %14, %11, %9, %5
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i8* @character(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
