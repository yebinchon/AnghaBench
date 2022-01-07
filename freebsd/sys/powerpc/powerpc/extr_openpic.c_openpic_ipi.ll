; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_ipi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i32 }

@root_pic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Cannot send IPIs from non-root OpenPIC\00", align 1
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openpic_ipi(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.openpic_softc*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @root_pic, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.openpic_softc* @device_get_softc(i64 %11)
  store %struct.openpic_softc* %12, %struct.openpic_softc** %5, align 8
  %13 = call i32 (...) @sched_pin()
  %14 = load %struct.openpic_softc*, %struct.openpic_softc** %5, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i32 @PCPU_GET(i32 %15)
  %17 = call i32 @OPENPIC_PCPU_IPI_DISPATCH(i32 %16, i32 0)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @openpic_write(%struct.openpic_softc* %14, i32 %17, i32 %19)
  %21 = call i32 (...) @sched_unpin()
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.openpic_softc* @device_get_softc(i64) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @openpic_write(%struct.openpic_softc*, i32, i32) #1

declare dso_local i32 @OPENPIC_PCPU_IPI_DISPATCH(i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
