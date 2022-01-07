; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_catch_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_catch_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_generic_adapter = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netmap_adapter }
%struct.netmap_adapter = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"RX on %s already intercepted\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@freebsd_generic_rx_handler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to undo RX intercept on %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_os_catch_rx(%struct.netmap_generic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_generic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  store %struct.netmap_generic_adapter* %0, %struct.netmap_generic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.netmap_adapter* %10, %struct.netmap_adapter** %5, align 8
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = call i32 (...) @nm_os_ifnet_lock()
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nm_prerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %7, align 4
  br label %57

28:                                               ; preds = %17
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** @freebsd_generic_rx_handler, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  br label %56

37:                                               ; preds = %2
  %38 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nm_prerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %48, %28
  br label %57

57:                                               ; preds = %56, %42, %22
  %58 = call i32 (...) @nm_os_ifnet_unlock()
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @nm_os_ifnet_lock(...) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

declare dso_local i32 @nm_os_ifnet_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
