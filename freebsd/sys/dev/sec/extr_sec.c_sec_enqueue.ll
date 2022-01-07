; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@descriptors = common dso_local global i32 0, align 4
@controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_softc*)* @sec_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_enqueue(%struct.sec_softc* %0) #0 {
  %2 = alloca %struct.sec_softc*, align 8
  %3 = alloca %struct.sec_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %2, align 8
  %6 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %7 = load i32, i32* @descriptors, align 4
  %8 = call i32 @SEC_LOCK(%struct.sec_softc* %6, i32 %7)
  %9 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %10 = load i32, i32* @controller, align 4
  %11 = call i32 @SEC_LOCK(%struct.sec_softc* %9, i32 %10)
  br label %12

12:                                               ; preds = %89, %74, %45, %1
  %13 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %14 = call i64 @SEC_READY_DESC_CNT(%struct.sec_softc* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %96

16:                                               ; preds = %12
  %17 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %18 = call %struct.sec_desc* @SEC_GET_READY_DESC(%struct.sec_softc* %17)
  store %struct.sec_desc* %18, %struct.sec_desc** %3, align 8
  %19 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %20 = load %struct.sec_desc*, %struct.sec_desc** %3, align 8
  %21 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sec_eu_channel(%struct.sec_softc* %19, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %27 = load %struct.sec_desc*, %struct.sec_desc** %3, align 8
  %28 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sec_eu_channel(%struct.sec_softc* %26, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %16
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %41 = load %struct.sec_desc*, %struct.sec_desc** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @sec_enqueue_desc(%struct.sec_softc* %40, %struct.sec_desc* %41, i32 %42)
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %47 = call i32 @SEC_DESC_READY2QUEUED(%struct.sec_softc* %46)
  br label %12

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %35, %16
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58, %52
  %62 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %63 = load %struct.sec_desc*, %struct.sec_desc** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i64 @sec_enqueue_desc(%struct.sec_softc* %62, %struct.sec_desc* %63, i32 %71)
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %76 = call i32 @SEC_DESC_READY2QUEUED(%struct.sec_softc* %75)
  br label %12

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %58, %55
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %86 = load %struct.sec_desc*, %struct.sec_desc** %3, align 8
  %87 = call i64 @sec_enqueue_desc(%struct.sec_softc* %85, %struct.sec_desc* %86, i32 -1)
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %91 = call i32 @SEC_DESC_READY2QUEUED(%struct.sec_softc* %90)
  br label %12

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %81, %78
  %94 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %95 = call i32 @SEC_PUT_BACK_READY_DESC(%struct.sec_softc* %94)
  br label %96

96:                                               ; preds = %93, %12
  %97 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %98 = load i32, i32* @controller, align 4
  %99 = call i32 @SEC_UNLOCK(%struct.sec_softc* %97, i32 %98)
  %100 = load %struct.sec_softc*, %struct.sec_softc** %2, align 8
  %101 = load i32, i32* @descriptors, align 4
  %102 = call i32 @SEC_UNLOCK(%struct.sec_softc* %100, i32 %101)
  ret void
}

declare dso_local i32 @SEC_LOCK(%struct.sec_softc*, i32) #1

declare dso_local i64 @SEC_READY_DESC_CNT(%struct.sec_softc*) #1

declare dso_local %struct.sec_desc* @SEC_GET_READY_DESC(%struct.sec_softc*) #1

declare dso_local i32 @sec_eu_channel(%struct.sec_softc*, i32) #1

declare dso_local i64 @sec_enqueue_desc(%struct.sec_softc*, %struct.sec_desc*, i32) #1

declare dso_local i32 @SEC_DESC_READY2QUEUED(%struct.sec_softc*) #1

declare dso_local i32 @SEC_PUT_BACK_READY_DESC(%struct.sec_softc*) #1

declare dso_local i32 @SEC_UNLOCK(%struct.sec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
