; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_cam_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_cam_enable(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %4 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %5 = call i32 @MPT_LOCK(%struct.mpt_softc* %4)
  %6 = load i32, i32* @EIO, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %13 = call i64 @mpt_read_config_info_fc(%struct.mpt_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %57

16:                                               ; preds = %11
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %18 = call i64 @mpt_set_initial_config_fc(%struct.mpt_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %57

21:                                               ; preds = %16
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %29 = call i64 @mpt_read_config_info_sas(%struct.mpt_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %57

32:                                               ; preds = %27
  %33 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %34 = call i64 @mpt_set_initial_config_sas(%struct.mpt_softc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %57

37:                                               ; preds = %32
  br label %55

38:                                               ; preds = %22
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %45 = call i64 @mpt_read_config_info_spi(%struct.mpt_softc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %57

48:                                               ; preds = %43
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %50 = call i64 @mpt_set_initial_config_spi(%struct.mpt_softc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %21
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %47, %36, %31, %20, %15
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %59 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %58)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_read_config_info_fc(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_set_initial_config_fc(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_read_config_info_sas(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_set_initial_config_sas(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_read_config_info_spi(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_set_initial_config_spi(%struct.mpt_softc*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
