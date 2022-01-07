; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, i32, i32, i32, i32 }
%struct.virtio_console_config = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vtconmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"vtconctrlmtx\00", align 1
@vtcon_feature_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot allocate softc port structures\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot allocate virtqueues\0A\00", align 1
@VTCON_FLAG_MULTIPORT = common dso_local global i32 0, align 4
@vtcon_ctrl_task_cb = common dso_local global i32 0, align 4
@VTCON_FLAG_SIZE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot setup virtqueue interrupts\0A\00", align 1
@VIRTIO_CONSOLE_BAD_ID = common dso_local global i32 0, align 4
@VIRTIO_CONSOLE_DEVICE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtcon_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtcon_softc*, align 8
  %4 = alloca %struct.virtio_console_config, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.vtcon_softc* @device_get_softc(i32 %6)
  store %struct.vtcon_softc* %7, %struct.vtcon_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %11, i32 0, i32 3
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %15, i32 0, i32 2
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @vtcon_feature_desc, align 4
  %21 = call i32 @virtio_set_feature_desc(i32 %19, i32 %20)
  %22 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %23 = call i32 @vtcon_setup_features(%struct.vtcon_softc* %22)
  %24 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %25 = call i32 @vtcon_read_config(%struct.vtcon_softc* %24, %struct.virtio_console_config* %4)
  %26 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %27 = call i32 @vtcon_determine_max_ports(%struct.vtcon_softc* %26, %struct.virtio_console_config* %4)
  %28 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %29 = call i32 @vtcon_alloc_scports(%struct.vtcon_softc* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %95

35:                                               ; preds = %1
  %36 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %37 = call i32 @vtcon_alloc_virtqueues(%struct.vtcon_softc* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VTCON_FLAG_MULTIPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %52 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %51, i32 0, i32 1
  %53 = load i32, i32* @vtcon_ctrl_task_cb, align 4
  %54 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %55 = call i32 @TASK_INIT(i32* %52, i32 0, i32 %53, %struct.vtcon_softc* %54)
  %56 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %57 = call i32 @vtcon_ctrl_init(%struct.vtcon_softc* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %95

61:                                               ; preds = %50
  br label %79

62:                                               ; preds = %43
  %63 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %64 = call i32 @vtcon_port_create(%struct.vtcon_softc* %63, i32 0)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %95

68:                                               ; preds = %62
  %69 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %70 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @VTCON_FLAG_SIZE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %77 = call i32 @vtcon_port_update_console_size(%struct.vtcon_softc* %76)
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @INTR_TYPE_TTY, align 4
  %82 = call i32 @virtio_setup_intr(i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %90 = call i32 @vtcon_enable_interrupts(%struct.vtcon_softc* %89)
  %91 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %92 = load i32, i32* @VIRTIO_CONSOLE_BAD_ID, align 4
  %93 = load i32, i32* @VIRTIO_CONSOLE_DEVICE_READY, align 4
  %94 = call i32 @vtcon_ctrl_send_control(%struct.vtcon_softc* %91, i32 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %88, %85, %67, %60, %40, %32
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @vtcon_detach(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.vtcon_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local i32 @vtcon_setup_features(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_read_config(%struct.vtcon_softc*, %struct.virtio_console_config*) #1

declare dso_local i32 @vtcon_determine_max_ports(%struct.vtcon_softc*, %struct.virtio_console_config*) #1

declare dso_local i32 @vtcon_alloc_scports(%struct.vtcon_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtcon_alloc_virtqueues(%struct.vtcon_softc*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_ctrl_init(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_port_create(%struct.vtcon_softc*, i32) #1

declare dso_local i32 @vtcon_port_update_console_size(%struct.vtcon_softc*) #1

declare dso_local i32 @virtio_setup_intr(i32, i32) #1

declare dso_local i32 @vtcon_enable_interrupts(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_ctrl_send_control(%struct.vtcon_softc*, i32, i32, i32) #1

declare dso_local i32 @vtcon_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
