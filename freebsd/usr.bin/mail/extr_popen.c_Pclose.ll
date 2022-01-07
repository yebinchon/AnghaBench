; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_Pclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_Pclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Pclose(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @file_pid(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @unregister_file(i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @fclose(i32* %10)
  %12 = call i32 @sigemptyset(i32* %4)
  %13 = load i32, i32* @SIGINT, align 4
  %14 = call i32 @sigaddset(i32* %4, i32 %13)
  %15 = load i32, i32* @SIGHUP, align 4
  %16 = call i32 @sigaddset(i32* %4, i32 %15)
  %17 = load i32, i32* @SIG_BLOCK, align 4
  %18 = call i32 @sigprocmask(i32 %17, i32* %4, i32* %5)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @wait_child(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SIG_SETMASK, align 4
  %22 = call i32 @sigprocmask(i32 %21, i32* %5, i32* null)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @file_pid(i32*) #1

declare dso_local i32 @unregister_file(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @wait_child(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
