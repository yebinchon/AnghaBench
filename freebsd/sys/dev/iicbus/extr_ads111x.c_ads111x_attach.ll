; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_softc = type { i32, i32, i32*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@ADS111x_CONF_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot get chipinfo (but it worked during probe)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ADS111x_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot write chip config register\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@ads111x_sysctl_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"configuration register word\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lo_thresh\00", align 1
@ads111x_sysctl_lothresh = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"comparator low threshold\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hi_thresh\00", align 1
@ads111x_sysctl_hithresh = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"comparator high threshold\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ads111x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ads111x_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads111x_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ads111x_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ads111x_softc* @device_get_softc(i32 %8)
  store %struct.ads111x_softc* %9, %struct.ads111x_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @iicbus_get_addr(i32 %13)
  %15 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ADS111x_CONF_DEFAULT, align 4
  %18 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @ads111x_find_chipinfo(i32 %22)
  %24 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %86

34:                                               ; preds = %1
  %35 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %36 = load i32, i32* @ADS111x_CONF, align 4
  %37 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ads111x_write_2(%struct.ads111x_softc* %35, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %86

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %47)
  store %struct.sysctl_ctx_list* %48, %struct.sysctl_ctx_list** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %49)
  store %struct.sysctl_oid* %50, %struct.sysctl_oid** %6, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_INT, align 4
  %56 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %59 = load i32, i32* @ads111x_sysctl_config, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %57, %struct.ads111x_softc* %58, i32 0, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %63 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_INT, align 4
  %66 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %69 = load i32, i32* @ads111x_sysctl_lothresh, align 4
  %70 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, i32 %63, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %67, %struct.ads111x_softc* %68, i32 0, i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %72 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %73 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %72)
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLTYPE_INT, align 4
  %76 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %79 = load i32, i32* @ads111x_sysctl_hithresh, align 4
  %80 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %71, i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %77, %struct.ads111x_softc* %78, i32 0, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %82 = call i32 @ads111x_add_channels(%struct.ads111x_softc* %81)
  %83 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %83, i32 0, i32 0
  %85 = call i32 @sx_init(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %46, %42, %30
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.ads111x_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32* @ads111x_find_chipinfo(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ads111x_write_2(%struct.ads111x_softc*, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ads111x_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @ads111x_add_channels(%struct.ads111x_softc*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
