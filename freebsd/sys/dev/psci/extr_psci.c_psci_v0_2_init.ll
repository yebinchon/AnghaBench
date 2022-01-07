; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_psci.c_psci_v0_2_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_psci.c_psci_v0_2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psci_softc = type { i32, i32* }

@PSCI_FNID_VERSION = common dso_local global i32 0, align 4
@PSCI_FN_VERSION = common dso_local global i64 0, align 8
@PSCI_FNID_CPU_SUSPEND = common dso_local global i32 0, align 4
@PSCI_FN_CPU_SUSPEND = common dso_local global i64 0, align 8
@PSCI_FNID_CPU_OFF = common dso_local global i32 0, align 4
@PSCI_FN_CPU_OFF = common dso_local global i64 0, align 8
@PSCI_FNID_CPU_ON = common dso_local global i32 0, align 4
@PSCI_FN_CPU_ON = common dso_local global i64 0, align 8
@PSCI_FNID_AFFINITY_INFO = common dso_local global i32 0, align 4
@PSCI_FN_AFFINITY_INFO = common dso_local global i64 0, align 8
@PSCI_FNID_MIGRATE = common dso_local global i32 0, align 4
@PSCI_FN_MIGRATE = common dso_local global i64 0, align 8
@PSCI_FNID_MIGRATE_INFO_TYPE = common dso_local global i32 0, align 4
@PSCI_FN_MIGRATE_INFO_TYPE = common dso_local global i64 0, align 8
@PSCI_FNID_MIGRATE_INFO_UP_CPU = common dso_local global i32 0, align 4
@PSCI_FN_MIGRATE_INFO_UP_CPU = common dso_local global i64 0, align 8
@PSCI_FNID_SYSTEM_OFF = common dso_local global i32 0, align 4
@PSCI_FN_SYSTEM_OFF = common dso_local global i64 0, align 8
@PSCI_FNID_SYSTEM_RESET = common dso_local global i32 0, align 4
@PSCI_FN_SYSTEM_RESET = common dso_local global i64 0, align 8
@PSCI_RETVAL_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"PSCI get_version() function is not implemented,  assuming v%d.%d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"PSCI version 0.2 compatible\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@psci_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"PSCI version number mismatched with DT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @psci_v0_2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psci_v0_2_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.psci_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.psci_softc* @device_get_softc(i32 %8)
  store %struct.psci_softc* %9, %struct.psci_softc** %6, align 8
  %10 = load i32, i32* @PSCI_FNID_VERSION, align 4
  %11 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %12 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @PSCI_FN_VERSION, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %10, i32* %15, align 4
  %16 = load i32, i32* @PSCI_FNID_CPU_SUSPEND, align 4
  %17 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %18 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @PSCI_FN_CPU_SUSPEND, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @PSCI_FNID_CPU_OFF, align 4
  %23 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %24 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @PSCI_FN_CPU_OFF, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* @PSCI_FNID_CPU_ON, align 4
  %29 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %30 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @PSCI_FN_CPU_ON, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* @PSCI_FNID_AFFINITY_INFO, align 4
  %35 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %36 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @PSCI_FN_AFFINITY_INFO, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @PSCI_FNID_MIGRATE, align 4
  %41 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %42 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @PSCI_FN_MIGRATE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @PSCI_FNID_MIGRATE_INFO_TYPE, align 4
  %47 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %48 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @PSCI_FN_MIGRATE_INFO_TYPE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @PSCI_FNID_MIGRATE_INFO_UP_CPU, align 4
  %53 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %54 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @PSCI_FN_MIGRATE_INFO_UP_CPU, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* @PSCI_FNID_SYSTEM_OFF, align 4
  %59 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %60 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PSCI_FN_SYSTEM_OFF, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @PSCI_FNID_SYSTEM_RESET, align 4
  %65 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %66 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @PSCI_FN_SYSTEM_RESET, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %71 = call i32 @_psci_get_version(%struct.psci_softc* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PSCI_RETVAL_NOT_SUPPORTED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %2
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PSCI_RETVAL_NOT_SUPPORTED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %117

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @PSCI_VER_MAJOR(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @PSCI_VER_MINOR(i32 %84)
  %86 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %80, %2
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %90 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @PSCI_VER_MAJOR(i32 %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @PSCI_VER_MINOR(i32 %95)
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %102, label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @PSCI_VER_MAJOR(i32 %99)
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %114

102:                                              ; preds = %98, %94
  %103 = load i64, i64* @bootverbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* @shutdown_final, align 4
  %110 = load i32, i32* @psci_shutdown, align 4
  %111 = load %struct.psci_softc*, %struct.psci_softc** %6, align 8
  %112 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %113 = call i32 @EVENTHANDLER_REGISTER(i32 %109, i32 %110, %struct.psci_softc* %111, i32 %112)
  store i32 0, i32* %3, align 4
  br label %117

114:                                              ; preds = %98
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %108, %79
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.psci_softc* @device_get_softc(i32) #1

declare dso_local i32 @_psci_get_version(%struct.psci_softc*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @PSCI_VER_MAJOR(i32) #1

declare dso_local i32 @PSCI_VER_MINOR(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.psci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
