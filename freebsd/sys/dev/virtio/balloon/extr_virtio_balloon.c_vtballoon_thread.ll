; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtballoon_softc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtballoon_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtballoon_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtballoon_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtballoon_softc*
  store %struct.vtballoon_softc* %7, %struct.vtballoon_softc** %3, align 8
  br label %8

8:                                                ; preds = %42, %1
  %9 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %10 = call i64 @vtballoon_sleep(%struct.vtballoon_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %43

13:                                               ; preds = %8
  %14 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @vtballoon_inflate(%struct.vtballoon_softc* %28, i64 %31)
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @vtballoon_deflate(%struct.vtballoon_softc* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %41 = call i32 @vtballoon_update_size(%struct.vtballoon_softc* %40)
  br label %42

42:                                               ; preds = %39, %13
  br label %8

43:                                               ; preds = %12
  %44 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i64 @vtballoon_sleep(%struct.vtballoon_softc*) #1

declare dso_local i32 @vtballoon_inflate(%struct.vtballoon_softc*, i64) #1

declare dso_local i32 @vtballoon_deflate(%struct.vtballoon_softc*, i64) #1

declare dso_local i32 @vtballoon_update_size(%struct.vtballoon_softc*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
