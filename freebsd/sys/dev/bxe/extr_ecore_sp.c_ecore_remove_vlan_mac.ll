; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_remove_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_remove_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.ecore_exeq_elem = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ECORE_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*)* @ecore_remove_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_remove_vlan_mac(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT, align 4
  %10 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %11 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i64 @ECORE_TEST_BIT(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %40 [
    i32 130, label %24
    i32 128, label %24
    i32 129, label %32
  ]

24:                                               ; preds = %18, %18
  %25 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %26 = bitcast %union.ecore_qable_obj* %25 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %27, align 8
  %29 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %30 = bitcast %union.ecore_qable_obj* %29 to %struct.TYPE_7__*
  %31 = call i32 %28(%struct.TYPE_7__* %30)
  store i32 %31, i32* %8, align 4
  br label %42

32:                                               ; preds = %18
  %33 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %34 = bitcast %union.ecore_qable_obj* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %35, align 8
  %37 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %38 = bitcast %union.ecore_qable_obj* %37 to %struct.TYPE_7__*
  %39 = call i32 %36(%struct.TYPE_7__* %38)
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %18
  %41 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %32, %24
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46, %40, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
