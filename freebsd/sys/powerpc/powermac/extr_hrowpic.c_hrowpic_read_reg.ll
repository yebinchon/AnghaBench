; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrowpic_softc = type { i32, i32 }

@HPIC_PRIMARY = common dso_local global i64 0, align 8
@HPIC_1ST_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrowpic_softc*, i64, i64)* @hrowpic_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrowpic_read_reg(%struct.hrowpic_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hrowpic_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hrowpic_softc* %0, %struct.hrowpic_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HPIC_PRIMARY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i64, i64* @HPIC_1ST_OFFSET, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @bus_space_read_4(i32 %17, i32 %20, i64 %21)
  ret i32 %22
}

declare dso_local i32 @bus_space_read_4(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
