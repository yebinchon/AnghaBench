; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32*, %struct.TYPE_8__, %struct.TYPE_9__, %struct.datalink*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.datalink = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IFACE_CLEAR_ALL = common dso_local global i32 0, align 4
@EX_ERRDEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_Destroy(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %4 = load %struct.bundle*, %struct.bundle** %2, align 8
  %5 = getelementptr inbounds %struct.bundle, %struct.bundle* %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 @timer_Stop(i32* %6)
  %8 = load %struct.bundle*, %struct.bundle** %2, align 8
  %9 = getelementptr inbounds %struct.bundle, %struct.bundle* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = call i32 @timer_Stop(i32* %10)
  %12 = load %struct.bundle*, %struct.bundle** %2, align 8
  %13 = getelementptr inbounds %struct.bundle, %struct.bundle* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = call i32 @mp_Down(i32* %14)
  %16 = load %struct.bundle*, %struct.bundle** %2, align 8
  %17 = getelementptr inbounds %struct.bundle, %struct.bundle* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.bundle*, %struct.bundle** %2, align 8
  %20 = getelementptr inbounds %struct.bundle, %struct.bundle* %19, i32 0, i32 2
  %21 = load i32, i32* @IFACE_CLEAR_ALL, align 4
  %22 = call i32 @iface_Clear(i32* %18, %struct.TYPE_9__* %20, i32 0, i32 %21)
  %23 = load %struct.bundle*, %struct.bundle** %2, align 8
  %24 = call i32 @bundle_DownInterface(%struct.bundle* %23)
  %25 = load %struct.bundle*, %struct.bundle** %2, align 8
  %26 = getelementptr inbounds %struct.bundle, %struct.bundle* %25, i32 0, i32 4
  %27 = call i32 @radius_Destroy(i32* %26)
  %28 = load %struct.bundle*, %struct.bundle** %2, align 8
  %29 = getelementptr inbounds %struct.bundle, %struct.bundle* %28, i32 0, i32 3
  %30 = load %struct.datalink*, %struct.datalink** %29, align 8
  store %struct.datalink* %30, %struct.datalink** %3, align 8
  br label %31

31:                                               ; preds = %34, %1
  %32 = load %struct.datalink*, %struct.datalink** %3, align 8
  %33 = icmp ne %struct.datalink* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.datalink*, %struct.datalink** %3, align 8
  %36 = call %struct.datalink* @datalink_Destroy(%struct.datalink* %35)
  store %struct.datalink* %36, %struct.datalink** %3, align 8
  br label %31

37:                                               ; preds = %31
  %38 = load %struct.bundle*, %struct.bundle** %2, align 8
  %39 = getelementptr inbounds %struct.bundle, %struct.bundle* %38, i32 0, i32 2
  %40 = call i32 @ncp_Destroy(%struct.TYPE_9__* %39)
  %41 = load %struct.bundle*, %struct.bundle** %2, align 8
  %42 = getelementptr inbounds %struct.bundle, %struct.bundle* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @close(i32 %44)
  %46 = load %struct.bundle*, %struct.bundle** %2, align 8
  %47 = call i32 @bundle_UnlockTun(%struct.bundle* %46)
  %48 = load %struct.bundle*, %struct.bundle** %2, align 8
  %49 = load i32, i32* @EX_ERRDEAD, align 4
  %50 = call i32 @bundle_Notify(%struct.bundle* %48, i32 %49)
  %51 = load %struct.bundle*, %struct.bundle** %2, align 8
  %52 = getelementptr inbounds %struct.bundle, %struct.bundle* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @iface_Destroy(i32* %53)
  %55 = load %struct.bundle*, %struct.bundle** %2, align 8
  %56 = getelementptr inbounds %struct.bundle, %struct.bundle* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @mp_Down(i32*) #1

declare dso_local i32 @iface_Clear(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @bundle_DownInterface(%struct.bundle*) #1

declare dso_local i32 @radius_Destroy(i32*) #1

declare dso_local %struct.datalink* @datalink_Destroy(%struct.datalink*) #1

declare dso_local i32 @ncp_Destroy(%struct.TYPE_9__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bundle_UnlockTun(%struct.bundle*) #1

declare dso_local i32 @bundle_Notify(%struct.bundle*, i32) #1

declare dso_local i32 @iface_Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
