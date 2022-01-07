; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_set_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i64 }

@root_pic = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@OPENPIC_TPR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic_softc*, i32)* @openpic_set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_set_priority(%struct.openpic_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.openpic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.openpic_softc* %0, %struct.openpic_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @sched_pin()
  %8 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %9 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @root_pic, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @cpuid, align 4
  %15 = call i32 @PCPU_GET(i32 %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  %19 = call i32 @OPENPIC_PCPU_TPR(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @openpic_read(%struct.openpic_softc* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @OPENPIC_TPR_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @openpic_write(%struct.openpic_softc* %30, i32 %31, i32 %32)
  %34 = call i32 (...) @sched_unpin()
  ret void
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @OPENPIC_PCPU_TPR(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @openpic_read(%struct.openpic_softc*, i32) #1

declare dso_local i32 @openpic_write(%struct.openpic_softc*, i32, i32) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
