; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.ifnet*, i32, i32 }
%struct.ifnet = type { i32 }

@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't allocate ifnet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"create nic\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"init ifnet\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"init vpd\00", align 1
@SFXGE_REGISTERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sfxge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sfxge_softc* @device_get_softc(i32 %7)
  store %struct.sfxge_softc* %8, %struct.sfxge_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @IFT_ETHER, align 4
  %13 = call %struct.ifnet* @if_alloc(i32 %12)
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = icmp eq %struct.ifnet* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %6, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 1
  store %struct.ifnet* %21, %struct.ifnet** %23, align 8
  %24 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %25 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @DBGPRINT(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %29 = call i32 @sfxge_create(%struct.sfxge_softc* %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %73

32:                                               ; preds = %20
  %33 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %34 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @DBGPRINT(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %39 = call i32 @sfxge_ifnet_init(%struct.ifnet* %37, %struct.sfxge_softc* %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %66

42:                                               ; preds = %32
  %43 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %44 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @DBGPRINT(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %48 = call i32 @sfxge_vpd_init(%struct.sfxge_softc* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %63

51:                                               ; preds = %42
  %52 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %53 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @efx_nic_fini(i32 %54)
  %56 = load i32, i32* @SFXGE_REGISTERED, align 4
  %57 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %58 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %60 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @DBGPRINT(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

63:                                               ; preds = %50
  %64 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %65 = call i32 @sfxge_ifnet_fini(%struct.ifnet* %64)
  br label %66

66:                                               ; preds = %63, %41
  %67 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %68 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @efx_nic_fini(i32 %69)
  %71 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %72 = call i32 @sfxge_destroy(%struct.sfxge_softc* %71)
  br label %73

73:                                               ; preds = %66, %31
  %74 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %75 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %74, i32 0, i32 1
  %76 = load %struct.ifnet*, %struct.ifnet** %75, align 8
  %77 = call i32 @if_free(%struct.ifnet* %76)
  br label %78

78:                                               ; preds = %73, %16
  %79 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %80 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, ...) @DBGPRINT(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %51
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.sfxge_softc* @device_get_softc(i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DBGPRINT(i32, i8*, ...) #1

declare dso_local i32 @sfxge_create(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_ifnet_init(%struct.ifnet*, %struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_vpd_init(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_fini(i32) #1

declare dso_local i32 @sfxge_ifnet_fini(%struct.ifnet*) #1

declare dso_local i32 @sfxge_destroy(%struct.sfxge_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
