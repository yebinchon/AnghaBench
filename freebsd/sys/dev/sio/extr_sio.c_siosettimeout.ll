; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siosettimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siosettimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sio_timeout_handle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@sio_timeout = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@sio_numunits = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@sio_timeouts_until_log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @siosettimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siosettimeout() #0 {
  %1 = alloca %struct.com_s*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @sio_timeout_handle, align 4
  %5 = call i32 @untimeout(i32 (i8*)* @comwakeup, i8* null, i32 %4)
  %6 = load i32, i32* @hz, align 4
  store i32 %6, i32* @sio_timeout, align 4
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %58, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @sio_numunits, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.com_s* @com_addr(i32 %13)
  store %struct.com_s* %14, %struct.com_s** %1, align 8
  %15 = load %struct.com_s*, %struct.com_s** %1, align 8
  %16 = icmp ne %struct.com_s* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = load %struct.com_s*, %struct.com_s** %1, align 8
  %19 = getelementptr inbounds %struct.com_s, %struct.com_s* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.com_s*, %struct.com_s** %1, align 8
  %24 = getelementptr inbounds %struct.com_s, %struct.com_s* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TS_ISOPEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %22
  %32 = load %struct.com_s*, %struct.com_s** %1, align 8
  %33 = getelementptr inbounds %struct.com_s, %struct.com_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %2, align 8
  %38 = load %struct.com_s*, %struct.com_s** %1, align 8
  %39 = getelementptr inbounds %struct.com_s, %struct.com_s* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.com_s*, %struct.com_s** %1, align 8
  %44 = getelementptr inbounds %struct.com_s, %struct.com_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %36
  %48 = load i32, i32* @hz, align 4
  %49 = icmp sgt i32 %48, 200
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @hz, align 4
  %52 = sdiv i32 %51, 200
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 1, %53 ]
  store i32 %55, i32* @sio_timeout, align 4
  br label %61

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %31, %22, %17, %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %8

61:                                               ; preds = %54, %8
  %62 = load i64, i64* %2, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @hz, align 4
  %66 = load i32, i32* @sio_timeout, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* @sio_timeouts_until_log, align 4
  %68 = load i32, i32* @sio_timeout, align 4
  %69 = call i32 @timeout(i32 (i8*)* @comwakeup, i8* null, i32 %68)
  store i32 %69, i32* @sio_timeout_handle, align 4
  br label %74

70:                                               ; preds = %61
  store i32 1, i32* @sio_timeouts_until_log, align 4
  %71 = call i32 @comwakeup(i8* null)
  %72 = load i32, i32* @sio_timeout_handle, align 4
  %73 = call i32 @untimeout(i32 (i8*)* @comwakeup, i8* null, i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  ret void
}

declare dso_local i32 @untimeout(i32 (i8*)*, i8*, i32) #1

declare dso_local i32 @comwakeup(i8*) #1

declare dso_local %struct.com_s* @com_addr(i32) #1

declare dso_local i32 @timeout(i32 (i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
