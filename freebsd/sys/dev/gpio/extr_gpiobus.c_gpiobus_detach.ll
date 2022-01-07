; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiobus.c_gpiobus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { %struct.gpiobus_ivar*, i32 }
%struct.gpiobus_softc = type { i32, %struct.gpiobus_ivar*, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"gpiobus mutex not initialized\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpiobus_ivar*, i32)* @gpiobus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiobus_detach(%struct.gpiobus_ivar* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiobus_ivar, align 8
  %5 = alloca %struct.gpiobus_softc*, align 8
  %6 = alloca %struct.gpiobus_ivar*, align 8
  %7 = alloca %struct.gpiobus_ivar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.gpiobus_ivar* %4 to { %struct.gpiobus_ivar*, i32 }*
  %12 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %11, i32 0, i32 0
  store %struct.gpiobus_ivar* %0, %struct.gpiobus_ivar** %12, align 8
  %13 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %11, i32 0, i32 1
  store i32 %1, i32* %13, align 8
  %14 = bitcast %struct.gpiobus_ivar* %4 to { %struct.gpiobus_ivar*, i32 }*
  %15 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %14, i32 0, i32 0
  %16 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %15, align 8
  %17 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %14, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.gpiobus_softc* @GPIOBUS_SOFTC(%struct.gpiobus_ivar* %16, i32 %18)
  store %struct.gpiobus_softc* %19, %struct.gpiobus_softc** %5, align 8
  %20 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %21 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %20, i32 0, i32 3
  %22 = call i32 @mtx_initialized(i32* %21)
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %25 = call i32 @GPIOBUS_LOCK_DESTROY(%struct.gpiobus_softc* %24)
  %26 = bitcast %struct.gpiobus_ivar* %4 to { %struct.gpiobus_ivar*, i32 }*
  %27 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %26, i32 0, i32 0
  %28 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %27, align 8
  %29 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %26, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_generic_detach(%struct.gpiobus_ivar* %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %146

35:                                               ; preds = %2
  %36 = bitcast %struct.gpiobus_ivar* %4 to { %struct.gpiobus_ivar*, i32 }*
  %37 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %36, i32 0, i32 0
  %38 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %37, align 8
  %39 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %36, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_get_children(%struct.gpiobus_ivar* %38, i32 %40, %struct.gpiobus_ivar** %7, i32* %10)
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %146

45:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %51, i64 %53
  %55 = bitcast %struct.gpiobus_ivar* %54 to { %struct.gpiobus_ivar*, i32 }*
  %56 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %55, i32 0, i32 0
  %57 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %56, align 8
  %58 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %55, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(%struct.gpiobus_ivar* %57, i32 %59)
  store %struct.gpiobus_ivar* %60, %struct.gpiobus_ivar** %6, align 8
  %61 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %62 = call i32 @gpiobus_free_ivars(%struct.gpiobus_ivar* %61)
  %63 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %64 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %63, i32 0, i32 1
  %65 = call i32 @resource_list_free(i32* %64)
  %66 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %6, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = call i32 @free(%struct.gpiobus_ivar* %66, i32 %67)
  %69 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %69, i64 %71
  %73 = bitcast %struct.gpiobus_ivar* %4 to { %struct.gpiobus_ivar*, i32 }*
  %74 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %73, i32 0, i32 0
  %75 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %74, align 8
  %76 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %73, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %struct.gpiobus_ivar* %72 to { %struct.gpiobus_ivar*, i32 }*
  %79 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %78, i32 0, i32 0
  %80 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %79, align 8
  %81 = getelementptr inbounds { %struct.gpiobus_ivar*, i32 }, { %struct.gpiobus_ivar*, i32 }* %78, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_delete_child(%struct.gpiobus_ivar* %75, i32 %77, %struct.gpiobus_ivar* %80, i32 %82)
  br label %84

84:                                               ; preds = %50
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %46

87:                                               ; preds = %46
  %88 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %7, align 8
  %89 = load i32, i32* @M_TEMP, align 4
  %90 = call i32 @free(%struct.gpiobus_ivar* %88, i32 %89)
  %91 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %92 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %91, i32 0, i32 2
  %93 = call i32 @rman_fini(i32* %92)
  %94 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %95 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %94, i32 0, i32 1
  %96 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %95, align 8
  %97 = icmp ne %struct.gpiobus_ivar* %96, null
  br i1 %97, label %98, label %145

98:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %134, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %102 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %99
  %106 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %107 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %106, i32 0, i32 1
  %108 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %108, i64 %110
  %112 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %111, i32 0, i32 0
  %113 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %112, align 8
  %114 = icmp ne %struct.gpiobus_ivar* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %105
  %116 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %117 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %116, i32 0, i32 1
  %118 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %118, i64 %120
  %122 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %121, i32 0, i32 0
  %123 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %122, align 8
  %124 = load i32, i32* @M_DEVBUF, align 4
  %125 = call i32 @free(%struct.gpiobus_ivar* %123, i32 %124)
  br label %126

126:                                              ; preds = %115, %105
  %127 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %128 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %127, i32 0, i32 1
  %129 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %129, i64 %131
  %133 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %132, i32 0, i32 0
  store %struct.gpiobus_ivar* null, %struct.gpiobus_ivar** %133, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %99

137:                                              ; preds = %99
  %138 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %139 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %138, i32 0, i32 1
  %140 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %139, align 8
  %141 = load i32, i32* @M_DEVBUF, align 4
  %142 = call i32 @free(%struct.gpiobus_ivar* %140, i32 %141)
  %143 = load %struct.gpiobus_softc*, %struct.gpiobus_softc** %5, align 8
  %144 = getelementptr inbounds %struct.gpiobus_softc, %struct.gpiobus_softc* %143, i32 0, i32 1
  store %struct.gpiobus_ivar* null, %struct.gpiobus_ivar** %144, align 8
  br label %145

145:                                              ; preds = %137, %87
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %43, %33
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.gpiobus_softc* @GPIOBUS_SOFTC(%struct.gpiobus_ivar*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @GPIOBUS_LOCK_DESTROY(%struct.gpiobus_softc*) #1

declare dso_local i32 @bus_generic_detach(%struct.gpiobus_ivar*, i32) #1

declare dso_local i32 @device_get_children(%struct.gpiobus_ivar*, i32, %struct.gpiobus_ivar**, i32*) #1

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(%struct.gpiobus_ivar*, i32) #1

declare dso_local i32 @gpiobus_free_ivars(%struct.gpiobus_ivar*) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @free(%struct.gpiobus_ivar*, i32) #1

declare dso_local i32 @device_delete_child(%struct.gpiobus_ivar*, i32, %struct.gpiobus_ivar*, i32) #1

declare dso_local i32 @rman_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
