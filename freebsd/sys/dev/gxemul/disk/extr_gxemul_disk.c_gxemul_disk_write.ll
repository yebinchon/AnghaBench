; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gxemul_disk_controller_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_BLOCKSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_OFFSET = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_DISKID = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_BLOCK = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_START = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_START_WRITE = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_STATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_OFFSET_HI = common dso_local global i32 0, align 4
@GXEMUL_DISK_DEV_OFFSET_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @gxemul_disk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxemul_disk_write(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* @gxemul_disk_controller_mutex, i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %16 = srem i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %13
  %21 = load i32, i32* @GXEMUL_DISK_DEV_OFFSET, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @GXEMUL_DISK_DEV_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @GXEMUL_DISK_DEV_DISKID, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GXEMUL_DISK_DEV_WRITE(i32 %24, i32 %25)
  %27 = load i32, i32* @GXEMUL_DISK_DEV_BLOCK, align 4
  %28 = call i8* @GXEMUL_DISK_DEV_FUNCTION(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  %35 = load i32, i32* @GXEMUL_DISK_DEV_START, align 4
  %36 = load i32, i32* @GXEMUL_DISK_DEV_START_WRITE, align 4
  %37 = call i32 @GXEMUL_DISK_DEV_WRITE(i32 %35, i32 %36)
  %38 = load i32, i32* @GXEMUL_DISK_DEV_STATUS, align 4
  %39 = call i32 @GXEMUL_DISK_DEV_READ(i32 %38)
  switch i32 %39, label %42 [
    i32 128, label %40
  ]

40:                                               ; preds = %20
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @GXEMUL_DISK_DEV_WRITE(i32, i32) #1

declare dso_local i8* @GXEMUL_DISK_DEV_FUNCTION(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @GXEMUL_DISK_DEV_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
