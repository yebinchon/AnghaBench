; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_f54_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_f54_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.mn_softc = type { i32, i8*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }

@IFF_UP = common dso_local global i32 0, align 4
@M32_CHAN = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@sp = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*)* @f54_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f54_intr(%struct.mn_softc* %0) #0 {
  %2 = alloca %struct.mn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mn_softc* %0, %struct.mn_softc** %2, align 8
  %6 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %6, i32 0, i32 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 24
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %33, i32 0, i32 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, -65
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %1
  %47 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 24
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %70 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %69, i32 0, i32 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, -25444409
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, -40904
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, -7864321
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, -100663297
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %89 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %46
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %46
  br label %97

97:                                               ; preds = %96, %1
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %180

102:                                              ; preds = %97
  %103 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %104 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 15
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %109 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  %114 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %114, i32 0, i32 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 14
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %126 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %125, i32 0, i32 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 13
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %131 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 8
  %136 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %137 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 12
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %142 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 11
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %153 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  %158 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %159 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %158, i32 0, i32 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 10
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %164 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  %169 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %170 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %169, i32 0, i32 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %175 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %173
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 8
  br label %180

180:                                              ; preds = %102, %101
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
