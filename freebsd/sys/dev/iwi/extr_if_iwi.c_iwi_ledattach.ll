; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_ledattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_ledattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@hz = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"softled\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@iwi_sysctl_softled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"enable/disable software LED support\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ledpin\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"pin setting to turn activity LED on\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ledidle\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"idle time for inactivity LED (ticks)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nictype\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"NIC type from EEPROM\00", align 1
@IWI_RST_LED_ACTIVITY = common dso_local global i32 0, align 4
@IWI_EEPROM_NIC = common dso_local global i32 0, align 4
@IWI_RST_LED_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_ledattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_ledattach(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %5 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @hz, align 4
  %18 = mul nsw i32 2700, %17
  %19 = sdiv i32 %18, 1000
  %20 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %23 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %22, i32 0, i32 6
  %24 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %24, i32 0, i32 5
  %26 = call i32 @callout_init_mtx(i32* %23, i32* %25, i32 0)
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %28 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %29 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_INT, align 4
  %32 = load i32, i32* @CTLFLAG_RW, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %35 = load i32, i32* @iwi_sysctl_softled, align 4
  %36 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, i32 %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.iwi_softc* %34, i32 0, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %38 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %39 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RW, align 4
  %42 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %43 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %42, i32 0, i32 2
  %44 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %37, i32 %39, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %47 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RW, align 4
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 1
  %52 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %45, i32 %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32* %51, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %59 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %58, i32 0, i32 3
  %60 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %57, i32* %59, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i32, i32* @IWI_RST_LED_ACTIVITY, align 4
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %63 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %65 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %64, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %67 = load i32, i32* @IWI_EEPROM_NIC, align 4
  %68 = call i32 @iwi_read_prom_word(%struct.iwi_softc* %66, i32 %67)
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %72 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %74 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %1
  %78 = load i32, i32* @IWI_RST_LED_ASSOCIATED, align 4
  %79 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %80 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %1
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.iwi_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @iwi_read_prom_word(%struct.iwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
