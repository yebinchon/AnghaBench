; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32*, i32, %struct.bxe_fastpath*, %struct.TYPE_2__*, i32 }
%struct.bxe_fastpath = type { i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Disabling interrupt vector %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_interrupt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_interrupt_detach(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %5
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %11
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %21
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = load i32, i32* @DBG_LOAD, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BLOGD(%struct.bxe_softc* %32, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bus_teardown_intr(i32 %38, i64 %46, i64 %54)
  br label %56

56:                                               ; preds = %31, %21, %11
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %5

60:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %137, %60
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %64 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %140

67:                                               ; preds = %61
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 4
  %70 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %70, i64 %72
  store %struct.bxe_fastpath* %73, %struct.bxe_fastpath** %3, align 8
  %74 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %75 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %67
  %79 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %80 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %83 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %82, i32 0, i32 3
  %84 = call i32 @taskqueue_drain(i32* %81, i32* %83)
  %85 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %86 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %88, i32 0, i32 2
  %90 = call i32 @taskqueue_drain(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %99, %78
  %92 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %93 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %96 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %95, i32 0, i32 1
  %97 = call i64 @taskqueue_cancel_timeout(i32* %94, i32* %96, i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %101 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %104 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %103, i32 0, i32 1
  %105 = call i32 @taskqueue_drain_timeout(i32* %102, i32* %104)
  br label %91

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %67
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %133, %107
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %111 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %116 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %115, i32 0, i32 4
  %117 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %117, i64 %119
  store %struct.bxe_fastpath* %120, %struct.bxe_fastpath** %3, align 8
  %121 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %122 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %114
  %126 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %127 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @taskqueue_free(i32* %128)
  %130 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %131 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %125, %114
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %108

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %61

140:                                              ; preds = %61
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %147 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %150 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %149, i32 0, i32 3
  %151 = call i32 @taskqueue_drain(i32* %148, i32* %150)
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %153 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @taskqueue_free(i32* %154)
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %157 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %156, i32 0, i32 2
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %145, %140
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i64 @taskqueue_cancel_timeout(i32*, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
