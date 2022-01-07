; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"manual_pad\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Manually pad short frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_add_sysctls(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %6 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %20 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %25 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %25, i32 0, i32 0
  %27 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24, i64* %26, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
