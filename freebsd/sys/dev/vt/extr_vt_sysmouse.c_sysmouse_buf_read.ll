; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_buf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_buf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32 }

@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@sysmouse_buffer = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@sysmouse_length = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@sysmouse_start = common dso_local global i32 0, align 4
@SYSMOUSE_MAXFRAMES = common dso_local global i32 0, align 4
@sysmouse_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio*, i32)* @sysmouse_buf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmouse_buf_read(%struct.uio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** @sysmouse_buffer, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i64, i64* @sysmouse_length, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load i32*, i32** @sysmouse_buffer, align 8
  %26 = load i32, i32* @sysmouse_start, align 4
  %27 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %32 = call i32 @memcpy(i8* %13, i32* %30, i32 %31)
  %33 = load i32, i32* @sysmouse_start, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @SYSMOUSE_MAXFRAMES, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* @sysmouse_start, align 4
  %37 = load i64, i64* @sysmouse_length, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* @sysmouse_length, align 8
  %39 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.uio*, %struct.uio** %4, align 8
  %42 = call i32 @uiomove(i8* %13, i32 %40, %struct.uio* %41)
  store i32 %42, i32* %8, align 4
  %43 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %24, %21, %16
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #2

declare dso_local i32 @mtx_lock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
