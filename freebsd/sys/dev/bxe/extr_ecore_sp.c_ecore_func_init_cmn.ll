; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_init_cmn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_init_cmn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_sp_drv_ops = type { i32 (%struct.bxe_softc.0*)* }
%struct.bxe_softc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_sp_drv_ops*)* @ecore_func_init_cmn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_init_cmn(%struct.bxe_softc* %0, %struct.ecore_func_sp_drv_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_func_sp_drv_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_func_sp_drv_ops* %1, %struct.ecore_func_sp_drv_ops** %5, align 8
  %7 = load %struct.ecore_func_sp_drv_ops*, %struct.ecore_func_sp_drv_ops** %5, align 8
  %8 = getelementptr inbounds %struct.ecore_func_sp_drv_ops, %struct.ecore_func_sp_drv_ops* %7, i32 0, i32 0
  %9 = load i32 (%struct.bxe_softc.0*)*, i32 (%struct.bxe_softc.0*)** %8, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %11 = bitcast %struct.bxe_softc* %10 to %struct.bxe_softc.0*
  %12 = call i32 %9(%struct.bxe_softc.0* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load %struct.ecore_func_sp_drv_ops*, %struct.ecore_func_sp_drv_ops** %5, align 8
  %20 = call i32 @ecore_func_init_port(%struct.bxe_softc* %18, %struct.ecore_func_sp_drv_ops* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ecore_func_init_port(%struct.bxe_softc*, %struct.ecore_func_sp_drv_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
