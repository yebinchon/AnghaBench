; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_csr_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_csr_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rue_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rue_softc*, i32)* @rue_csr_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rue_csr_read_2(%struct.rue_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rue_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.rue_softc* %0, %struct.rue_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = bitcast [2 x i32]* %5 to i32**
  %9 = call i32 @rue_read_mem(%struct.rue_softc* %6, i32 %7, i32** %8, i32 2)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = call i32 @UGETW(i32* %10)
  ret i32 %11
}

declare dso_local i32 @rue_read_mem(%struct.rue_softc*, i32, i32**, i32) #1

declare dso_local i32 @UGETW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
