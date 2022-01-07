; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp_data = type { i32*, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, %struct.TYPE_2__, i64, i64, i32, i32, i32, %struct.lp_data* }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot reserve interrupt, failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IFT_PARA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@LPMTU = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@lpioctl = common dso_local global i32 0, align 4
@lpoutput = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@lp_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to register interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.lp_data* @DEVTOSOFTC(i32 %8)
  store %struct.lp_data* %9, %struct.lp_data** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %12 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = load i32, i32* @RF_SHAREABLE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %7, i32 %15)
  %17 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %18 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %20 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %1
  %28 = load i32, i32* @IFT_PARA, align 4
  %29 = call %struct.ifnet* @if_alloc(i32 %28)
  %30 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %31 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %30, i32 0, i32 2
  store %struct.ifnet* %29, %struct.ifnet** %31, align 8
  store %struct.ifnet* %29, %struct.ifnet** %5, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = icmp eq %struct.ifnet* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOSPC, align 4
  store i32 %35, i32* %2, align 4
  br label %104

36:                                               ; preds = %27
  %37 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 7
  store %struct.lp_data* %37, %struct.lp_data** %39, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_name(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_get_unit(i32 %43)
  %45 = call i32 @if_initname(%struct.ifnet* %40, i32 %42, i32 %44)
  %46 = load i32, i32* @LPMTU, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @IFF_SIMPLEX, align 4
  %50 = load i32, i32* @IFF_POINTOPOINT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IFF_MULTICAST, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @lpioctl, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @lpoutput, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @ifqmaxlen, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = call i32 @if_attach(%struct.ifnet* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %73 = load i32, i32* @DLT_NULL, align 4
  %74 = call i32 @bpfattach(%struct.ifnet* %72, i32 %73, i32 4)
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %77 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @INTR_TYPE_NET, align 4
  %80 = load i32, i32* @INTR_MPSAFE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @lp_intr, align 4
  %83 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %84 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %85 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %84, i32 0, i32 1
  %86 = call i32 @bus_setup_intr(i32 %75, i32* %78, i32 %81, i32* null, i32 %82, %struct.lp_data* %83, i32* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %36
  %90 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %91 = call i32 @bpfdetach(%struct.ifnet* %90)
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = call i32 @if_detach(%struct.ifnet* %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SYS_RES_IRQ, align 4
  %96 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %97 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %94, i32 %95, i32 0, i32* %98)
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %36
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %89, %34, %23
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.lp_data* @DEVTOSOFTC(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.lp_data*, i32*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
