; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpssas_record_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpssas_record_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32*, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@MPI2_EVENT_LOG_ENTRY_ADDED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MPS_MAX_EVENT_DATA_LENGTH = common dso_local global i32 0, align 4
@MPS_EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpssas_record_event(%struct.mps_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MPI2_EVENT_LOG_ENTRY_ADDED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 32
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %131

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %34, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %131

44:                                               ; preds = %32
  %45 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 %59, i64* %66, align 8
  %67 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @MPS_MAX_EVENT_DATA_LENGTH, align 4
  %76 = mul nsw i32 %75, 4
  %77 = call i32 @bzero(i32* %74, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %44
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MPS_MAX_EVENT_DATA_LENGTH, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @MPS_MAX_EVENT_DATA_LENGTH, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %83
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %113, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %101, i32* %112, align 4
  br label %113

113:                                              ; preds = %94
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %90

116:                                              ; preds = %90
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @MPS_EVENT_QUEUE_SIZE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %116
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %128 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %122, %44
  br label %131

131:                                              ; preds = %130, %32, %19
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %131
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
