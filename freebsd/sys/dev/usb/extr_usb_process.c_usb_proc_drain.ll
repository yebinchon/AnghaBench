; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i32, i32*, i32, i64, i32, i64, i64, i64 }

@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"WARNING: A USB process has been left suspended\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"WARNING: Someone is waiting for USB process drain!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_proc_drain(%struct.usb_process* %0) #0 {
  %2 = alloca %struct.usb_process*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %2, align 8
  %3 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %4 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %82

8:                                                ; preds = %1
  %9 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %10 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @Giant
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %15 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @MA_NOTOWNED, align 4
  %18 = call i32 @USB_MTX_ASSERT(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %21 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @USB_MTX_LOCK(i32* %22)
  %24 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %25 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %58, %19
  %27 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %28 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %33 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %38 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36, %31
  %42 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %43 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %45 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %47 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %46, i32 0, i32 4
  %48 = call i32 @cv_signal(i32* %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i64, i64* @cold, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %54 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @USB_THREAD_SUSPEND(i64 %55)
  %57 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %60 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %59, i32 0, i32 4
  %61 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %62 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @cv_wait(i32* %60, i32* %63)
  br label %26

65:                                               ; preds = %52, %26
  %66 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %67 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %72 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %74 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %73, i32 0, i32 2
  %75 = call i32 @cv_broadcast(i32* %74)
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.usb_process*, %struct.usb_process** %2, align 8
  %79 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @USB_MTX_UNLOCK(i32* %80)
  br label %82

82:                                               ; preds = %77, %7
  ret void
}

declare dso_local i32 @USB_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @USB_MTX_LOCK(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @USB_THREAD_SUSPEND(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
