; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_buf_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_buf_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@sysmouse_buffer = common dso_local global i32* null, align 8
@sysmouse_length = common dso_local global i32 0, align 4
@SYSMOUSE_MAXFRAMES = common dso_local global i32 0, align 4
@sysmouse_start = common dso_local global i32 0, align 4
@sysmouse_sleep = common dso_local global i32 0, align 4
@sysmouse_bufpoll = common dso_local global i32 0, align 4
@sysmouse_flags = common dso_local global i32 0, align 4
@SM_ASYNC = common dso_local global i32 0, align 4
@sysmouse_sigio = common dso_local global i32* null, align 8
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sysmouse_buf_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysmouse_buf_store(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %5 = zext i32 %4 to i64
  %6 = load i32*, i32** @sysmouse_buffer, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @sysmouse_length, align 4
  %10 = load i32, i32* @SYSMOUSE_MAXFRAMES, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %42

13:                                               ; preds = %8
  %14 = load i32, i32* @sysmouse_start, align 4
  %15 = load i32, i32* @sysmouse_length, align 4
  %16 = add i32 %14, %15
  %17 = load i32, i32* @SYSMOUSE_MAXFRAMES, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** @sysmouse_buffer, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %22 = mul i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %27 = call i32 @memcpy(i32* %24, i8* %25, i32 %26)
  %28 = load i32, i32* @sysmouse_length, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* @sysmouse_length, align 4
  %30 = call i32 @cv_broadcast(i32* @sysmouse_sleep)
  %31 = call i32 @selwakeup(i32* @sysmouse_bufpoll)
  %32 = load i32, i32* @sysmouse_flags, align 4
  %33 = load i32, i32* @SM_ASYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %13
  %37 = load i32*, i32** @sysmouse_sigio, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @SIGIO, align 4
  %41 = call i32 @pgsigio(i32** @sysmouse_sigio, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %12, %39, %36, %13
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
