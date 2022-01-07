; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_wol_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_wol_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bnxt_wol_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_wol_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bnxt_softc* @iflib_get_softc(i32 %6)
  store %struct.bnxt_softc* %7, %struct.bnxt_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @iflib_get_ifp(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %11 = icmp ne %struct.bnxt_softc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %17 = call i32 @bnxt_wol_supported(%struct.bnxt_softc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOTSUP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @if_getcapabilities(i32 %23)
  %25 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %35 = call i64 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %33
  %41 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %28
  br label %60

44:                                               ; preds = %22
  %45 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %51 = call i64 @bnxt_hwrm_free_wol_fltr(%struct.bnxt_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %44
  br label %60

60:                                               ; preds = %59, %43
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %53, %37, %19, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @bnxt_wol_supported(%struct.bnxt_softc*) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i64 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt_softc*) #1

declare dso_local i64 @bnxt_hwrm_free_wol_fltr(%struct.bnxt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
