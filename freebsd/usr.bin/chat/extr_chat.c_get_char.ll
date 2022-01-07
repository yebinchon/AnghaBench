; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_get_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"warning: read() on stdin returned %d\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't get file mode flags on stdin: %m\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't set file mode flags on stdin: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i32, i32* @STDIN_FILENO, align 4
  %5 = call i32 @read(i32 %4, i8* %3, i32 1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %11 [
    i32 1, label %7
    i32 -1, label %14
  ]

7:                                                ; preds = %0
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = and i32 %9, 127
  store i32 %10, i32* %1, align 4
  br label %31

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @chat_logf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %0, %11
  %15 = load i32, i32* @F_GETFL, align 4
  %16 = call i32 @fcntl(i32 0, i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @fatal(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @F_SETFL, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @fcntl(i32 0, i32 %21, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @fatal(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %20
  store i32 -1, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %7
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @chat_logf(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
