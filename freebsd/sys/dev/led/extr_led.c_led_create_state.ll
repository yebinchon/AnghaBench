; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_create_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_create_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ledsc* }
%struct.ledsc = type { %struct.cdev*, i8*, i32 (i8*, i32)*, i32, i32 }

@M_LED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@led_sx = common dso_local global i32 0, align 4
@led_unit = common dso_local global i32 0, align 4
@led_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"led/%s\00", align 1
@led_mtx = common dso_local global i32 0, align 4
@led_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cdev* @led_create_state(i32 (i8*, i32)** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32 (i8*, i32)**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ledsc*, align 8
  store i32 (i8*, i32)** %0, i32 (i8*, i32)*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @M_LED, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.ledsc* @malloc(i32 32, i32 %10, i32 %13)
  store %struct.ledsc* %14, %struct.ledsc** %9, align 8
  %15 = call i32 @sx_xlock(i32* @led_sx)
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @M_LED, align 4
  %18 = call i32 @strdup(i8* %16, i32 %17)
  %19 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %20 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @led_unit, align 4
  %22 = call i32 @alloc_unr(i32 %21)
  %23 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %24 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %27 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32 (i8*, i32)**, i32 (i8*, i32)*** %5, align 8
  %29 = bitcast i32 (i8*, i32)** %28 to i32 (i8*, i32)*
  %30 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %31 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %30, i32 0, i32 2
  store i32 (i8*, i32)* %29, i32 (i8*, i32)** %31, align 8
  %32 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %33 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @UID_ROOT, align 4
  %36 = load i32, i32* @GID_WHEEL, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call %struct.cdev* @make_dev(i32* @led_cdevsw, i32 %34, i32 %35, i32 %36, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %40 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %39, i32 0, i32 0
  store %struct.cdev* %38, %struct.cdev** %40, align 8
  %41 = call i32 @sx_xunlock(i32* @led_sx)
  %42 = call i32 @mtx_lock(i32* @led_mtx)
  %43 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %44 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %45 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %44, i32 0, i32 0
  %46 = load %struct.cdev*, %struct.cdev** %45, align 8
  %47 = getelementptr inbounds %struct.cdev, %struct.cdev* %46, i32 0, i32 0
  store %struct.ledsc* %43, %struct.ledsc** %47, align 8
  %48 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %49 = load i32, i32* @list, align 4
  %50 = call i32 @LIST_INSERT_HEAD(i32* @led_list, %struct.ledsc* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %64

53:                                               ; preds = %4
  %54 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %55 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %54, i32 0, i32 2
  %56 = load i32 (i8*, i32)*, i32 (i8*, i32)** %55, align 8
  %57 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %58 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 %56(i8* %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %4
  %65 = call i32 @mtx_unlock(i32* @led_mtx)
  %66 = load %struct.ledsc*, %struct.ledsc** %9, align 8
  %67 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %66, i32 0, i32 0
  %68 = load %struct.cdev*, %struct.cdev** %67, align 8
  ret %struct.cdev* %68
}

declare dso_local %struct.ledsc* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local %struct.cdev* @make_dev(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ledsc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
