; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmdmpart = type { %struct.TYPE_2__*, i32, i32, %struct.nmdmsoftc* }
%struct.TYPE_2__ = type { i32* }
%struct.nmdmsoftc = type { i32 }

@taskqueue_swi = common dso_local global i32 0, align 4
@M_NMDM = common dso_local global i32 0, align 4
@nmdm_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nmdm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmdm_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nmdmpart*, align 8
  %4 = alloca %struct.nmdmsoftc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nmdmpart*
  store %struct.nmdmpart* %6, %struct.nmdmpart** %3, align 8
  %7 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %8 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %7, i32 0, i32 3
  %9 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %8, align 8
  store %struct.nmdmsoftc* %9, %struct.nmdmsoftc** %4, align 8
  %10 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %11 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %10, i32 0, i32 2
  %12 = call i32 @callout_drain(i32* %11)
  %13 = load i32, i32* @taskqueue_swi, align 4
  %14 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %15 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %14, i32 0, i32 1
  %16 = call i32 @taskqueue_drain(i32 %13, i32* %15)
  %17 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %4, align 8
  %18 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %21 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %26 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %4, align 8
  %30 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %4, align 8
  %34 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %33, i32 0, i32 0
  %35 = call i32 @mtx_destroy(i32* %34)
  %36 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %4, align 8
  %37 = load i32, i32* @M_NMDM, align 4
  %38 = call i32 @free(%struct.nmdmsoftc* %36, i32 %37)
  %39 = call i32 @atomic_subtract_int(i32* @nmdm_count, i32 1)
  br label %40

40:                                               ; preds = %32, %24
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.nmdmsoftc*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
