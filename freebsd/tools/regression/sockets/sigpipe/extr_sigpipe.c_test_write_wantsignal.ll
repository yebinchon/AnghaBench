; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_test_write_wantsignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_test_write_wantsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHUT_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: shutdown\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: write: didn't receive SIGPIPE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @test_write_wantsignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_wantsignal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SHUT_WR, align 4
  %9 = call i64 @shutdown(i32 %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @err(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @signal_setup(i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @test_write(i8* %17, i32 %18)
  %20 = call i32 (...) @got_signal()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  ret void
}

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @signal_setup(i8*) #1

declare dso_local i32 @test_write(i8*, i32) #1

declare dso_local i32 @got_signal(...) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
