; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i64, i64, i64*, i32, i32 }

@vt_suspendswitch = common dso_local global i64 0, align 8
@VT_CONSWINDOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_suspend(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  %3 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  %4 = load i64, i64* @vt_suspendswitch, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %9 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %12 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %14 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @VT_CONSWINDOW, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @vt_proc_window_switch(i64 %18)
  store i32 0, i32* %3, align 4
  %20 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %21 = call i32 @VT_LOCK(%struct.vt_device* %20)
  br label %22

22:                                               ; preds = %38, %7
  %23 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %24 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %27 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @VT_CONSWINDOW, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %33, %22
  %37 = phi i1 [ false, %22 ], [ %35, %33 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %40 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %39, i32 0, i32 4
  %41 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %42 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %41, i32 0, i32 3
  %43 = call i32 @cv_wait_sig(i32* %40, i32* %42)
  store i32 %43, i32* %3, align 4
  br label %22

44:                                               ; preds = %36
  %45 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %46 = call i32 @VT_UNLOCK(%struct.vt_device* %45)
  br label %47

47:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @vt_proc_window_switch(i64) #1

declare dso_local i32 @VT_LOCK(%struct.vt_device*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
