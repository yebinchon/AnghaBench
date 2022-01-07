; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_nvbl.c_nvbl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbl_softc = type { i32* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not alloc mem resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NVIDIA_MMIO_PMC = common dso_local global i64 0, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@nvbl_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Backlight level (0-100)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvbl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvbl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbl_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.nvbl_softc* @device_get_softc(i32 %8)
  store %struct.nvbl_softc* %9, %struct.nvbl_softc** %4, align 8
  store i32 16, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = load i32, i32* @RF_SHAREABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %7, i32 %14)
  %16 = load %struct.nvbl_softc*, %struct.nvbl_softc** %4, align 8
  %17 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.nvbl_softc*, %struct.nvbl_softc** %4, align 8
  %19 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.nvbl_softc*, %struct.nvbl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @NVIDIA_MMIO_PMC, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @bus_read_stream_4(i32* %29, i64 %31)
  %33 = and i32 %32, 16777217
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = load %struct.nvbl_softc*, %struct.nvbl_softc** %4, align 8
  %37 = getelementptr inbounds %struct.nvbl_softc, %struct.nvbl_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @NVIDIA_MMIO_PMC, align 8
  %40 = add nsw i64 %39, 4
  %41 = call i32 @bus_write_stream_4(i32* %38, i64 %40, i32 16777217)
  %42 = call i32 (...) @mb()
  br label %43

43:                                               ; preds = %35, %26
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %44)
  store %struct.sysctl_ctx_list* %45, %struct.sysctl_ctx_list** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %46)
  store %struct.sysctl_oid* %47, %struct.sysctl_oid** %6, align 8
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %49 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %50 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %49)
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLTYPE_INT, align 4
  %53 = load i32, i32* @CTLFLAG_RW, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.nvbl_softc*, %struct.nvbl_softc** %4, align 8
  %56 = load i32, i32* @nvbl_sysctl, align 4
  %57 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %48, i32 %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54, %struct.nvbl_softc* %55, i32 0, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %43, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.nvbl_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_read_stream_4(i32*, i64) #1

declare dso_local i32 @bus_write_stream_4(i32*, i64, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.nvbl_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
