; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/random/extr_virtio_random.c_vtrnd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/random/extr_virtio_random.c_vtrnd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtrnd_softc = type { i32 }

@g_vtrnd_softc = common dso_local global i32 0, align 4
@memory_order_acquire = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"only one global instance at a time\00", align 1
@random_vtrnd = common dso_local global i32 0, align 4
@memory_order_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vtrnddet\00", align 1
@C_HARDCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtrnd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtrnd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtrnd_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vtrnd_softc* @device_get_softc(i32 %4)
  store %struct.vtrnd_softc* %5, %struct.vtrnd_softc** %3, align 8
  %6 = load i32, i32* @memory_order_acquire, align 4
  %7 = call %struct.vtrnd_softc* @atomic_load_explicit(i32* @g_vtrnd_softc, i32 %6)
  %8 = load %struct.vtrnd_softc*, %struct.vtrnd_softc** %3, align 8
  %9 = icmp eq %struct.vtrnd_softc* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @random_source_deregister(i32* @random_vtrnd)
  %13 = load i32, i32* @memory_order_release, align 4
  %14 = call i32 @atomic_store_explicit(i32* @g_vtrnd_softc, i32* null, i32 %13)
  %15 = call i32 @mstosbt(i32 50)
  %16 = load i32, i32* @C_HARDCLOCK, align 4
  %17 = call i32 @tsleep_sbt(i32* @g_vtrnd_softc, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 0, i32 %16)
  ret i32 0
}

declare dso_local %struct.vtrnd_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vtrnd_softc* @atomic_load_explicit(i32*, i32) #1

declare dso_local i32 @random_source_deregister(i32*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32*, i32) #1

declare dso_local i32 @tsleep_sbt(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mstosbt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
