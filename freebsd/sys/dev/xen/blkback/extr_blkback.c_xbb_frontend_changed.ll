; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_frontend_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_frontend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"frontend_state=%s, xbb_state=%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"saw state %d at frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @xbb_frontend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_frontend_changed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xbb_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.xbb_softc* @device_get_softc(i32 %6)
  store %struct.xbb_softc* %7, %struct.xbb_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @xenbus_strstate(i32 %8)
  %10 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %11 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xenbus_get_state(i32 %12)
  %14 = call i32 @xenbus_strstate(i32 %13)
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %38 [
    i32 128, label %17
    i32 129, label %18
    i32 130, label %18
    i32 131, label %21
    i32 132, label %21
  ]

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2, %2
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %20 = call i32 @xbb_connect(%struct.xbb_softc* %19)
  br label %45

21:                                               ; preds = %2, %2
  %22 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %23 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %26 = call i32 @xbb_shutdown(%struct.xbb_softc* %25)
  %27 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %27, i32 0, i32 1
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 132
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %34 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xenbus_set_state(i32 %35, i32 132)
  br label %37

37:                                               ; preds = %32, %21
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.xbb_softc*, %struct.xbb_softc** %5, align 8
  %40 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @xenbus_dev_fatal(i32 %41, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %37, %18, %17
  ret void
}

declare dso_local %struct.xbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @xenbus_get_state(i32) #1

declare dso_local i32 @xbb_connect(%struct.xbb_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xbb_shutdown(%struct.xbb_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
