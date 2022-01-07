; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_ilt_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_ilt_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.ecore_ilt* }
%struct.ecore_ilt = type { i32 }

@M_BXE_ILT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_alloc_ilt_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_ilt_mem(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @M_BXE_ILT, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call i64 @malloc(i32 4, i32 %4, i32 %7)
  %9 = inttoptr i64 %8 to %struct.ecore_ilt*
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 0
  store %struct.ecore_ilt* %9, %struct.ecore_ilt** %11, align 8
  %12 = icmp eq %struct.ecore_ilt* %9, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i64 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
