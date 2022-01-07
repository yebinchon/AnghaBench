; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp_data = type { i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp_data*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.lp_data* @device_get_softc(i32 %5)
  store %struct.lp_data* %6, %struct.lp_data** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ppb_lock(i32 %9)
  %11 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %12 = call i32 @lpstop(%struct.lp_data* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ppb_unlock(i32 %13)
  %15 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %16 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bpfdetach(i32 %17)
  %19 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %20 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @if_detach(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %25 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %28 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_teardown_intr(i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.lp_data*, %struct.lp_data** %3, align 8
  %34 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 0, i32 %35)
  ret i32 0
}

declare dso_local %struct.lp_data* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lpstop(%struct.lp_data*) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @bpfdetach(i32) #1

declare dso_local i32 @if_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
