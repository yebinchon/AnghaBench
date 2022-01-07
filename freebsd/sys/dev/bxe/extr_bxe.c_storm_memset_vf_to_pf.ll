; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_storm_memset_vf_to_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_storm_memset_vf_to_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @storm_memset_vf_to_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storm_memset_vf_to_pf(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @XSTORM_VF_TO_PF_OFFSET(i32 %9)
  %11 = add nsw i64 %8, %10
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @REG_WR8(%struct.bxe_softc* %7, i64 %11, i32 %12)
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @CSTORM_VF_TO_PF_OFFSET(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @REG_WR8(%struct.bxe_softc* %14, i64 %18, i32 %19)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %22 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TSTORM_VF_TO_PF_OFFSET(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @REG_WR8(%struct.bxe_softc* %21, i64 %25, i32 %26)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %29 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @USTORM_VF_TO_PF_OFFSET(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @REG_WR8(%struct.bxe_softc* %28, i64 %32, i32 %33)
  ret void
}

declare dso_local i32 @REG_WR8(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @XSTORM_VF_TO_PF_OFFSET(i32) #1

declare dso_local i64 @CSTORM_VF_TO_PF_OFFSET(i32) #1

declare dso_local i64 @TSTORM_VF_TO_PF_OFFSET(i32) #1

declare dso_local i64 @USTORM_VF_TO_PF_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
