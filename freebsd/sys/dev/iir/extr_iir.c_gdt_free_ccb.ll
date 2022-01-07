; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_free_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_free_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gdt_softc = type { i32, i32, i32, i32 }
%struct.gdt_ccb = type { i32 }

@GDT_D_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gdt_free_ccb(%p, %p)\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@GDT_GCF_UNUSED = common dso_local global i32 0, align 4
@gdt_ccb = common dso_local global i32 0, align 4
@sle = common dso_local global i32 0, align 4
@gdt_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GDT_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_free_ccb(%struct.gdt_softc* %0, %struct.gdt_ccb* %1) #0 {
  %3 = alloca %struct.gdt_softc*, align 8
  %4 = alloca %struct.gdt_ccb*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %3, align 8
  store %struct.gdt_ccb* %1, %struct.gdt_ccb** %4, align 8
  %5 = load i32, i32* @GDT_D_QUEUE, align 4
  %6 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %7 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %8 = bitcast %struct.gdt_ccb* %7 to i8*
  %9 = call i32 @GDT_DPRINTF(i32 %5, i8* %8)
  %10 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %10, i32 0, i32 3
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load i32, i32* @GDT_GCF_UNUSED, align 4
  %15 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %16 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %17, i32 0, i32 2
  %19 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %20 = load i32, i32* @gdt_ccb, align 4
  %21 = load i32, i32* @sle, align 4
  %22 = call i32 @SLIST_REMOVE(i32* %18, %struct.gdt_ccb* %19, i32 %20, i32 %21)
  %23 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %23, i32 0, i32 1
  %25 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %26 = load i32, i32* @sle, align 4
  %27 = call i32 @SLIST_INSERT_HEAD(i32* %24, %struct.gdt_ccb* %25, i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 4
  %30 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GDT_SHUTDOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %38 = call i32 @wakeup(%struct.gdt_ccb* %37)
  br label %39

39:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.gdt_ccb*, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.gdt_ccb*, i32) #1

declare dso_local i32 @wakeup(%struct.gdt_ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
