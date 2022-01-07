; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp_data = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp_data*)* @lpstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpstop(%struct.lp_data* %0) #0 {
  %2 = alloca %struct.lp_data*, align 8
  %3 = alloca i32, align 4
  store %struct.lp_data* %0, %struct.lp_data** %2, align 8
  %4 = load %struct.lp_data*, %struct.lp_data** %2, align 8
  %5 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @device_get_parent(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ppb_assert_locked(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ppb_wctr(i32 %10, i32 0)
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.lp_data*, %struct.lp_data** %2, align 8
  %17 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load %struct.lp_data*, %struct.lp_data** %2, align 8
  %23 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  %27 = load %struct.lp_data*, %struct.lp_data** %2, align 8
  %28 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.lp_data*, %struct.lp_data** %2, align 8
  %31 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ppb_release_bus(i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
