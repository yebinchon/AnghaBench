; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@M_EVDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @evdev_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evdev_client*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.evdev_client*
  store %struct.evdev_client* %5, %struct.evdev_client** %3, align 8
  %6 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %7 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @EVDEV_LOCK(i32 %8)
  %10 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %11 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %16 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %19 = call i32 @evdev_dispose_client(i32 %17, %struct.evdev_client* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %22 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @EVDEV_UNLOCK(i32 %23)
  %25 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %26 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @knlist_clear(i32* %27, i32 0)
  %29 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %30 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %29, i32 0, i32 2
  %31 = call i32 @seldrain(%struct.TYPE_2__* %30)
  %32 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %33 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @knlist_destroy(i32* %34)
  %36 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %37 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %36, i32 0, i32 1
  %38 = call i32 @funsetown(i32* %37)
  %39 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %40 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %39, i32 0, i32 0
  %41 = call i32 @mtx_destroy(i32* %40)
  %42 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %43 = load i32, i32* @M_EVDEV, align 4
  %44 = call i32 @free(%struct.evdev_client* %42, i32 %43)
  ret void
}

declare dso_local i32 @EVDEV_LOCK(i32) #1

declare dso_local i32 @evdev_dispose_client(i32, %struct.evdev_client*) #1

declare dso_local i32 @EVDEV_UNLOCK(i32) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @funsetown(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.evdev_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
