; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtballoon_softc = type { i32, i32, i32, i32*, i32, i32 }

@vtballoon_feature_desc = common dso_local global i32 0, align 4
@VTBALLOON_PAGES_PER_REQUEST = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot allocate page frame request array\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot allocate virtqueues\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot setup virtqueue interrupts\0A\00", align 1
@vtballoon_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"virtio_balloon\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot create balloon kthread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtballoon_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtballoon_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtballoon_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vtballoon_softc* @device_get_softc(i32 %5)
  store %struct.vtballoon_softc* %6, %struct.vtballoon_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_nameunit(i32 %11)
  %13 = call i32 @VTBALLOON_LOCK_INIT(%struct.vtballoon_softc* %10, i32 %12)
  %14 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %14, i32 0, i32 4
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %18 = call i32 @vtballoon_add_sysctl(%struct.vtballoon_softc* %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @vtballoon_feature_desc, align 4
  %21 = call i32 @virtio_set_feature_desc(i32 %19, i32 %20)
  %22 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %23 = call i32 @vtballoon_negotiate_features(%struct.vtballoon_softc* %22)
  %24 = load i32, i32* @VTBALLOON_PAGES_PER_REQUEST, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @malloc(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %80

43:                                               ; preds = %1
  %44 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %45 = call i32 @vtballoon_alloc_virtqueues(%struct.vtballoon_softc* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %80

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @INTR_TYPE_MISC, align 4
  %54 = call i32 @virtio_setup_intr(i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %80

60:                                               ; preds = %51
  %61 = load i32, i32* @vtballoon_thread, align 4
  %62 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %63 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %64 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %63, i32 0, i32 2
  %65 = call i32 @kthread_add(i32 %61, %struct.vtballoon_softc* %62, i32* null, i32* %64, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %80

71:                                               ; preds = %60
  %72 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %73 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @virtqueue_enable_intr(i32 %74)
  %76 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %3, align 8
  %77 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @virtqueue_enable_intr(i32 %78)
  br label %80

80:                                               ; preds = %71, %68, %57, %48, %39
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @vtballoon_detach(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.vtballoon_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTBALLOON_LOCK_INIT(%struct.vtballoon_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @vtballoon_add_sysctl(%struct.vtballoon_softc*) #1

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local i32 @vtballoon_negotiate_features(%struct.vtballoon_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtballoon_alloc_virtqueues(%struct.vtballoon_softc*) #1

declare dso_local i32 @virtio_setup_intr(i32, i32) #1

declare dso_local i32 @kthread_add(i32, %struct.vtballoon_softc*, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @virtqueue_enable_intr(i32) #1

declare dso_local i32 @vtballoon_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
