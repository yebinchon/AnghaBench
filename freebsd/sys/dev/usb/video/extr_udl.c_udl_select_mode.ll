; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_select_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.udl_mode = type { i32, i32, i32, i32 }

@UDL_MAX_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no preferred mode found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no mode line found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udl_softc*)* @udl_select_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_select_mode(%struct.udl_softc* %0) #0 {
  %2 = alloca %struct.udl_softc*, align 8
  %3 = alloca %struct.udl_mode, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.udl_softc* %0, %struct.udl_softc** %2, align 8
  %6 = load i32, i32* @UDL_MAX_MODES, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %10, i32 0, i32 2
  %12 = call i32 @edid_parse(i32 %9, %struct.TYPE_7__* %11)
  %13 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %14 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %1
  %19 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %20 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %27 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %31, %37
  %39 = sdiv i32 %25, %38
  %40 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %42 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 10
  %48 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %50 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %57 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %70 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @udl_lookup_mode(i32 %64, i32 %66, i32 %68, i32 %71, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %78 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %81

79:                                               ; preds = %1
  %80 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %18
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @UDL_MAX_MODES, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %194

85:                                               ; preds = %81
  %86 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %190, %85
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %90 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %193

94:                                               ; preds = %87
  %95 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %96 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 1000
  %105 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %106 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %115 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %113, %122
  %124 = sdiv i32 %104, %123
  %125 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %127 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 10
  %136 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %138 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 2
  store i32 %145, i32* %146, align 4
  %147 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %148 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %164 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.udl_mode, %struct.udl_mode* %3, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @udl_lookup_mode(i32 %158, i32 %160, i32 %162, i32 %165, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @UDL_MAX_MODES, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %94
  %174 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %175 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @UDL_MAX_MODES, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %182 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179, %173
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %188 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %185, %179
  br label %190

190:                                              ; preds = %189, %94
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %87

193:                                              ; preds = %87
  br label %194

194:                                              ; preds = %193, %81
  %195 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %196 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @UDL_MAX_MODES, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %202 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @udl_lookup_mode(i32 800, i32 600, i32 60, i32 %203, i32 0)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.udl_softc*, %struct.udl_softc** %2, align 8
  %207 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %200, %194
  ret void
}

declare dso_local i32 @edid_parse(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @udl_lookup_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
