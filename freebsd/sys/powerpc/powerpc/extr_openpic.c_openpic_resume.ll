; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i32*, i32, %struct.TYPE_2__*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OPENPIC_CONFIG = common dso_local global i32 0, align 4
@OPENPIC_NIPIS = common dso_local global i32 0, align 4
@OPENPIC_TIMERS = common dso_local global i32 0, align 4
@OPENPIC_SRC_VECTOR_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpic_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.openpic_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.openpic_softc* @device_get_softc(i32 %5)
  store %struct.openpic_softc* %6, %struct.openpic_softc** %3, align 8
  %7 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %8 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OPENPIC_CONFIG, align 4
  %11 = call i32 @bus_read_4(i32 %9, i32 %10)
  %12 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %13 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OPENPIC_NIPIS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %20 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @OPENPIC_IPI_VECTOR(i32 %22)
  %24 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %25 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_write_4(i32 %21, i32 %23, i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %41 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @OPENPIC_PCPU_TPR(i32 %43)
  %45 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %46 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bus_write_4(i32 %42, i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %36

56:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %118, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @OPENPIC_TIMERS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %121

61:                                               ; preds = %57
  %62 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %63 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @OPENPIC_TCNT(i32 %65)
  %67 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %68 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_write_4(i32 %64, i32 %66, i32 %74)
  %76 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %77 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @OPENPIC_TBASE(i32 %79)
  %81 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %82 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bus_write_4(i32 %78, i32 %80, i32 %88)
  %90 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %91 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @OPENPIC_TVEC(i32 %93)
  %95 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %96 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bus_write_4(i32 %92, i32 %94, i32 %102)
  %104 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %105 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @OPENPIC_TDST(i32 %107)
  %109 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %110 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bus_write_4(i32 %106, i32 %108, i32 %116)
  br label %118

118:                                              ; preds = %61
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %57

121:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %140, %121
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @OPENPIC_SRC_VECTOR_COUNT, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %128 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @OPENPIC_SRC_VECTOR(i32 %130)
  %132 = load %struct.openpic_softc*, %struct.openpic_softc** %3, align 8
  %133 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @bus_write_4(i32 %129, i32 %131, i32 %138)
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %122

143:                                              ; preds = %122
  ret i32 0
}

declare dso_local %struct.openpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @OPENPIC_IPI_VECTOR(i32) #1

declare dso_local i32 @OPENPIC_PCPU_TPR(i32) #1

declare dso_local i32 @OPENPIC_TCNT(i32) #1

declare dso_local i32 @OPENPIC_TBASE(i32) #1

declare dso_local i32 @OPENPIC_TVEC(i32) #1

declare dso_local i32 @OPENPIC_TDST(i32) #1

declare dso_local i32 @OPENPIC_SRC_VECTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
