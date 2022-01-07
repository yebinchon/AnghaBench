; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@os_wellness_periodic = common dso_local global i32 0, align 4
@os_start_heartbeat_timer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smartpqi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smartpqi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqisrc_softstate*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.pqisrc_softstate* null, %struct.pqisrc_softstate** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.pqisrc_softstate* @device_get_softc(i32 %4)
  store %struct.pqisrc_softstate* %5, %struct.pqisrc_softstate** %3, align 8
  %6 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @shutdown_final, align 4
  %8 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %9 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @EVENTHANDLER_DEREGISTER(i32 %7, i32 %11)
  %13 = load i32, i32* @os_wellness_periodic, align 4
  %14 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %15 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %16 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @untimeout(i32 %13, %struct.pqisrc_softstate* %14, i32 %18)
  %20 = load i32, i32* @os_start_heartbeat_timer, align 4
  %21 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %22 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %23 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @untimeout(i32 %20, %struct.pqisrc_softstate* %21, i32 %25)
  %27 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %28 = call i32 @smartpqi_shutdown(%struct.pqisrc_softstate* %27)
  %29 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %30 = call i32 @destroy_char_dev(%struct.pqisrc_softstate* %29)
  %31 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %32 = call i32 @pqisrc_uninit(%struct.pqisrc_softstate* %31)
  %33 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %34 = call i32 @deregister_sim(%struct.pqisrc_softstate* %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @pci_release_msi(i32 %35)
  %37 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.pqisrc_softstate* @device_get_softc(i32) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @untimeout(i32, %struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @smartpqi_shutdown(%struct.pqisrc_softstate*) #1

declare dso_local i32 @destroy_char_dev(%struct.pqisrc_softstate*) #1

declare dso_local i32 @pqisrc_uninit(%struct.pqisrc_softstate*) #1

declare dso_local i32 @deregister_sim(%struct.pqisrc_softstate*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
