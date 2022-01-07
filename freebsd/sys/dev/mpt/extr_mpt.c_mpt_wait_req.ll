; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_wait_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_wait_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SBT_1MS = common dso_local global i32 0, align 4
@REQ_STATE_NEED_WAKEUP = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mptreq\00", align 1
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@REQ_STATE_TIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mpt_wait_req(%x) timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_wait_req(%struct.mpt_softc* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpt_softc*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* @SBT_1MS, align 4
  %22 = load i32, i32* %13, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %14, align 4
  br label %28

25:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @REQ_STATE_NEED_WAKEUP, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @REQ_STATE_NEED_WAKEUP, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %82, %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %51 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ false, %41 ], [ %54, %49 ]
  br i1 %56, label %57, label %83

57:                                               ; preds = %55
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = load i32, i32* @PUSER, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @mpt_sleep(%struct.mpt_softc* %61, %struct.TYPE_5__* %62, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @EWOULDBLOCK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %83

69:                                               ; preds = %60
  br label %82

70:                                               ; preds = %57
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %14, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %83

78:                                               ; preds = %73, %70
  %79 = call i32 @DELAY(i32 500)
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %81 = call i32 @mpt_intr(%struct.mpt_softc* %80)
  br label %82

82:                                               ; preds = %78, %69
  br label %41

83:                                               ; preds = %77, %68, %55
  %84 = load i32, i32* @REQ_STATE_NEED_WAKEUP, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %91 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @EIO, align 4
  store i32 %96, i32* %7, align 4
  br label %119

97:                                               ; preds = %83
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %17, align 8
  %107 = load i32, i32* @REQ_STATE_TIMEDOUT, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.mpt_softc*, %struct.mpt_softc** %8, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mpt_prt(%struct.mpt_softc* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %117, i32* %7, align 4
  br label %119

118:                                              ; preds = %100, %97
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %103, %95
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i64 @mpt_sleep(%struct.mpt_softc*, %struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mpt_intr(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
