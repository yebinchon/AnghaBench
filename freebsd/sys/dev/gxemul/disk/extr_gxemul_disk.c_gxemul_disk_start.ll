; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gxemul_disk_softc* }
%struct.gxemul_disk_softc = type { i32 }

@GXEMUL_DISK_DEV_BLOCKSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gxemul_disk_controller_mutex = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @gxemul_disk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxemul_disk_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.gxemul_disk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %13, align 8
  store %struct.gxemul_disk_softc* %14, %struct.gxemul_disk_softc** %3, align 8
  %15 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %23 = srem i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @g_io_deliver(%struct.bio* %26, i32 %27)
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %75, %29
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %41
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %64 [
    i32 129, label %50
    i32 128, label %57
  ]

50:                                               ; preds = %46
  %51 = call i32 @mtx_lock(i32* @gxemul_disk_controller_mutex)
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @gxemul_disk_read(i32 %52, i32* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = call i32 @mtx_unlock(i32* @gxemul_disk_controller_mutex)
  br label %68

57:                                               ; preds = %46
  %58 = call i32 @mtx_lock(i32* @gxemul_disk_controller_mutex)
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @gxemul_disk_write(i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = call i32 @mtx_unlock(i32* @gxemul_disk_controller_mutex)
  br label %68

64:                                               ; preds = %46
  %65 = load %struct.bio*, %struct.bio** %2, align 8
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = call i32 @g_io_deliver(%struct.bio* %65, i32 %66)
  br label %96

68:                                               ; preds = %57, %50
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @g_io_deliver(%struct.bio* %72, i32 %73)
  br label %96

75:                                               ; preds = %68
  %76 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %6, align 8
  %80 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %84 = load %struct.bio*, %struct.bio** %2, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %89 = load %struct.bio*, %struct.bio** %2, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %41

93:                                               ; preds = %41
  %94 = load %struct.bio*, %struct.bio** %2, align 8
  %95 = call i32 @g_io_deliver(%struct.bio* %94, i32 0)
  br label %96

96:                                               ; preds = %93, %71, %64, %25
  ret void
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @gxemul_disk_read(i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @gxemul_disk_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
