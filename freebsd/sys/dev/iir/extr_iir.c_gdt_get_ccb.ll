; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_get_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_get_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.gdt_ccb = type { i32 }
%struct.gdt_softc = type { i32, i32, i32 }

@GDT_D_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"gdt_get_ccb(%p)\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@sle = common dso_local global i32 0, align 4
@gdt_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdt_ccb* (%struct.gdt_softc*)* @gdt_get_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdt_ccb* @gdt_get_ccb(%struct.gdt_softc* %0) #0 {
  %2 = alloca %struct.gdt_softc*, align 8
  %3 = alloca %struct.gdt_ccb*, align 8
  store %struct.gdt_softc* %0, %struct.gdt_softc** %2, align 8
  %4 = load i32, i32* @GDT_D_QUEUE, align 4
  %5 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %6 = bitcast %struct.gdt_softc* %5 to i8*
  %7 = call i32 @GDT_DPRINTF(i32 %4, i8* %6)
  %8 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %8, i32 0, i32 2
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %13 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %12, i32 0, i32 1
  %14 = call %struct.gdt_ccb* @SLIST_FIRST(i32* %13)
  store %struct.gdt_ccb* %14, %struct.gdt_ccb** %3, align 8
  %15 = load %struct.gdt_ccb*, %struct.gdt_ccb** %3, align 8
  %16 = icmp ne %struct.gdt_ccb* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %19 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @sle, align 4
  %21 = call i32 @SLIST_REMOVE_HEAD(i32* %19, i32 %20)
  %22 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %22, i32 0, i32 0
  %24 = load %struct.gdt_ccb*, %struct.gdt_ccb** %3, align 8
  %25 = load i32, i32* @sle, align 4
  %26 = call i32 @SLIST_INSERT_HEAD(i32* %23, %struct.gdt_ccb* %24, i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 1), align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 0), align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdt_stat, i32 0, i32 1), align 8
  br label %34

34:                                               ; preds = %32, %17
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.gdt_ccb*, %struct.gdt_ccb** %3, align 8
  ret %struct.gdt_ccb* %36
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.gdt_ccb* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.gdt_ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
