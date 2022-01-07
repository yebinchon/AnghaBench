; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_ring_inuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_ring_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid ring count %d\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%d TX ring, %d RX ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_set_ring_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_set_ring_inuse(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %8, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %15, i8* %18)
  %20 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %13
  %30 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %38 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @bootverbose, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %46 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %49 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @if_printf(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
