; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_get_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_get_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.amr_mailbox = type { i32, i32, i32* }

@AMR_QODB_READY = common dso_local global i32 0, align 4
@AMR_QIDB_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*, %struct.amr_mailbox*)* @amr_quartz_get_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_quartz_get_work(%struct.amr_softc* %0, %struct.amr_mailbox* %1) #0 {
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca %struct.amr_mailbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [46 x i32], align 16
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  store %struct.amr_mailbox* %1, %struct.amr_mailbox** %4, align 8
  %10 = call i32 @debug_called(i32 3)
  store i32 0, i32* %5, align 4
  %11 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %12 = call i32 @AMR_QGET_ODB(%struct.amr_softc* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @AMR_QODB_READY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %103

15:                                               ; preds = %2
  %16 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %17 = load i32, i32* @AMR_QODB_READY, align 4
  %18 = call i32 @AMR_QPUT_ODB(%struct.amr_softc* %16, i32 %17)
  br label %19

19:                                               ; preds = %26, %15
  %20 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @DELAY(i32 1)
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 255, i32* %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %63, %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %52, %37
  %39 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [46 x i32], [46 x i32]* %9, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = icmp eq i32 %47, 255
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @DELAY(i32 1)
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %56 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 255, i32* %62, align 4
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.amr_mailbox*, %struct.amr_mailbox** %4, align 8
  %69 = getelementptr inbounds %struct.amr_mailbox, %struct.amr_mailbox* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %71 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.amr_mailbox*, %struct.amr_mailbox** %4, align 8
  %76 = getelementptr inbounds %struct.amr_mailbox, %struct.amr_mailbox* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %78 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 255, i32* %80, align 8
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %96, %66
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [46 x i32], [46 x i32]* %9, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.amr_mailbox*, %struct.amr_mailbox** %4, align 8
  %91 = getelementptr inbounds %struct.amr_mailbox, %struct.amr_mailbox* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %101 = load i32, i32* @AMR_QIDB_ACK, align 4
  %102 = call i32 @AMR_QPUT_IDB(%struct.amr_softc* %100, i32 %101)
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %2
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @AMR_QGET_ODB(%struct.amr_softc*) #1

declare dso_local i32 @AMR_QPUT_ODB(%struct.amr_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMR_QPUT_IDB(%struct.amr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
