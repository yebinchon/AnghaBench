; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_constty_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@constty = common dso_local global i32* null, align 8
@consmsgbuf = common dso_local global i32 0, align 4
@conscallout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@constty_wakeups_per_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @constty_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constty_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32*, i32** @constty, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load i32*, i32** @constty, align 8
  %8 = call i32 @tty_lock(i32* %7)
  br label %9

9:                                                ; preds = %20, %6
  %10 = call i32 @msgbuf_getchar(i32* @consmsgbuf)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32*, i32** @constty, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @tty_putchar(i32* %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** @constty, align 8
  %19 = call i32 @tty_unlock(i32* %18)
  store i32* null, i32** @constty, align 8
  br label %21

20:                                               ; preds = %12
  br label %9

21:                                               ; preds = %17, %9
  %22 = load i32*, i32** @constty, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** @constty, align 8
  %26 = call i32 @tty_unlock(i32* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32*, i32** @constty, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @hz, align 4
  %33 = load i32, i32* @constty_wakeups_per_second, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 @callout_reset(i32* @conscallout, i32 %34, void (i8*)* @constty_timeout, i32* null)
  br label %38

36:                                               ; preds = %28
  %37 = call i32 (...) @constty_clear()
  br label %38

38:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @tty_lock(i32*) #1

declare dso_local i32 @msgbuf_getchar(i32*) #1

declare dso_local i64 @tty_putchar(i32*, i32) #1

declare dso_local i32 @tty_unlock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i32*) #1

declare dso_local i32 @constty_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
