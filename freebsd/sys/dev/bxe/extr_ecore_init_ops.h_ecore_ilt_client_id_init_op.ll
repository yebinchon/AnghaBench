; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_client_id_init_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_client_id_init_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_ilt = type { %struct.ilt_client_info* }
%struct.ilt_client_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @ecore_ilt_client_id_init_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ilt_client_id_init_op(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ilt*, align 8
  %8 = alloca %struct.ilt_client_info*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = call %struct.ecore_ilt* @SC_ILT(%struct.bxe_softc* %9)
  store %struct.ecore_ilt* %10, %struct.ecore_ilt** %7, align 8
  %11 = load %struct.ecore_ilt*, %struct.ecore_ilt** %7, align 8
  %12 = getelementptr inbounds %struct.ecore_ilt, %struct.ecore_ilt* %11, i32 0, i32 0
  %13 = load %struct.ilt_client_info*, %struct.ilt_client_info** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %13, i64 %15
  store %struct.ilt_client_info* %16, %struct.ilt_client_info** %8, align 8
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %18 = load %struct.ilt_client_info*, %struct.ilt_client_info** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ecore_ilt_client_init_op(%struct.bxe_softc* %17, %struct.ilt_client_info* %18, i32 %19)
  ret void
}

declare dso_local %struct.ecore_ilt* @SC_ILT(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_ilt_client_init_op(%struct.bxe_softc*, %struct.ilt_client_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
