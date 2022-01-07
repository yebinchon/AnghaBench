; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@SYSMOUSE_MAXFRAMES = common dso_local global i32 0, align 4
@M_SYSMOUSE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sysmouse_lock = common dso_local global i32 0, align 4
@sysmouse_buffer = common dso_local global i32* null, align 8
@sysmouse_length = common dso_local global i64 0, align 8
@sysmouse_start = common dso_local global i64 0, align 8
@sysmouse_level = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @sysmouse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmouse_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %11 = load i32, i32* @SYSMOUSE_MAXFRAMES, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* @M_SYSMOUSE, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i8* @malloc(i32 %12, i32 %13, i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %17 = load i32*, i32** @sysmouse_buffer, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @sysmouse_buffer, align 8
  store i64 0, i64* @sysmouse_length, align 8
  store i64 0, i64* @sysmouse_start, align 8
  store i64 0, i64* @sysmouse_level, align 8
  br label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @M_SYSMOUSE, align 4
  %25 = call i32 @free(i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  ret i32 0
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
