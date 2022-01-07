; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32, i32*, i32, i32, i32*, i32, i64, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.smc_softc* @device_get_softc(i32 %5)
  store %struct.smc_softc* %6, %struct.smc_softc** %4, align 8
  %7 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %8 = call i32 @SMC_LOCK(%struct.smc_softc* %7)
  %9 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %10 = call i32 @smc_stop(%struct.smc_softc* %9)
  %11 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %12 = call i32 @SMC_UNLOCK(%struct.smc_softc* %11)
  %13 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %14 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %13, i32 0, i32 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %18, i32 0, i32 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @ether_ifdetach(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %23, i32 0, i32 15
  %25 = call i32 @callout_drain(i32* %24)
  %26 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %26, i32 0, i32 14
  %28 = call i32 @callout_drain(i32* %27)
  %29 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %29, i32 0, i32 13
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %41 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %40, i32 0, i32 13
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_teardown_intr(i32 %36, i32* %39, i32* %42)
  br label %44

44:                                               ; preds = %33, %22
  %45 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %51 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %50, i32 0, i32 9
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %53, i32 0, i32 12
  %55 = call i32 @taskqueue_drain(i32* %52, i32* %54)
  %56 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %57 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %56, i32 0, i32 9
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %60 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %59, i32 0, i32 11
  %61 = call i32 @taskqueue_drain(i32* %58, i32* %60)
  %62 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %63 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %66 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %65, i32 0, i32 10
  %67 = call i32 @taskqueue_drain(i32* %64, i32* %66)
  %68 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %69 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @taskqueue_free(i32* %70)
  %72 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %73 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %72, i32 0, i32 9
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %49, %44
  %75 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %76 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %75, i32 0, i32 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %81 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %80, i32 0, i32 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @if_free(%struct.TYPE_4__* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %86 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %91 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %93, i32 0, i32 7
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @device_delete_child(i32 %92, i32* %95)
  %97 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %98 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bus_generic_detach(i32 %99)
  br label %101

101:                                              ; preds = %89, %84
  %102 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %103 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %107, i32* %3, align 4
  %108 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %109 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %106
  %115 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %116 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %120 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %123 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bus_release_resource(i32 %117, i32 %118, i32 %121, i32* %124)
  br label %126

126:                                              ; preds = %114, %101
  %127 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %128 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %133 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SYS_RES_IRQ, align 4
  %136 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %137 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %140 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @bus_release_resource(i32 %134, i32 %135, i32 %138, i32* %141)
  br label %143

143:                                              ; preds = %131, %126
  %144 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %145 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %144, i32 0, i32 0
  %146 = call i64 @mtx_initialized(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.smc_softc*, %struct.smc_softc** %4, align 8
  %150 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %149, i32 0, i32 0
  %151 = call i32 @mtx_destroy(i32* %150)
  br label %152

152:                                              ; preds = %148, %143
  ret i32 0
}

declare dso_local %struct.smc_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMC_LOCK(%struct.smc_softc*) #1

declare dso_local i32 @smc_stop(%struct.smc_softc*) #1

declare dso_local i32 @SMC_UNLOCK(%struct.smc_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.TYPE_4__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @if_free(%struct.TYPE_4__*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
