; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bnxt_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_attach_post(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bnxt_softc* @iflib_get_softc(i32 %6)
  store %struct.bnxt_softc* %7, %struct.bnxt_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.TYPE_5__* @iflib_get_ifp(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %11 = call i32 @bnxt_create_config_sysctls_post(%struct.bnxt_softc* %10)
  %12 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %13 = call i32 @bnxt_probe_phy(%struct.bnxt_softc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %19 = call i32 @bnxt_create_ver_sysctls(%struct.bnxt_softc* %18)
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %21 = call i32 @bnxt_add_media_types(%struct.bnxt_softc* %20)
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFM_ETHER, align 4
  %26 = load i32, i32* @IFM_AUTO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ifmedia_set(i32 %24, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETHER_HDR_LEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @ETHER_CRC_LEN, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %17, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_5__* @iflib_get_ifp(i32) #1

declare dso_local i32 @bnxt_create_config_sysctls_post(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_probe_phy(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_create_ver_sysctls(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_add_media_types(%struct.bnxt_softc*) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
