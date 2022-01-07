; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fuse_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fuse_device_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@fuse_dev = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_device_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @UID_ROOT, align 4
  %3 = load i32, i32* @GID_OPERATOR, align 4
  %4 = load i32, i32* @S_IRUSR, align 4
  %5 = load i32, i32* @S_IWUSR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @S_IRGRP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @S_IWGRP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_IROTH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IWOTH, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @make_dev(i32* @fuse_device_cdevsw, i32 0, i32 %2, i32 %3, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** @fuse_dev, align 8
  %16 = load i32*, i32** @fuse_dev, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %1, align 4
  br label %21

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
