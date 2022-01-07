; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_cdev_state = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }

@UINPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"state %p: buffer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uinput_cdev_state*, i8*, i8*, i32)* @uinput_enqueue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uinput_enqueue_event(%struct.uinput_cdev_state* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.uinput_cdev_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uinput_cdev_state* %0, %struct.uinput_cdev_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %12 = call i32 @UINPUT_LOCK_ASSERT(%struct.uinput_cdev_state* %11)
  %13 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %14 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %17 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %24 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = call i32 @microtime(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %32 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i8* %30, i8** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %39 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %37, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %46 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %54 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %4
  %59 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %60 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %61 = call i32 @debugf(%struct.uinput_cdev_state* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.uinput_cdev_state* %60)
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  %64 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = urem i64 %63, %65
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %5, align 8
  %69 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %58, %4
  ret void
}

declare dso_local i32 @UINPUT_LOCK_ASSERT(%struct.uinput_cdev_state*) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, %struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
