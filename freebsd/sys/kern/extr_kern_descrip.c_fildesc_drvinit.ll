; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fildesc_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fildesc_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }

@MAKEDEV_ETERNAL = common dso_local global i32 0, align 4
@fildesc_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fd/0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fd/1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fd/2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fildesc_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fildesc_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cdev*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %5 = load i32, i32* @UID_ROOT, align 4
  %6 = load i32, i32* @GID_WHEEL, align 4
  %7 = call %struct.cdev* @make_dev_credf(i32 %4, i32* @fildesc_cdevsw, i32 0, i32* null, i32 %5, i32 %6, i32 438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.cdev* %7, %struct.cdev** %3, align 8
  %8 = load %struct.cdev*, %struct.cdev** %3, align 8
  %9 = call i32 @make_dev_alias(%struct.cdev* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %11 = load i32, i32* @UID_ROOT, align 4
  %12 = load i32, i32* @GID_WHEEL, align 4
  %13 = call %struct.cdev* @make_dev_credf(i32 %10, i32* @fildesc_cdevsw, i32 1, i32* null, i32 %11, i32 %12, i32 438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cdev* %13, %struct.cdev** %3, align 8
  %14 = load %struct.cdev*, %struct.cdev** %3, align 8
  %15 = call i32 @make_dev_alias(%struct.cdev* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %17 = load i32, i32* @UID_ROOT, align 4
  %18 = load i32, i32* @GID_WHEEL, align 4
  %19 = call %struct.cdev* @make_dev_credf(i32 %16, i32* @fildesc_cdevsw, i32 2, i32* null, i32 %17, i32 %18, i32 438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cdev* %19, %struct.cdev** %3, align 8
  %20 = load %struct.cdev*, %struct.cdev** %3, align 8
  %21 = call i32 @make_dev_alias(%struct.cdev* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.cdev* @make_dev_credf(i32, i32*, i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @make_dev_alias(%struct.cdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
