; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text_txtmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_text_txtmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i64*, i64*, i64*, %struct.vga_softc* }
%struct.vga_softc = type { i32 }
%struct.vt_window = type { %struct.vt_buf }
%struct.vt_buf = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VT_FB_MAX_WIDTH = common dso_local global i32 0, align 4
@cons_to_vga_colors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, %struct.vt_window*, %struct.TYPE_7__*)* @vga_bitblt_text_txtmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_text_txtmode(%struct.vt_device* %0, %struct.vt_window* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.vga_softc*, align 8
  %8 = alloca %struct.vt_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_window* %1, %struct.vt_window** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 3
  %19 = load %struct.vga_softc*, %struct.vga_softc** %18, align 8
  store %struct.vga_softc* %19, %struct.vga_softc** %7, align 8
  %20 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %21 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %20, i32 0, i32 0
  store %struct.vt_buf* %21, %struct.vt_buf** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %172, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %175

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %168, %33
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %171

45:                                               ; preds = %38
  %46 = load %struct.vt_buf*, %struct.vt_buf** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @VTBUF_GET_FIELD(%struct.vt_buf* %46, i32 %47, i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.vt_buf*, %struct.vt_buf** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @VTBUF_ISCURSOR(%struct.vt_buf* %51, i32 %52, i32 %53)
  %55 = call i32 @vt_determine_colors(i64 %50, i32 %54, i64* %12, i64* %13)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @VT_FB_MAX_WIDTH, align 4
  %58 = call i32 @PIXEL_WIDTH(i32 %57)
  %59 = mul i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %16, align 8
  %63 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %64 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %105

67:                                               ; preds = %45
  %68 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %69 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %67
  %77 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %78 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %83 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %81
  %91 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %92 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %97 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %168

105:                                              ; preds = %95, %90, %81, %76, %67, %45
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @TCHAR_CHARACTER(i64 %106)
  %108 = call i32 @vga_get_cp437(i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** @cons_to_vga_colors, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 4
  %114 = load i32*, i32** @cons_to_vga_colors, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %113, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %120 = load i32, i32* %10, align 4
  %121 = mul i32 %120, 80
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %121, %122
  %124 = mul i32 %123, 2
  %125 = add i32 %124, 0
  %126 = zext i32 %125 to i64
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = shl i32 %128, 8
  %130 = add nsw i32 %127, %129
  %131 = call i32 @MEM_WRITE2(%struct.vga_softc* %119, i64 %126, i32 %130)
  %132 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %133 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %105
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %139 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %137, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %105
  %144 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %145 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %151 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %16, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 %149, i64* %154, align 8
  br label %155

155:                                              ; preds = %148, %143
  %156 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %157 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %163 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %16, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %161, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %155
  br label %168

168:                                              ; preds = %167, %104
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %38

171:                                              ; preds = %38
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %26

175:                                              ; preds = %26
  ret void
}

declare dso_local i64 @VTBUF_GET_FIELD(%struct.vt_buf*, i32, i32) #1

declare dso_local i32 @vt_determine_colors(i64, i32, i64*, i64*) #1

declare dso_local i32 @VTBUF_ISCURSOR(%struct.vt_buf*, i32, i32) #1

declare dso_local i32 @PIXEL_WIDTH(i32) #1

declare dso_local i32 @vga_get_cp437(i32) #1

declare dso_local i32 @TCHAR_CHARACTER(i64) #1

declare dso_local i32 @MEM_WRITE2(%struct.vga_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
