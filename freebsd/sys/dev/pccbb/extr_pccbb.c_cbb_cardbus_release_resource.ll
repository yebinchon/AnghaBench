; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.cbb_softc = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @cbb_cardbus_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_cardbus_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.cbb_softc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.cbb_softc* @device_get_softc(i32 %14)
  store %struct.cbb_softc* %15, %struct.cbb_softc** %12, align 8
  %16 = load %struct.resource*, %struct.resource** %11, align 8
  %17 = call i32 @rman_get_flags(%struct.resource* %16)
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.resource*, %struct.resource** %11, align 8
  %26 = call i32 @bus_deactivate_resource(i32 %22, i32 %23, i32 %24, %struct.resource* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %43

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.cbb_softc*, %struct.cbb_softc** %12, align 8
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i32 @cbb_remove_res(%struct.cbb_softc* %33, %struct.resource* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @device_get_parent(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.resource*, %struct.resource** %11, align 8
  %42 = call i32 @BUS_RELEASE_RESOURCE(i32 %37, i32 %38, i32 %39, i32 %40, %struct.resource* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %32, %29
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bus_deactivate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @cbb_remove_res(%struct.cbb_softc*, %struct.resource*) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
