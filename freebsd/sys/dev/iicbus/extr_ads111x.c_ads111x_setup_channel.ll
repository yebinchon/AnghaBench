; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_setup_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_softc = type { i32, %struct.ads111x_channel* }
%struct.ads111x_channel = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"channel data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gain_index\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@ads111x_sysctl_gainidx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"programmable gain amp setting, 0-7\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rate_index\00", align 1
@ads111x_sysctl_rateidx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"sample rate setting, 0-7\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@CTLFLAG_SKIP = common dso_local global i32 0, align 4
@ads111x_sysctl_voltage = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"sampled voltage in microvolts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads111x_softc*, i32, i32, i32)* @ads111x_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads111x_setup_channel(%struct.ads111x_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ads111x_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ads111x_channel*, align 8
  %10 = alloca %struct.sysctl_ctx_list*, align 8
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca %struct.sysctl_oid*, align 8
  %13 = alloca [4 x i8], align 1
  store %struct.ads111x_softc* %0, %struct.ads111x_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %14, i32 0, i32 1
  %16 = load %struct.ads111x_channel*, %struct.ads111x_channel** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %16, i64 %18
  store %struct.ads111x_channel* %19, %struct.ads111x_channel** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ads111x_channel*, %struct.ads111x_channel** %9, align 8
  %22 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ads111x_channel*, %struct.ads111x_channel** %9, align 8
  %25 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ads111x_channel*, %struct.ads111x_channel** %9, align 8
  %27 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %87

31:                                               ; preds = %4
  %32 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %34)
  store %struct.sysctl_ctx_list* %35, %struct.sysctl_ctx_list** %10, align 8
  %36 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %38)
  store %struct.sysctl_oid* %39, %struct.sysctl_oid** %12, align 8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @snprintf(i8* %40, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %44 = load %struct.sysctl_oid*, %struct.sysctl_oid** %12, align 8
  %45 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %43, i32 %45, i32 %46, i8* %47, i32 %48, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %49, %struct.sysctl_oid** %11, align 8
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %51 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %52 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLTYPE_INT, align 4
  %55 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ads111x_sysctl_gainidx, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %50, i32 %52, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56, %struct.ads111x_softc* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %63 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_INT, align 4
  %66 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ads111x_sysctl_rateidx, align 4
  %71 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, i32 %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %67, %struct.ads111x_softc* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %73 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLTYPE_INT, align 4
  %77 = load i32, i32* @CTLFLAG_RD, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CTLFLAG_SKIP, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.ads111x_softc*, %struct.ads111x_softc** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ads111x_sysctl_voltage, align 4
  %84 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %72, i32 %74, i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %80, %struct.ads111x_softc* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %85 = load %struct.ads111x_channel*, %struct.ads111x_channel** %9, align 8
  %86 = getelementptr inbounds %struct.ads111x_channel, %struct.ads111x_channel* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ads111x_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
