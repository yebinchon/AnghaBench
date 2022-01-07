; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_proc_versapad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_proc_versapad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@proc_versapad.butmap_versapad = internal global [8 x i32] [i32 0, i32 128, i32 0, i32 128, i32 129, i32 129, i32 129, i32 129], align 16
@MOUSE_PS2VERSA_BUTTONS = common dso_local global i32 0, align 4
@MOUSE_PS2VERSA_TAP = common dso_local global i32 0, align 4
@MOUSE_BUTTON4DOWN = common dso_local global i32 0, align 4
@MOUSE_PS2VERSA_IN_USE = common dso_local global i32 0, align 4
@PSM_FLAGS_FINGERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32*, i32*)* @proc_versapad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_versapad(%struct.psm_softc* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.psm_softc*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @MOUSE_PS2VERSA_BUTTONS, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* @proc_versapad.butmap_versapad, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @MOUSE_PS2VERSA_TAP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @MOUSE_BUTTON4DOWN, align 4
  br label %38

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MOUSE_PS2VERSA_IN_USE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %155

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 8
  %61 = or i32 %53, %60
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 240
  %73 = shl i32 %72, 4
  %74 = or i32 %66, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %75, 2048
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %48
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 4096
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %48
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, 2048
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, 4096
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %90 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PSM_FLAGS_FINGERDOWN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %142

95:                                               ; preds = %88
  %96 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %97 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %104 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %124

115:                                              ; preds = %95
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %111
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %141

132:                                              ; preds = %124
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %136, %132
  br label %141

141:                                              ; preds = %140, %128
  br label %148

142:                                              ; preds = %88
  %143 = load i32, i32* @PSM_FLAGS_FINGERDOWN, align 4
  %144 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %145 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %141
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %151 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %154 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %162

155:                                              ; preds = %38
  %156 = load i32, i32* @PSM_FLAGS_FINGERDOWN, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.psm_softc*, %struct.psm_softc** %7, align 8
  %159 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %148
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
