; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_filt_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_filt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i64 }
%struct.fuse_data = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @fuse_device_filt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_device_filt_read(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fuse_data*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fuse_data*
  store %struct.fuse_data* %10, %struct.fuse_data** %5, align 8
  %11 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %12 = icmp ne %struct.fuse_data* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %16 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %15, i32 0, i32 2
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %20 = call i64 @fdata_get_dead(%struct.fuse_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @EV_EOF, align 4
  %24 = load %struct.knote*, %struct.knote** %3, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ENODEV, align 4
  %29 = load %struct.knote*, %struct.knote** %3, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.knote*, %struct.knote** %3, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  store i32 1, i32* %6, align 4
  br label %52

33:                                               ; preds = %2
  %34 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %35 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %34, i32 0, i32 1
  %36 = call i64 @STAILQ_FIRST(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %40 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = call i32 @MPASS(i32 %43)
  %45 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %46 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.knote*, %struct.knote** %3, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 1, i32* %6, align 4
  br label %51

50:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @fdata_get_dead(%struct.fuse_data*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
