; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/random/extr_virtio_random.c_vtrnd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/random/extr_virtio_random.c_vtrnd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtrnd_softc = type { i32 }

@vtrnd_feature_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate virtqueue\0A\00", align 1
@g_vtrnd_softc = common dso_local global i32 0, align 4
@memory_order_release = common dso_local global i32 0, align 4
@memory_order_acquire = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@random_vtrnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtrnd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtrnd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtrnd_softc*, align 8
  %4 = alloca %struct.vtrnd_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.vtrnd_softc* @device_get_softc(i32 %6)
  store %struct.vtrnd_softc* %7, %struct.vtrnd_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @vtrnd_feature_desc, align 4
  %10 = call i32 @virtio_set_feature_desc(i32 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @vtrnd_negotiate_features(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @vtrnd_alloc_virtqueue(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

20:                                               ; preds = %1
  store %struct.vtrnd_softc* null, %struct.vtrnd_softc** %4, align 8
  %21 = load %struct.vtrnd_softc*, %struct.vtrnd_softc** %3, align 8
  %22 = load i32, i32* @memory_order_release, align 4
  %23 = load i32, i32* @memory_order_acquire, align 4
  %24 = call i32 @atomic_compare_exchange_strong_explicit(i32* @g_vtrnd_softc, %struct.vtrnd_softc** %4, %struct.vtrnd_softc* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EEXIST, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %20
  %29 = call i32 @random_source_register(i32* @random_vtrnd)
  br label %30

30:                                               ; preds = %28, %26, %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @vtrnd_detach(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.vtrnd_softc* @device_get_softc(i32) #1

declare dso_local i32 @virtio_set_feature_desc(i32, i32) #1

declare dso_local i32 @vtrnd_negotiate_features(i32) #1

declare dso_local i32 @vtrnd_alloc_virtqueue(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @atomic_compare_exchange_strong_explicit(i32*, %struct.vtrnd_softc**, %struct.vtrnd_softc*, i32, i32) #1

declare dso_local i32 @random_source_register(i32*) #1

declare dso_local i32 @vtrnd_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
