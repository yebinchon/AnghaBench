; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_cmng_fns_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_cmng_fns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.cmng_init_input = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@CMNG_FNS_MINMAX = common dso_local global i64 0, align 8
@VN_0 = common dso_local global i32 0, align 4
@CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"rate shaping and fairness have been disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i64, i64)* @bxe_cmng_fns_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_cmng_fns_init(%struct.bxe_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmng_init_input, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 @memset(%struct.cmng_init_input* %7, i32 0, i32 8)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CMNG_FNS_MINMAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = call i32 @bxe_read_mf_cfg(%struct.bxe_softc* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = call i32 @bxe_calc_vn_min(%struct.bxe_softc* %25, %struct.cmng_init_input* %7)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load i32, i32* @VN_0, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %43, %32
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %37 = call i32 @SC_MAX_VN_NUM(%struct.bxe_softc* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bxe_calc_vn_max(%struct.bxe_softc* %40, i32 %41, %struct.cmng_init_input* %7)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %34

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* @CMNG_FLAGS_PER_PORT_RATE_SHAPING_VN, align 4
  %49 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 0
  %55 = call i32 @ecore_init_cmng(%struct.cmng_init_input* %7, i32* %54)
  br label %60

56:                                               ; preds = %3
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %58 = load i32, i32* @DBG_LOAD, align 4
  %59 = call i32 @BLOGD(%struct.bxe_softc* %57, i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @memset(%struct.cmng_init_input*, i32, i32) #1

declare dso_local i32 @bxe_read_mf_cfg(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_calc_vn_min(%struct.bxe_softc*, %struct.cmng_init_input*) #1

declare dso_local i32 @SC_MAX_VN_NUM(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_calc_vn_max(%struct.bxe_softc*, i32, %struct.cmng_init_input*) #1

declare dso_local i32 @ecore_init_cmng(%struct.cmng_init_input*, i32*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
