; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.siosc* }
%struct.siosc = type { i32 }
%struct.thread = type { i32 }
%struct.superiocmd = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @superio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.siosc*, align 8
  %13 = alloca %struct.superiocmd*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.siosc*, %struct.siosc** %15, align 8
  store %struct.siosc* %16, %struct.siosc** %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = inttoptr i64 %17 to %struct.superiocmd*
  store %struct.superiocmd* %18, %struct.superiocmd** %13, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %51 [
    i32 129, label %20
    i32 128, label %35
  ]

20:                                               ; preds = %5
  %21 = load %struct.siosc*, %struct.siosc** %12, align 8
  %22 = call i32 @sio_conf_enter(%struct.siosc* %21)
  %23 = load %struct.siosc*, %struct.siosc** %12, align 8
  %24 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %25 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %28 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sio_ldn_read(%struct.siosc* %23, i32 %26, i32 %29)
  %31 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %32 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.siosc*, %struct.siosc** %12, align 8
  %34 = call i32 @sio_conf_exit(%struct.siosc* %33)
  store i32 0, i32* %6, align 4
  br label %53

35:                                               ; preds = %5
  %36 = load %struct.siosc*, %struct.siosc** %12, align 8
  %37 = call i32 @sio_conf_enter(%struct.siosc* %36)
  %38 = load %struct.siosc*, %struct.siosc** %12, align 8
  %39 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %40 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %43 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.superiocmd*, %struct.superiocmd** %13, align 8
  %46 = getelementptr inbounds %struct.superiocmd, %struct.superiocmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sio_ldn_write(%struct.siosc* %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.siosc*, %struct.siosc** %12, align 8
  %50 = call i32 @sio_conf_exit(%struct.siosc* %49)
  store i32 0, i32* %6, align 4
  br label %53

51:                                               ; preds = %5
  %52 = load i32, i32* @ENOTTY, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %35, %20
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @sio_conf_enter(%struct.siosc*) #1

declare dso_local i32 @sio_ldn_read(%struct.siosc*, i32, i32) #1

declare dso_local i32 @sio_conf_exit(%struct.siosc*) #1

declare dso_local i32 @sio_ldn_write(%struct.siosc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
