; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32, i32*, %struct.adapter* }
%struct.adapter = type { i32 }

@HAS_TRACEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cxgbe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.port_info* @device_get_softc(i32 %7)
  store %struct.port_info* %8, %struct.port_info** %4, align 8
  %9 = load %struct.port_info*, %struct.port_info** %4, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 4
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @bus_generic_detach(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_delete_children(i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = load %struct.port_info*, %struct.port_info** %4, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32 @doom_vi(%struct.adapter* %21, i32* %25)
  %27 = load %struct.port_info*, %struct.port_info** %4, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HAS_TRACEQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 4
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = call i32 @t4_tracer_port_detach(%struct.adapter* %36)
  br label %38

38:                                               ; preds = %33, %18
  %39 = load %struct.port_info*, %struct.port_info** %4, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @cxgbe_vi_detach(i32* %42)
  %44 = load %struct.port_info*, %struct.port_info** %4, align 8
  %45 = getelementptr inbounds %struct.port_info, %struct.port_info* %44, i32 0, i32 2
  %46 = call i32 @callout_drain(i32* %45)
  %47 = load %struct.port_info*, %struct.port_info** %4, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 1
  %49 = call i32 @ifmedia_removeall(i32* %48)
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = call i32 @end_synchronized_op(%struct.adapter* %50, i32 0)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %38, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.port_info* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @doom_vi(%struct.adapter*, i32*) #1

declare dso_local i32 @t4_tracer_port_detach(%struct.adapter*) #1

declare dso_local i32 @cxgbe_vi_detach(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
