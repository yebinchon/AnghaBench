; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_alloc_scports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/console/extr_virtio_console.c_vtcon_alloc_scports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtcon_softc = type { i32, %struct.vtcon_softc_port* }
%struct.vtcon_softc_port = type { %struct.vtcon_softc* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtcon_softc*)* @vtcon_alloc_scports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtcon_alloc_scports(%struct.vtcon_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtcon_softc*, align 8
  %4 = alloca %struct.vtcon_softc_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtcon_softc* %0, %struct.vtcon_softc** %3, align 8
  %7 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.vtcon_softc_port* @malloc(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %19, i32 0, i32 1
  store %struct.vtcon_softc_port* %18, %struct.vtcon_softc_port** %20, align 8
  %21 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %21, i32 0, i32 1
  %23 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %22, align 8
  %24 = icmp eq %struct.vtcon_softc_port* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtcon_softc, %struct.vtcon_softc* %33, i32 0, i32 1
  %35 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %35, i64 %37
  store %struct.vtcon_softc_port* %38, %struct.vtcon_softc_port** %4, align 8
  %39 = load %struct.vtcon_softc*, %struct.vtcon_softc** %3, align 8
  %40 = load %struct.vtcon_softc_port*, %struct.vtcon_softc_port** %4, align 8
  %41 = getelementptr inbounds %struct.vtcon_softc_port, %struct.vtcon_softc_port* %40, i32 0, i32 0
  store %struct.vtcon_softc* %39, %struct.vtcon_softc** %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.vtcon_softc_port* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
