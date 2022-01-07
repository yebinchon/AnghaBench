; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32 }

@hyperv_ver_major = common dso_local global i32 0, align 4
@HN_CAP_UDPHASH = common dso_local global i32 0, align 4
@HN_NVS_VERSION_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hn_nvs_attach(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @hyperv_ver_major, align 4
  %8 = icmp sge i32 %7, 10
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @HN_CAP_UDPHASH, align 4
  %11 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %17 = call i32 @hn_nvs_init(%struct.hn_softc* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %15
  %23 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HN_NVS_VERSION_2, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hn_nvs_conf_ndis(%struct.hn_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %39 = call i32 @hn_nvs_init_ndis(%struct.hn_softc* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %37
  %45 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %46 = call i32 @hn_nvs_conn_rxbuf(%struct.hn_softc* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %61

51:                                               ; preds = %44
  %52 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %53 = call i32 @hn_nvs_conn_chim(%struct.hn_softc* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %58 = call i32 @hn_nvs_disconn_rxbuf(%struct.hn_softc* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56, %49, %42, %34, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @hn_nvs_init(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_conf_ndis(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_nvs_init_ndis(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_conn_rxbuf(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_conn_chim(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_disconn_rxbuf(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
