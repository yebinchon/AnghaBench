; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@msgbufp = common dso_local global i32 0, align 4
@msgbuf_lock = common dso_local global i32 0, align 4
@LOG_ASYNC = common dso_local global i32 0, align 4
@logsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @logioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %56 [
    i32 131, label %13
    i32 132, label %18
    i32 134, label %19
    i32 130, label %36
    i32 133, label %41
    i32 128, label %45
    i32 129, label %51
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @msgbufp, align 4
  %15 = call i32 @msgbuf_getcount(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %58

18:                                               ; preds = %5
  br label %58

19:                                               ; preds = %5
  %20 = call i32 @mtx_lock(i32* @msgbuf_lock)
  %21 = load i64, i64* %9, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG_ASYNC, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 1), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 1), align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @LOG_ASYNC, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 1), align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  br label %58

36:                                               ; preds = %5
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fsetown(i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0))
  store i32 %40, i32* %6, align 4
  br label %59

41:                                               ; preds = %5
  %42 = call i32 @fgetown(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0))
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %58

45:                                               ; preds = %5
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @fsetown(i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0))
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %5
  %52 = call i32 @fgetown(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @logsoftc, i32 0, i32 0))
  %53 = sub nsw i32 0, %52
  %54 = load i64, i64* %9, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @ENOTTY, align 4
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %51, %41, %34, %18, %13
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %56, %45, %36
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @msgbuf_getcount(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
