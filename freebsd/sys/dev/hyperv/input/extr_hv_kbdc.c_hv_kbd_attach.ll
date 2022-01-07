; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }

@HV_KBD_PROTO_REQ_SZ = common dso_local global i32 0, align 4
@HV_KBD_PROTO_RESP_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_kbd_read_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_kbd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kbd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_5__* @device_get_softc(i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @vmbus_get_channel(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call i32 @hv_kbd_init(%struct.TYPE_5__* %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @bus_get_dma_tag(i32 %17)
  %19 = load i32, i32* @HV_KBD_PROTO_REQ_SZ, align 4
  %20 = load i32, i32* @HV_KBD_PROTO_RESP_SZ, align 4
  %21 = call i32* @vmbus_xact_ctx_create(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @hv_kbd_read_channel, align 4
  %33 = call i32 @hv_kbd_attach1(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = call i32 @hv_kbd_connect_vsp(%struct.TYPE_5__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @hv_kbd_drv_attach(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @hv_kbd_sysctl(i32 %50)
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %48, %42, %36, %28
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @hv_kbd_detach(i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @device_get_softc(i32) #1

declare dso_local i32 @vmbus_get_channel(i32) #1

declare dso_local i32 @hv_kbd_init(%struct.TYPE_5__*) #1

declare dso_local i32* @vmbus_xact_ctx_create(i32, i32, i32, i32) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @hv_kbd_attach1(i32, i32) #1

declare dso_local i32 @hv_kbd_connect_vsp(%struct.TYPE_5__*) #1

declare dso_local i32 @hv_kbd_drv_attach(i32) #1

declare dso_local i32 @hv_kbd_sysctl(i32) #1

declare dso_local i32 @hv_kbd_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
