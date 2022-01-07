; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_send_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32 }

@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_APE_LOCK_MEM = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS = common dso_local global i32 0, align 4
@BGE_APE_EVENT_STATUS_EVENT_PENDING = common dso_local global i32 0, align 4
@BGE_APE_EVENT = common dso_local global i32 0, align 4
@BGE_APE_EVENT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"APE event 0x%08x send timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_ape_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ape_send_event(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %63

14:                                               ; preds = %2
  store i32 10, i32* %6, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %20 = load i32, i32* @BGE_APE_LOCK_MEM, align 4
  %21 = call i64 @bge_ape_lock(%struct.bge_softc* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %26 = load i32, i32* @BGE_APE_EVENT_STATUS, align 4
  %27 = call i32 @APE_READ_4(%struct.bge_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BGE_APE_EVENT_STATUS_EVENT_PENDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %34 = load i32, i32* @BGE_APE_EVENT_STATUS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BGE_APE_EVENT_STATUS_EVENT_PENDING, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @APE_WRITE_4(%struct.bge_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %40 = load i32, i32* @BGE_APE_LOCK_MEM, align 4
  %41 = call i32 @bge_ape_unlock(%struct.bge_softc* %39, i32 %40)
  %42 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %43 = load i32, i32* @BGE_APE_EVENT, align 4
  %44 = load i32, i32* @BGE_APE_EVENT_1, align 4
  %45 = call i32 @APE_WRITE_4(%struct.bge_softc* %42, i32 %43, i32 %44)
  br label %54

46:                                               ; preds = %24
  %47 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %48 = load i32, i32* @BGE_APE_LOCK_MEM, align 4
  %49 = call i32 @bge_ape_unlock(%struct.bge_softc* %47, i32 %48)
  %50 = call i32 @DELAY(i32 100)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %15

54:                                               ; preds = %32, %23, %15
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %13, %57, %54
  ret void
}

declare dso_local i64 @bge_ape_lock(%struct.bge_softc*, i32) #1

declare dso_local i32 @APE_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @APE_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_ape_unlock(%struct.bge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
