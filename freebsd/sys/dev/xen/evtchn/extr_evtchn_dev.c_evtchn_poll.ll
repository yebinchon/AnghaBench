; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.per_user_data = type { i64, i64, i32, i32 }

@POLLERR = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @evtchn_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.per_user_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = bitcast %struct.per_user_data** %8 to i8**
  %12 = call i32 @devfs_get_cdevpriv(i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @POLLERR, align 4
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @POLLOUT, align 4
  %20 = load i32, i32* @POLLWRNORM, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %24 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %23, i32 0, i32 2
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load i32, i32* @POLLRDNORM, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %17
  %33 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %34 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %37 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @POLLIN, align 4
  %43 = load i32, i32* @POLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %51 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %50, i32 0, i32 3
  %52 = call i32 @selrecord(%struct.thread* %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %40
  br label %54

54:                                               ; preds = %53, %17
  %55 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %56 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %55, i32 0, i32 2
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
