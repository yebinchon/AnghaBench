; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_nemc.c_jz4780_nemc_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.jz4780_nemc_softc = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @jz4780_nemc_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_nemc_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.jz4780_nemc_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.jz4780_nemc_softc* @device_get_softc(i32 %19)
  store %struct.jz4780_nemc_softc* %20, %struct.jz4780_nemc_softc** %12, align 8
  %21 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %12, align 8
  %22 = getelementptr inbounds %struct.jz4780_nemc_softc, %struct.jz4780_nemc_softc* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %11, align 8
  %24 = call i32 @jz4780_nemc_decode_bank(i32* %22, %struct.resource* %23, i32* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.jz4780_nemc_softc*, %struct.jz4780_nemc_softc** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @jz4780_nemc_configure_bank(%struct.jz4780_nemc_softc* %28, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %18
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = call i32 @bus_generic_activate_resource(i32 %39, i32 %40, i32 %41, i32 %42, %struct.resource* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.jz4780_nemc_softc* @device_get_softc(i32) #1

declare dso_local i32 @jz4780_nemc_decode_bank(i32*, %struct.resource*, i32*) #1

declare dso_local i32 @jz4780_nemc_configure_bank(%struct.jz4780_nemc_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
