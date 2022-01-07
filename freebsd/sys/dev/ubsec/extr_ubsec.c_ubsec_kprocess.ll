; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptkop = type { i32, i32, i32* }
%struct.ubsec_softc = type { i32, i32, i32 }
%struct.ubsec_q2 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@UBS_FLAGS_HWNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"kprocess: invalid op 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptkop*, i32)* @ubsec_kprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_kprocess(i32 %0, %struct.cryptkop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptkop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubsec_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubsec_q2*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cryptkop* %1, %struct.cryptkop** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ubsec_softc* @device_get_softc(i32 %11)
  store %struct.ubsec_softc* %12, %struct.ubsec_softc** %8, align 8
  %13 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %14 = icmp eq %struct.cryptkop* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %17 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %29, %22
  %24 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %25 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %24, i32 0, i32 2
  %26 = call i32 @SIMPLEQ_EMPTY(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %31 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %30, i32 0, i32 2
  %32 = call %struct.ubsec_q2* @SIMPLEQ_FIRST(i32* %31)
  store %struct.ubsec_q2* %32, %struct.ubsec_q2** %10, align 8
  %33 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %34 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %33, i32 0, i32 2
  %35 = load i32, i32* @q_next, align 4
  %36 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %34, i32 %35)
  %37 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %38 = load %struct.ubsec_q2*, %struct.ubsec_q2** %10, align 8
  %39 = call i32 @ubsec_kfree(%struct.ubsec_softc* %37, %struct.ubsec_q2* %38)
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %42 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %67 [
    i32 129, label %44
    i32 128, label %62
  ]

44:                                               ; preds = %40
  %45 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %46 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UBS_FLAGS_HWNORM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %53 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ubsec_kprocess_modexp_hw(%struct.ubsec_softc* %52, %struct.cryptkop* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %58 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ubsec_kprocess_modexp_sw(%struct.ubsec_softc* %57, %struct.cryptkop* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %80

62:                                               ; preds = %40
  %63 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %64 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ubsec_kprocess_rsapriv(%struct.ubsec_softc* %63, %struct.cryptkop* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %81

67:                                               ; preds = %40
  %68 = load %struct.ubsec_softc*, %struct.ubsec_softc** %8, align 8
  %69 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %72 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %77 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %79 = call i32 @crypto_kdone(%struct.cryptkop* %78)
  store i32 0, i32* %4, align 4
  br label %81

80:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %67, %62, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.ubsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @SIMPLEQ_EMPTY(i32*) #1

declare dso_local %struct.ubsec_q2* @SIMPLEQ_FIRST(i32*) #1

declare dso_local i32 @SIMPLEQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ubsec_kfree(%struct.ubsec_softc*, %struct.ubsec_q2*) #1

declare dso_local i32 @ubsec_kprocess_modexp_hw(%struct.ubsec_softc*, %struct.cryptkop*, i32) #1

declare dso_local i32 @ubsec_kprocess_modexp_sw(%struct.ubsec_softc*, %struct.cryptkop*, i32) #1

declare dso_local i32 @ubsec_kprocess_rsapriv(%struct.ubsec_softc*, %struct.cryptkop*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @crypto_kdone(%struct.cryptkop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
