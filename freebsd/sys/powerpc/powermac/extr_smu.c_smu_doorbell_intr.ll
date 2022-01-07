; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_doorbell_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_doorbell_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_softc = type { i32, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@smu_doorbell = common dso_local global i32 0, align 4
@GPIO_DDR_OUTPUT = common dso_local global i32 0, align 4
@GPIO_LEVEL_RO = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@powerpc_pow_enabled = common dso_local global i32 0, align 4
@cmd_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smu_doorbell_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_doorbell_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smu_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i32, i32* @smu_doorbell, align 4
  %8 = call i32 @macgpio_read(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.smu_softc* @device_get_softc(i8* %9)
  store %struct.smu_softc* %10, %struct.smu_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GPIO_DDR_OUTPUT, align 4
  %13 = load i32, i32* @GPIO_LEVEL_RO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GPIO_DATA, align 4
  %16 = or i32 %14, %15
  %17 = icmp ne i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %21 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %24 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %81

28:                                               ; preds = %19
  %29 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %30 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  call void asm sideeffect "dcbf 0,$0; sync", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.TYPE_5__* %31) #2, !srcloc !2
  %32 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %33 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %36 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %39 = call i32 @bus_dmamap_sync(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %41 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %46 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %50 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %55 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %59 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %64 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %63, i32 0, i32 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %62, i32 %67, i32 4)
  %69 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %70 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @wakeup(%struct.TYPE_6__* %71)
  %73 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %74 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %73, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %76 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %28
  store i32 1, i32* @powerpc_pow_enabled, align 4
  br label %80

80:                                               ; preds = %79, %28
  br label %81

81:                                               ; preds = %80, %27
  %82 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %83 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %82, i32 0, i32 2
  %84 = call %struct.TYPE_6__* @STAILQ_FIRST(i32* %83)
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %88 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %87, i32 0, i32 2
  %89 = call %struct.TYPE_6__* @STAILQ_FIRST(i32* %88)
  %90 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %91 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %90, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %91, align 8
  %92 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %93 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %92, i32 0, i32 2
  %94 = load i32, i32* @cmd_q, align 4
  %95 = call i32 @STAILQ_REMOVE_HEAD(i32* %93, i32 %94)
  %96 = load i8*, i8** %3, align 8
  %97 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %98 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @smu_send_cmd(i8* %96, %struct.TYPE_6__* %99)
  br label %101

101:                                              ; preds = %86, %81
  %102 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %103 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %102, i32 0, i32 0
  %104 = call i32 @mtx_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %18
  ret void
}

declare dso_local i32 @macgpio_read(i32) #1

declare dso_local %struct.smu_softc* @device_get_softc(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @smu_send_cmd(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1336}
