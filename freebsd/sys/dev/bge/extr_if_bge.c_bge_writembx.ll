; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_writembx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_writembx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32 }

@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BGE_LPMBX_IRQ0_HI = common dso_local global i64 0, align 8
@BGE_MBX_IRQ0_HI = common dso_local global i64 0, align 8
@BGE_FLAG_MBOX_REORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32, i32)* @bge_writembx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_writembx(%struct.bge_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64, i64* @BGE_LPMBX_IRQ0_HI, align 8
  %14 = load i64, i64* @BGE_MBX_IRQ0_HI, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.bge_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BGE_FLAG_MBOX_REORDER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CSR_READ_4(%struct.bge_softc* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
