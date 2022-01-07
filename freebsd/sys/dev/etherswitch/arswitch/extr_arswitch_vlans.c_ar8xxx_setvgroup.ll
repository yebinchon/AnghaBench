; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.arswitch_softc.0*, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32, i32)*, i32 (%struct.arswitch_softc.2*, i32, i32)* }
%struct.arswitch_softc.0 = type opaque
%struct.arswitch_softc.1 = type opaque
%struct.arswitch_softc.2 = type opaque
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_setvgroup(%struct.arswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %9 = load i32, i32* @MA_NOTOWNED, align 4
  %10 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %8, i32 %9)
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %19 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %18)
  %20 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %21 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %29 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %63

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %49 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.arswitch_softc.0*, i32)*, i32 (%struct.arswitch_softc.0*, i32)** %50, align 8
  %52 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %53 = bitcast %struct.arswitch_softc* %52 to %struct.arswitch_softc.0*
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %51(%struct.arswitch_softc.0* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %60 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %148

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %37, %32, %17
  %64 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %65 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %112

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %75 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %73, i32* %80, align 4
  %81 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %82 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %92 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %91)
  store i32 0, i32* %3, align 4
  br label %148

93:                                               ; preds = %68
  %94 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %95 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %96 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %94
  store i32 %103, i32* %101, align 4
  %104 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %105 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %93, %63
  %113 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %114 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %143 [
    i32 129, label %116
    i32 128, label %131
  ]

116:                                              ; preds = %112
  %117 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %118 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32 (%struct.arswitch_softc.1*, i32, i32, i32)*, i32 (%struct.arswitch_softc.1*, i32, i32, i32)** %119, align 8
  %121 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %122 = bitcast %struct.arswitch_softc* %121 to %struct.arswitch_softc.1*
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 %120(%struct.arswitch_softc.1* %122, i32 %125, i32 %128, i32 %129)
  store i32 %130, i32* %6, align 4
  br label %144

131:                                              ; preds = %112
  %132 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %133 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32 (%struct.arswitch_softc.2*, i32, i32)*, i32 (%struct.arswitch_softc.2*, i32, i32)** %134, align 8
  %136 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %137 = bitcast %struct.arswitch_softc* %136 to %struct.arswitch_softc.2*
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 %135(%struct.arswitch_softc.2* %137, i32 %140, i32 %141)
  store i32 %142, i32* %6, align 4
  br label %144

143:                                              ; preds = %112
  store i32 -1, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %131, %116
  %145 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %146 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %90, %58, %15
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
