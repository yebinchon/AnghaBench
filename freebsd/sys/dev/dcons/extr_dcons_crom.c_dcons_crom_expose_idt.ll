; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_expose_idt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_expose_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_crom_softc = type { i32 }

@dcons_crom_expose_idt.idt_paddr = internal global i32 0, align 4
@idt = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@DCONS_CSR_KEY_RESET_HI = common dso_local global i32 0, align 4
@DCONS_CSR_KEY_RESET_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcons_crom_softc*)* @dcons_crom_expose_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_crom_expose_idt(%struct.dcons_crom_softc* %0) #0 {
  %2 = alloca %struct.dcons_crom_softc*, align 8
  store %struct.dcons_crom_softc* %0, %struct.dcons_crom_softc** %2, align 8
  %3 = load i64, i64* @idt, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load i64, i64* @KERNBASE, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = ptrtoint i8* %4 to i64
  %8 = ptrtoint i8* %6 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @dcons_crom_expose_idt.idt_paddr, align 4
  %11 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @DCONS_CSR_KEY_RESET_HI, align 4
  %14 = load i32, i32* @dcons_crom_expose_idt.idt_paddr, align 4
  %15 = call i32 @ADDR_HI(i32 %14)
  %16 = call i32 @crom_add_entry(i32* %12, i32 %13, i32 %15)
  %17 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %2, align 8
  %18 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %17, i32 0, i32 0
  %19 = load i32, i32* @DCONS_CSR_KEY_RESET_LO, align 4
  %20 = load i32, i32* @dcons_crom_expose_idt.idt_paddr, align 4
  %21 = call i32 @ADDR_LO(i32 %20)
  %22 = call i32 @crom_add_entry(i32* %18, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @crom_add_entry(i32*, i32, i32) #1

declare dso_local i32 @ADDR_HI(i32) #1

declare dso_local i32 @ADDR_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
