; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, i32, i64, i32 }
%struct.an_ltv_ssidlist_new = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.an_ltv_gen = type { i32 }

@AN_IOSIZ = common dso_local global i32 0, align 4
@AN_RID_SSIDLIST = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@AN_CMD_READCFG = common dso_local global i32 0, align 4
@AN_DEF_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @an_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca %struct.an_ltv_ssidlist_new, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.an_softc* @device_get_softc(i32 %7)
  store %struct.an_softc* %8, %struct.an_softc** %4, align 8
  %9 = bitcast %struct.an_ltv_ssidlist_new* %5 to i8*
  %10 = call i32 @bzero(i8* %9, i32 24)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AN_IOSIZ, align 4
  %13 = call i32 @an_alloc_port(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %19 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @rman_get_start(i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %91

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %5, i32 0, i32 0
  store i32 24, i32* %25, align 8
  %26 = load i32, i32* @AN_RID_SSIDLIST, align 4
  %27 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %29 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %31 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %32 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @AN_INT_EN(i64 %33)
  %35 = call i32 @CSR_WRITE_2(%struct.an_softc* %30, i32 %34, i32 0)
  %36 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %37 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %38 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @AN_EVENT_ACK(i64 %39)
  %41 = call i32 @CSR_WRITE_2(%struct.an_softc* %36, i32 %40, i32 65535)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %44 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %46 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_get_nameunit(i32 %47)
  %49 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %50 = load i32, i32* @MTX_DEF, align 4
  %51 = call i32 @mtx_init(i32* %46, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %53 = call i32 @AN_LOCK(%struct.an_softc* %52)
  %54 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %55 = call i32 @an_reset(%struct.an_softc* %54)
  %56 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %57 = load i32, i32* @AN_CMD_READCFG, align 4
  %58 = call i64 @an_cmd(%struct.an_softc* %56, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %24
  %61 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %62 = call i32 @AN_UNLOCK(%struct.an_softc* %61)
  br label %87

63:                                               ; preds = %24
  %64 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %65 = bitcast %struct.an_ltv_ssidlist_new* %5 to %struct.an_ltv_gen*
  %66 = call i64 @an_read_record(%struct.an_softc* %64, %struct.an_ltv_gen* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %70 = call i32 @AN_UNLOCK(%struct.an_softc* %69)
  br label %87

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %5, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AN_DEF_SSID, align 4
  %78 = call i64 @strcmp(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %82 = call i32 @AN_UNLOCK(%struct.an_softc* %81)
  br label %87

83:                                               ; preds = %71
  %84 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %85 = call i32 @AN_UNLOCK(%struct.an_softc* %84)
  %86 = load i32, i32* @AN_IOSIZ, align 4
  store i32 %86, i32* %2, align 4
  br label %91

87:                                               ; preds = %80, %68, %60
  %88 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %89 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %88, i32 0, i32 0
  %90 = call i32 @mtx_destroy(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %83, %23, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.an_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @an_alloc_port(i32, i32, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_INT_EN(i64) #1

declare dso_local i32 @AN_EVENT_ACK(i64) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @an_reset(%struct.an_softc*) #1

declare dso_local i64 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i64 @an_read_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
