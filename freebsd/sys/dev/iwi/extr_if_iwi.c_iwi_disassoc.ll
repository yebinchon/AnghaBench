; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @iwi_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_disassoc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwi_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.iwi_softc*
  store %struct.iwi_softc* %7, %struct.iwi_softc** %5, align 8
  %8 = load i32, i32* @IWI_LOCK_DECL, align 4
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %10 = call i32 @IWI_LOCK(%struct.iwi_softc* %9)
  %11 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %12 = call i32 @iwi_disassociate(%struct.iwi_softc* %11, i32 0)
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %5, align 8
  %14 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %13)
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_disassociate(%struct.iwi_softc*, i32) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
