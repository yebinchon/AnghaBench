; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_mouse_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_mouse_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mouse_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UCHAR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"argument to -M must be 0 through %d\00", align 1
@MOUSE_MOUSECHAR = common dso_local global i32 0, align 4
@CONS_MOUSECTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"setting mouse character\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_mouse_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mouse_char(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mouse_info, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strtol(i8* %5, i32* null, i32 0)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @UCHAR_MAX, align 4
  %12 = sub nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9, %1
  %16 = call i32 (...) @revert()
  %17 = load i32, i32* @UCHAR_MAX, align 4
  %18 = sub nsw i32 %17, 3
  %19 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %33

20:                                               ; preds = %9
  %21 = load i32, i32* @MOUSE_MOUSECHAR, align 4
  %22 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CONS_MOUSECTL, align 4
  %28 = call i32 @ioctl(i32 0, i32 %27, %struct.mouse_info* %3)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = call i32 (...) @revert()
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %15, %30, %20
  ret void
}

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mouse_info*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
