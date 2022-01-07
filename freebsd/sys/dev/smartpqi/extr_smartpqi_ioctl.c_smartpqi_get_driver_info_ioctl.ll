; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_get_driver_info_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_get_driver_info_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pqisrc_softstate* }
%struct.pqisrc_softstate = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"IN udata = %p cdev = %p\0A\00", align 1
@PQISRC_DRIVER_MAJOR = common dso_local global i32 0, align 4
@PQISRC_DRIVER_MINOR = common dso_local global i32 0, align 4
@PQISRC_DRIVER_RELEASE = common dso_local global i32 0, align 4
@PQISRC_DRIVER_REVISION = common dso_local global i32 0, align 4
@PQI_MAX_DEVICES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cdev*)* @smartpqi_get_driver_info_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_get_driver_info_ioctl(i32 %0, %struct.cdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.pqisrc_softstate*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cdev* %1, %struct.cdev** %4, align 8
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %8, align 8
  store %struct.pqisrc_softstate* %9, %struct.pqisrc_softstate** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.cdev*, %struct.cdev** %4, align 8
  %15 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.cdev* %14)
  %16 = load i32, i32* @PQISRC_DRIVER_MAJOR, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PQISRC_DRIVER_MINOR, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @PQISRC_DRIVER_RELEASE, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PQISRC_DRIVER_REVISION, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @PQI_MAX_DEVICES, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %5, align 8
  %33 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %5, align 8
  %38 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
