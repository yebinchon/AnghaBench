; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_atibl.c_atibl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atibl_softc = type { i32* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not alloc mem resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@atibl_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Backlight level (0-100)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atibl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atibl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atibl_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.atibl_softc* @device_get_softc(i32 %8)
  store %struct.atibl_softc* %9, %struct.atibl_softc** %4, align 8
  store i32 24, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = load i32, i32* @RF_SHAREABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %7, i32 %14)
  %16 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %17 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %19 = getelementptr inbounds %struct.atibl_softc, %struct.atibl_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %27)
  store %struct.sysctl_ctx_list* %28, %struct.sysctl_ctx_list** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %29)
  store %struct.sysctl_oid* %30, %struct.sysctl_oid** %6, align 8
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %32 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %33 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %32)
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLTYPE_INT, align 4
  %36 = load i32, i32* @CTLFLAG_RW, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.atibl_softc*, %struct.atibl_softc** %4, align 8
  %39 = load i32, i32* @atibl_sysctl, align 4
  %40 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %31, i32 %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.atibl_softc* %38, i32 0, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %26, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.atibl_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.atibl_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
