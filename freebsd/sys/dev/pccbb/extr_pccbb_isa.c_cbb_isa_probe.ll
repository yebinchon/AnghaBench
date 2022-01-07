; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32* }

@pcic_ids = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cbb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cbb_softc* @device_get_softc(i32 %6)
  store %struct.cbb_softc* %7, %struct.cbb_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @pcic_ids, align 4
  %12 = call i32 @ISA_PNP_PROBE(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @cbb_isa_activate(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %31 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %35 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cbb_softc*, %struct.cbb_softc** %5, align 8
  %38 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @exca_probe_slots(i32 %29, i32* %33, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cbb_isa_deactivate(i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %28, %26, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cbb_isa_activate(i32) #1

declare dso_local i32 @exca_probe_slots(i32, i32*, i32, i32) #1

declare dso_local i32 @cbb_isa_deactivate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
