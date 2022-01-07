; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_ic_softc = type { i32, i32, i32 }
%struct.vmbus_channel = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@VMBUS_IC_BRSIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@vmbus_ic_fwver_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"framework version\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"msg_version\00", align 1
@vmbus_ic_msgver_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"message version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_ic_attach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_ic_softc*, align 8
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.sysctl_ctx_list*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.vmbus_ic_softc* @device_get_softc(i32 %11)
  store %struct.vmbus_ic_softc* %12, %struct.vmbus_ic_softc** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.vmbus_channel* @vmbus_get_channel(i32 %13)
  store %struct.vmbus_channel* %14, %struct.vmbus_channel** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %17 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @VMBUS_IC_BRSIZE, align 4
  %19 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %20 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VMBUS_IC_BRSIZE, align 4
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @malloc(i32 %21, i32 %22, i32 %25)
  %27 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %28 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %30 = call i32 @vmbus_chan_set_readbatch(%struct.vmbus_channel* %29, i32 0)
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %32 = load i32, i32* @VMBUS_IC_BRSIZE, align 4
  %33 = load i32, i32* @VMBUS_IC_BRSIZE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %36 = call i32 @vmbus_chan_open(%struct.vmbus_channel* %31, i32 %32, i32 %33, i32* null, i32 0, i32 %34, %struct.vmbus_ic_softc* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %41 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = call i32 @free(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %74

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %47)
  store %struct.sysctl_ctx_list* %48, %struct.sysctl_ctx_list** %9, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @device_get_sysctl_tree(i32 %49)
  %51 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %50)
  store %struct.sysctl_oid_list* %51, %struct.sysctl_oid_list** %8, align 8
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_STRING, align 4
  %56 = load i32, i32* @CTLFLAG_RD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %61 = load i32, i32* @vmbus_ic_fwver_sysctl, align 4
  %62 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %59, %struct.vmbus_ic_softc* %60, i32 0, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %64 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLTYPE_STRING, align 4
  %67 = load i32, i32* @CTLFLAG_RD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %6, align 8
  %72 = load i32, i32* @vmbus_ic_msgver_sysctl, align 4
  %73 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %63, %struct.sysctl_oid_list* %64, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %70, %struct.vmbus_ic_softc* %71, i32 0, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %46, %39
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.vmbus_ic_softc* @device_get_softc(i32) #1

declare dso_local %struct.vmbus_channel* @vmbus_get_channel(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @vmbus_chan_set_readbatch(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_chan_open(%struct.vmbus_channel*, i32, i32, i32*, i32, i32, %struct.vmbus_ic_softc*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.vmbus_ic_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
