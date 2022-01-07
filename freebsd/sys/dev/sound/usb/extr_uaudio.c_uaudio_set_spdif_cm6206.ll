; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_set_spdif_cm6206.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_set_spdif_cm6206.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32 }

@__const.uaudio_set_spdif_cm6206.cmd = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 32, i32 32, i32 0, i32 0], [4 x i32] [i32 32, i32 48, i32 2, i32 1]], align 16
@UAUDIO_SPDIF_OUT = common dso_local global i32 0, align 4
@UAUDIO_SPDIF_OUT_96K = common dso_local global i32 0, align 4
@UAUDIO_SPDIF_IN_MIX = common dso_local global i32 0, align 4
@UHID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uaudio_softc*, i32)* @uaudio_set_spdif_cm6206 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_set_spdif_cm6206(%struct.uaudio_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uaudio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x [4 x i32]], align 16
  %7 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [2 x [4 x i32]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([2 x [4 x i32]]* @__const.uaudio_set_spdif_cm6206.cmd to i8*), i64 32, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @UAUDIO_SPDIF_OUT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 1
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %15, align 4
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 2, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UAUDIO_SPDIF_OUT_96K, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 1
  store i32 96, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UAUDIO_SPDIF_IN_MIX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 1
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 1
  store i32 3, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 %44
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 0, i64 0
  %47 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UHID_OUTPUT_REPORT, align 4
  %51 = call i64 @usbd_req_set_report(i32 %42, i32* null, i32* %46, i32 16, i32 %49, i32 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %36

59:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @usbd_req_set_report(i32, i32*, i32*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
