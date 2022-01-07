; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_backend_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_backend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"backend_state=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"detaching with pending users\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"NULL disk with pending users\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @xbd_backend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_backend_changed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xbd_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.xbd_softc* @device_get_softc(i32 %6)
  store %struct.xbd_softc* %7, %struct.xbd_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %42 [
    i32 128, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 136, label %11
    i32 133, label %12
    i32 132, label %12
    i32 134, label %15
    i32 135, label %20
  ]

11:                                               ; preds = %2, %2, %2, %2, %2
  br label %42

12:                                               ; preds = %2, %2
  %13 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %14 = call i32 @xbd_initialize(%struct.xbd_softc* %13)
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %17 = call i32 @xbd_initialize(%struct.xbd_softc* %16)
  %18 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %19 = call i32 @xbd_connect(%struct.xbd_softc* %18)
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %22 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.xbd_softc*, %struct.xbd_softc** %5, align 8
  %35 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @disk_gone(i32* %36)
  br label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @xbd_closing(i32 %39)
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %2, %41, %15, %12, %11
  ret void
}

declare dso_local %struct.xbd_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @xbd_initialize(%struct.xbd_softc*) #1

declare dso_local i32 @xbd_connect(%struct.xbd_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @disk_gone(i32*) #1

declare dso_local i32 @xbd_closing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
