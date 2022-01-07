; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3disk_softc = type { i32, i32*, i32*, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_PS3DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps3disk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3disk_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ps3disk_softc* @device_get_softc(i32 %5)
  store %struct.ps3disk_softc* %6, %struct.ps3disk_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @disk_destroy(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_dma_tag_destroy(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_teardown_intr(i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bus_release_resource(i32 %38, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @M_PS3DISK, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  %52 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @M_PS3DISK, align 4
  %56 = call i32 @free(i32* %54, i32 %55)
  %57 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %58 = call i32 @PS3DISK_LOCK_DESTROY(%struct.ps3disk_softc* %57)
  ret i32 0
}

declare dso_local %struct.ps3disk_softc* @device_get_softc(i32) #1

declare dso_local i32 @disk_destroy(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @PS3DISK_LOCK_DESTROY(%struct.ps3disk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
