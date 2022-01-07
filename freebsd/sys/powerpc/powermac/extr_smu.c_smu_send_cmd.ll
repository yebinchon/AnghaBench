; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd = type { i32, i32, i32 }
%struct.smu_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.smu_cmd*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@powerpc_pow_enabled = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@smu_doorbell = common dso_local global i32 0, align 4
@GPIO_DDR_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.smu_cmd*)* @smu_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_send_cmd(i32 %0, %struct.smu_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_cmd*, align 8
  %5 = alloca %struct.smu_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.smu_cmd* %1, %struct.smu_cmd** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.smu_softc* @device_get_softc(i32 %6)
  store %struct.smu_softc* %7, %struct.smu_softc** %5, align 8
  %8 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %9 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %8, i32 0, i32 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %13 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 0, i64* @powerpc_pow_enabled, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %struct.smu_cmd*, %struct.smu_cmd** %4, align 8
  %19 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %20 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %19, i32 0, i32 6
  store %struct.smu_cmd* %18, %struct.smu_cmd** %20, align 8
  %21 = load %struct.smu_cmd*, %struct.smu_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %25 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.smu_cmd*, %struct.smu_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %32 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %36 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smu_cmd*, %struct.smu_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %39, i32 %42, i32 4)
  %44 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %45 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %48 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %50)
  %52 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %53 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %56 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %59 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_space_write_4(i32 %54, i32 %57, i32 0, i32 %60)
  %62 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %63 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  call void asm sideeffect "sync; dcbf 0,$0; sync", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.TYPE_2__* %64) #2, !srcloc !2
  %65 = load i32, i32* @smu_doorbell, align 4
  %66 = load i32, i32* @GPIO_DDR_OUTPUT, align 4
  %67 = call i32 @macgpio_write(i32 %65, i32 %66)
  ret void
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @macgpio_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1340}
