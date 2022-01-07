; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_fill_accept_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_fill_accept_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@ECORE_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@ECORE_ACCEPT_MULTICAST = common dso_local global i32 0, align 4
@ECORE_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@ECORE_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@ECORE_ACCEPT_UNMATCHED = common dso_local global i32 0, align 4
@ECORE_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown rx_mode (0x%x)\0A\00", align 1
@ECORE_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i64*, i64*)* @bxe_fill_accept_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_fill_accept_flags(%struct.bxe_softc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %83 [
    i32 130, label %13
    i32 129, label %14
    i32 131, label %33
    i32 128, label %52
  ]

13:                                               ; preds = %4
  br label %87

14:                                               ; preds = %4
  %15 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = call i32 @bxe_set_bit(i32 %15, i64* %16)
  %18 = load i32, i32* @ECORE_ACCEPT_MULTICAST, align 4
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @bxe_set_bit(i32 %18, i64* %19)
  %21 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %22 = load i64*, i64** %8, align 8
  %23 = call i32 @bxe_set_bit(i32 %21, i64* %22)
  %24 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %25 = load i64*, i64** %9, align 8
  %26 = call i32 @bxe_set_bit(i32 %24, i64* %25)
  %27 = load i32, i32* @ECORE_ACCEPT_MULTICAST, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = call i32 @bxe_set_bit(i32 %27, i64* %28)
  %30 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @bxe_set_bit(i32 %30, i64* %31)
  br label %87

33:                                               ; preds = %4
  %34 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %35 = load i64*, i64** %8, align 8
  %36 = call i32 @bxe_set_bit(i32 %34, i64* %35)
  %37 = load i32, i32* @ECORE_ACCEPT_ALL_MULTICAST, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = call i32 @bxe_set_bit(i32 %37, i64* %38)
  %40 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @bxe_set_bit(i32 %40, i64* %41)
  %43 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @bxe_set_bit(i32 %43, i64* %44)
  %46 = load i32, i32* @ECORE_ACCEPT_ALL_MULTICAST, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = call i32 @bxe_set_bit(i32 %46, i64* %47)
  %49 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = call i32 @bxe_set_bit(i32 %49, i64* %50)
  br label %87

52:                                               ; preds = %4
  %53 = load i32, i32* @ECORE_ACCEPT_UNMATCHED, align 4
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @bxe_set_bit(i32 %53, i64* %54)
  %56 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @bxe_set_bit(i32 %56, i64* %57)
  %59 = load i32, i32* @ECORE_ACCEPT_ALL_MULTICAST, align 4
  %60 = load i64*, i64** %8, align 8
  %61 = call i32 @bxe_set_bit(i32 %59, i64* %60)
  %62 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %63 = load i64*, i64** %8, align 8
  %64 = call i32 @bxe_set_bit(i32 %62, i64* %63)
  %65 = load i32, i32* @ECORE_ACCEPT_ALL_MULTICAST, align 4
  %66 = load i64*, i64** %9, align 8
  %67 = call i32 @bxe_set_bit(i32 %65, i64* %66)
  %68 = load i32, i32* @ECORE_ACCEPT_BROADCAST, align 4
  %69 = load i64*, i64** %9, align 8
  %70 = call i32 @bxe_set_bit(i32 %68, i64* %69)
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %72 = call i32 @IS_MF_SI(%struct.bxe_softc* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i32, i32* @ECORE_ACCEPT_ALL_UNICAST, align 4
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @bxe_set_bit(i32 %75, i64* %76)
  br label %82

78:                                               ; preds = %52
  %79 = load i32, i32* @ECORE_ACCEPT_UNICAST, align 4
  %80 = load i64*, i64** %9, align 8
  %81 = call i32 @bxe_set_bit(i32 %79, i64* %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %87

83:                                               ; preds = %4
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @BLOGE(%struct.bxe_softc* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %5, align 4
  br label %98

87:                                               ; preds = %82, %33, %14, %13
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 130
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @ECORE_ACCEPT_ANY_VLAN, align 4
  %92 = load i64*, i64** %8, align 8
  %93 = call i32 @bxe_set_bit(i32 %91, i64* %92)
  %94 = load i32, i32* @ECORE_ACCEPT_ANY_VLAN, align 4
  %95 = load i64*, i64** %9, align 8
  %96 = call i32 @bxe_set_bit(i32 %94, i64* %95)
  br label %97

97:                                               ; preds = %90, %87
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @bxe_set_bit(i32, i64*) #1

declare dso_local i32 @IS_MF_SI(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
