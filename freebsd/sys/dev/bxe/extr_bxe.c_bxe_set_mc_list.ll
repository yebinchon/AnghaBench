; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32*, i32* }

@ECORE_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to clear multicast configuration: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to create mcast MACs list (%d)\0A\00", align 1
@ECORE_MCAST_CMD_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set new mcast config (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_set_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_mc_list(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_mcast_ramrod_params, align 8
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %6 = bitcast %struct.ecore_mcast_ramrod_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %4, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = call i32 @BXE_MCAST_LOCK(%struct.bxe_softc* %10)
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = load i32, i32* @ECORE_MCAST_CMD_DEL, align 4
  %14 = call i32 @ecore_config_mcast(%struct.bxe_softc* %12, %struct.ecore_mcast_ramrod_params* %4, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BLOGE(%struct.bxe_softc* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %22 = call i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = call i32 @bxe_init_mcast_macs_list(%struct.bxe_softc* %25, %struct.ecore_mcast_ramrod_params* %4)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BLOGE(%struct.bxe_softc* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = call i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %24
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = load i32, i32* @ECORE_MCAST_CMD_ADD, align 4
  %39 = call i32 @ecore_config_mcast(%struct.bxe_softc* %37, %struct.ecore_mcast_ramrod_params* %4, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BLOGE(%struct.bxe_softc* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = call i32 @bxe_free_mcast_macs_list(%struct.ecore_mcast_ramrod_params* %4)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = call i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %29, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BXE_MCAST_LOCK(%struct.bxe_softc*) #2

declare dso_local i32 @ecore_config_mcast(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32) #2

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #2

declare dso_local i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc*) #2

declare dso_local i32 @bxe_init_mcast_macs_list(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*) #2

declare dso_local i32 @bxe_free_mcast_macs_list(%struct.ecore_mcast_ramrod_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
