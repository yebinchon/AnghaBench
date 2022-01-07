; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { %struct.vtcon_softc_port*, i32 }
%struct.vtcon_softc_port = type { %struct.vtcon_port* }
%struct.vtcon_port = type { i32, i32, i32, %struct.vtcon_softc_port*, %struct.vtcon_softc* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vtcpmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@vtcon_tty_class = common dso_local global i32 0, align 4
@VIRTIO_CONSOLE_PORT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%r.%r\00", align 1
@VTCON_TTY_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtcon_softc*, i32)* @vtcon_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_port_create(%struct.vtcon_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtcon_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vtcon_softc_port*, align 8
  %8 = alloca %struct.vtcon_port*, align 8
  %9 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %14 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %13, i32 0, i32 0
  %15 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %15, i64 %17
  store %struct.vtcon_softc_port* %18, %struct.vtcon_softc_port** %7, align 8
  %19 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @VTCON_ASSERT_VALID_PORTID(%struct.vtcon_softc* %19, i32 %20)
  %22 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %7, align 8
  %23 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %22, i32 0, i32 0
  %24 = load %struct.vtcon_port*, %struct.vtcon_port** %23, align 8
  %25 = icmp eq %struct.vtcon_port* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.vtcon_port* @malloc(i32 32, i32 %28, i32 %31)
  store %struct.vtcon_port* %32, %struct.vtcon_port** %8, align 8
  %33 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %34 = icmp eq %struct.vtcon_port* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %92

37:                                               ; preds = %2
  %38 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %39 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %40 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %39, i32 0, i32 4
  store %struct.vtcon_softc* %38, %struct.vtcon_softc** %40, align 8
  %41 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %7, align 8
  %42 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %43 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %42, i32 0, i32 3
  store %struct.vtcon_softc_port* %41, %struct.vtcon_softc_port** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %46 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %48 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %47, i32 0, i32 2
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %49)
  %51 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %52 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %53 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %52, i32 0, i32 2
  %54 = call i32 @tty_alloc_mutex(i32* @vtcon_tty_class, %struct.vtcon_port* %51, i32* %53)
  %55 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %56 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %58 = call i32 @vtcon_port_init_vqs(%struct.vtcon_port* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %37
  %62 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %63 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %62)
  %64 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %65 = call i32 @vtcon_port_teardown(%struct.vtcon_port* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %37
  %68 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %69 = call i32 @VTCON_LOCK(%struct.vtcon_softc* %68)
  %70 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %71 = call i32 @VTCON_PORT_LOCK(%struct.vtcon_port* %70)
  %72 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %73 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %7, align 8
  %74 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %73, i32 0, i32 0
  store %struct.vtcon_port* %72, %struct.vtcon_port** %74, align 8
  %75 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %76 = call i32 @vtcon_port_enable_intr(%struct.vtcon_port* %75)
  %77 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %78 = load i32, i32* @VIRTIO_CONSOLE_PORT_READY, align 4
  %79 = call i32 @vtcon_port_submit_event(%struct.vtcon_port* %77, i32 %78, i32 1)
  %80 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %81 = call i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port* %80)
  %82 = load %struct.vtcon_softc*, %struct.vtcon_softc** %4, align 8
  %83 = call i32 @VTCON_UNLOCK(%struct.vtcon_softc* %82)
  %84 = load %struct.vtcon_port*, %struct.vtcon_port** %8, align 8
  %85 = getelementptr inbounds %struct.vtcon_port, %struct.vtcon_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VTCON_TTY_PREFIX, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @device_get_unit(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @tty_makedev(i32 %86, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %67, %61, %35
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @VTCON_ASSERT_VALID_PORTID(%struct.vtcon_softc*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.vtcon_port* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @tty_alloc_mutex(i32*, %struct.vtcon_port*, i32*) #1

declare dso_local i32 @vtcon_port_init_vqs(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_PORT_LOCK(%struct.vtcon_port*) #1

declare dso_local i32 @vtcon_port_teardown(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_LOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @vtcon_port_enable_intr(%struct.vtcon_port*) #1

declare dso_local i32 @vtcon_port_submit_event(%struct.vtcon_port*, i32, i32) #1

declare dso_local i32 @VTCON_PORT_UNLOCK(%struct.vtcon_port*) #1

declare dso_local i32 @VTCON_UNLOCK(%struct.vtcon_softc*) #1

declare dso_local i32 @tty_makedev(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
