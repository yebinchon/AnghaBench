; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_sysctl.c_ath_sysctl_hal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_sysctl.c_ath_sysctl_hal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hal\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Atheros HAL parameters\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Atheros HAL debugging printfs\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ar5416_biasadj\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Enable 2GHz AR5416 direction sensitivity bias adjust\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dma_brt\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Atheros HAL DMA beacon response time\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sw_brt\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Atheros HAL software beacon response time\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"swba_backoff\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Atheros HAL additional SWBA backoff time\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"force_full_reset\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Force full chip reset rather than a warm reset\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"serialise_reg_war\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Force register access serialisation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_sysctl_hal_attach(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.sysctl_oid*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %8)
  store %struct.sysctl_oid* %9, %struct.sysctl_oid** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %4, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %3, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %22 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %21)
  store %struct.sysctl_oid_list* %22, %struct.sysctl_oid_list** %5, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLFLAG_RW, align 4
  %32 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %28, %struct.sysctl_oid_list* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32* %36, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %44 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RW, align 4
  %47 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %43, %struct.sysctl_oid_list* %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32* %51, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 2, i32* %57, align 4
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RW, align 4
  %62 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %61, i32* %66, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %68 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 10, i32* %72, align 4
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %74 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RW, align 4
  %77 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %73, %struct.sysctl_oid_list* %74, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %76, i32* %81, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %83 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i32 0, i32* %87, align 4
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RW, align 4
  %92 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %91, i32* %96, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %98 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %104 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = load i32, i32* @CTLFLAG_RW, align 4
  %107 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %103, %struct.sysctl_oid_list* %104, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %106, i32* %111, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %113 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %114 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %115 = load i32, i32* @OID_AUTO, align 4
  %116 = load i32, i32* @CTLFLAG_RW, align 4
  %117 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 6
  %122 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %113, %struct.sysctl_oid_list* %114, i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %116, i32* %121, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
