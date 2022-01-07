; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_get_rcpt_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_btuinput.c_uinput_get_rcpt_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64, i32, i32 }

@uinput_get_rcpt_mask.last = internal global %struct.timespec zeroinitializer, align 8
@uinput_get_rcpt_mask.mask = internal global i32 0, align 4
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@MASK_POLL_INTERVAL = common dso_local global i64 0, align 8
@MASK_SYSCTL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EVDEV_RCPT_HW_MOUSE = common dso_local global i32 0, align 4
@EVDEV_RCPT_HW_KBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uinput_get_rcpt_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_get_rcpt_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %6 = call i32 @clock_gettime(i32 %5, %struct.timespec* %2)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @uinput_get_rcpt_mask.mask, align 4
  store i32 %9, i32* %1, align 4
  br label %44

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @uinput_get_rcpt_mask.last, i32 0, i32 0), align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %4, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.timespec, %struct.timespec* @uinput_get_rcpt_mask.last, i32 0, i32 1), align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @MASK_POLL_INTERVAL, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  store i64 4, i64* %3, align 8
  %27 = load i32, i32* @MASK_SYSCTL, align 4
  %28 = call i64 @sysctlbyname(i32 %27, i32* @uinput_get_rcpt_mask.mask, i64* %3, i32* null, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @EVDEV_RCPT_HW_MOUSE, align 4
  %36 = load i32, i32* @EVDEV_RCPT_HW_KBD, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* @uinput_get_rcpt_mask.mask, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* @uinput_get_rcpt_mask.mask, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %26
  %41 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* @uinput_get_rcpt_mask.last to i8*), i8* align 8 %41, i64 24, i1 false)
  br label %42

42:                                               ; preds = %40, %22
  %43 = load i32, i32* @uinput_get_rcpt_mask.mask, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %8
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @sysctlbyname(i32, i32*, i64*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
