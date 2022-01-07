; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_mouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mouse_info = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@MOUSE_SHOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@MOUSE_HIDE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"argument to -m must be either on or off\00", align 1
@CONS_MOUSECTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%sing the mouse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mouse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mouse_info, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @MOUSE_SHOW, align 8
  %9 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @MOUSE_HIDE, align 8
  %16 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  br label %20

17:                                               ; preds = %10
  %18 = call i32 (...) @revert()
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i32, i32* @CONS_MOUSECTL, align 4
  %23 = call i32 @ioctl(i32 0, i32 %22, %struct.mouse_info* %3)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = call i32 (...) @revert()
  %27 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MOUSE_SHOW, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mouse_info*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
