; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.fuse_data = type { i32, i32, i32 }

@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_device_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.fuse_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = bitcast %struct.fuse_data** %8 to i8**
  %12 = call i32 @devfs_get_cdevpriv(i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @POLLHUP, align 4
  %18 = load i32, i32* @POLLIN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @POLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POLLOUT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @POLLWRNORM, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %16, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @POLLIN, align 4
  %30 = load i32, i32* @POLLRDNORM, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %27
  %35 = load %struct.fuse_data*, %struct.fuse_data** %8, align 8
  %36 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fuse_lck_mtx_lock(i32 %37)
  %39 = load %struct.fuse_data*, %struct.fuse_data** %8, align 8
  %40 = call i64 @fdata_get_dead(%struct.fuse_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.fuse_data*, %struct.fuse_data** %8, align 8
  %44 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %43, i32 0, i32 2
  %45 = call i64 @STAILQ_FIRST(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @POLLIN, align 4
  %50 = load i32, i32* @POLLRDNORM, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = load %struct.fuse_data*, %struct.fuse_data** %8, align 8
  %58 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %57, i32 0, i32 1
  %59 = call i32 @selrecord(%struct.thread* %56, i32* %58)
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.fuse_data*, %struct.fuse_data** %8, align 8
  %62 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fuse_lck_mtx_unlock(i32 %63)
  br label %65

65:                                               ; preds = %60, %27
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @POLLOUT, align 4
  %68 = load i32, i32* @POLLWRNORM, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @POLLOUT, align 4
  %75 = load i32, i32* @POLLWRNORM, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %72, %65
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @fuse_lck_mtx_lock(i32) #1

declare dso_local i64 @fdata_get_dead(%struct.fuse_data*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @fuse_lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
