; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_attach_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_attach_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tx_pkts_aligned\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"number of TX aligned packets\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"tx_pkts_unaligned\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"number of TX unaligned packets\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"tx_pkts_unaligned_start\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"number of TX unaligned packets (start)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"tx_pkts_unaligned_len\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"number of TX unaligned packets (len)\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"tx_pkts_nosegs\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"number of TX packets fail with no ring slots avail\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"intr_stray_filter\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"number of stray interrupts (filter)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"intr_stray_intr\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"number of stray interrupts (intr)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"intr_ok\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"number of OK interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arge_attach_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arge_attach_sysctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arge_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.arge_softc* @device_get_softc(i32 %6)
  store %struct.arge_softc* %7, %struct.arge_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %10)
  store %struct.sysctl_oid* %11, %struct.sysctl_oid** %5, align 8
  %12 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %13 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %14 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %13)
  %15 = load i32, i32* @OID_AUTO, align 4
  %16 = load i32, i32* @CTLFLAG_RW, align 4
  %17 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  %20 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %12, i32 %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %19, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %23 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %22)
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLFLAG_RW, align 4
  %26 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %21, i32 %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32* %28, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %32 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %31)
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %30, i32 %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32* %37, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %40 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %41 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RW, align 4
  %44 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %39, i32 %41, i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32* %46, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %49 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %50 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %49)
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RW, align 4
  %53 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %48, i32 %50, i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %52, i32* %55, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %57 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %58 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %59 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %58)
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RW, align 4
  %62 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %63 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %57, i32 %59, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32* %64, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %66 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %67 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %68 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %67)
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RW, align 4
  %71 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %66, i32 %68, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %70, i32* %73, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %77 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RW, align 4
  %80 = load %struct.arge_softc*, %struct.arge_softc** %3, align 8
  %81 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %75, i32 %77, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %79, i32* %82, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local %struct.arge_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
