; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_init_op_cnic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_init_op_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@ILT_CLIENT_SRC = common dso_local global i32 0, align 4
@ILT_CLIENT_TM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @ecore_ilt_init_op_cnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ilt_init_op_cnic(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = call i64 @CONFIGURE_NIC_MODE(%struct.bxe_softc* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = load i32, i32* @ILT_CLIENT_SRC, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ecore_ilt_client_id_init_op(%struct.bxe_softc* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = load i32, i32* @ILT_CLIENT_TM, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ecore_ilt_client_id_init_op(%struct.bxe_softc* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i64 @CONFIGURE_NIC_MODE(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_ilt_client_id_init_op(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
