; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_backend_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_backend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"newstate=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @netfront_backend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netfront_backend_changed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.netfront_info* @device_get_softc(i32 %6)
  store %struct.netfront_info* %7, %struct.netfront_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %11 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CURVNET_SET(i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %52 [
    i32 131, label %17
    i32 132, label %17
    i32 128, label %17
    i32 130, label %17
    i32 129, label %17
    i32 133, label %18
    i32 135, label %35
    i32 136, label %38
    i32 134, label %51
  ]

17:                                               ; preds = %2, %2, %2, %2, %2
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @xenbus_get_state(i32 %19)
  %21 = icmp ne i32 %20, 131
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %52

23:                                               ; preds = %18
  %24 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %25 = call i32 @xn_connect(%struct.netfront_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %52

28:                                               ; preds = %23
  %29 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %30 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xenbus_set_state(i32 %31, i32 134)
  %33 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %34 = call i32 @xn_kick_rings(%struct.netfront_info* %33)
  br label %52

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @xenbus_set_state(i32 %36, i32 136)
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %40 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %45 = call i32 @netif_disconnect_backend(%struct.netfront_info* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @xenbus_set_state(i32 %46, i32 131)
  %48 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %49 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %2, %51, %50, %35, %28, %27, %22, %17
  %53 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local %struct.netfront_info* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @xenbus_get_state(i32) #1

declare dso_local i32 @xn_connect(%struct.netfront_info*) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

declare dso_local i32 @xn_kick_rings(%struct.netfront_info*) #1

declare dso_local i32 @netif_disconnect_backend(%struct.netfront_info*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
