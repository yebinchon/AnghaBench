; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_sas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_sas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.mptsas_phyinfo* }
%struct.mptsas_phyinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@mpt_enable_sata_wc = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%sabling SATA WC on phy %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_set_initial_config_sas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_set_initial_config_sas(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.mptsas_phyinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %5 = load i32, i32* @mpt_enable_sata_wc, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %68

7:                                                ; preds = %1
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %68

12:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %64, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %13
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %26, i64 %28
  store %struct.mptsas_phyinfo* %29, %struct.mptsas_phyinfo** %3, align 8
  %30 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %3, align 8
  %31 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %64

36:                                               ; preds = %21
  %37 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %3, align 8
  %38 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %64

45:                                               ; preds = %36
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %50 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @mpt_enable_sata_wc, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %48, %45
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %60 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %3, align 8
  %61 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %60, i32 0, i32 0
  %62 = load i32, i32* @mpt_enable_sata_wc, align 4
  %63 = call i32 @mptsas_set_sata_wc(%struct.mpt_softc* %59, %struct.TYPE_4__* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %44, %35
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %13

67:                                               ; preds = %13
  br label %68

68:                                               ; preds = %67, %7, %1
  ret i32 0
}

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @mptsas_set_sata_wc(%struct.mpt_softc*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
