; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_thaw_simq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_thaw_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }

@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_FROZEN_NO_REQUESTS = common dso_local global i32 0, align 4
@VTSCSI_REQUEST_VQ = common dso_local global i32 0, align 4
@VTSCSI_FROZEN_REQUEST_VQ_FULL = common dso_local global i32 0, align 4
@VTSCSI_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SIMQ thawed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, i32)* @vtscsi_thaw_simq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_thaw_simq(%struct.vtscsi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %8 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %67

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VTSCSI_REQUEST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VTSCSI_FROZEN_NO_REQUESTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @VTSCSI_FROZEN_NO_REQUESTS, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %20, %15
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VTSCSI_REQUEST_VQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VTSCSI_FROZEN_REQUEST_VQ_FULL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @VTSCSI_FROZEN_REQUEST_VQ_FULL, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %39, %34
  %54 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %63 = load i32, i32* @VTSCSI_INFO, align 4
  %64 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %62, i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
