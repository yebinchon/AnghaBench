; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_bitblt_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_bitblt_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32* }
%struct.vt_window = type { %struct.TYPE_13__, i32, %struct.vt_font* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofwfb_bitblt_text(%struct.vt_device* %0, %struct.vt_window* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vt_font*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_window* %1, %struct.vt_window** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %18 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %17, i32 0, i32 2
  %19 = load %struct.vt_font*, %struct.vt_font** %18, align 8
  store %struct.vt_font* %19, %struct.vt_font** %11, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %99, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %95, %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %46 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %50 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %48, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %57 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  %60 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %61 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %59, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %67 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %66, i32 0, i32 1
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @VTBUF_GET_FIELD(i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32* @vtfont_lookup(%struct.vt_font* %71, i32 %72)
  store i32* %73, i32** %15, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %76 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %75, i32 0, i32 1
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @VTBUF_ISCURSOR(i32* %76, i32 %77, i32 %78)
  %80 = call i32 @vt_determine_colors(i32 %74, i32 %79, i32* %13, i32* %14)
  %81 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %82 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %85 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %88 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @ofwfb_bitblt_bitmap(%struct.vt_device* %81, %struct.vt_window* %82, i32* %83, i32* null, i32 %86, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %43
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %36

98:                                               ; preds = %36
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %24

102:                                              ; preds = %24
  %103 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %104 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %200

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %114 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul i32 %112, %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %124 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul i32 %122, %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %134 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = mul i32 %132, %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vt_font*, %struct.vt_font** %11, align 8
  %144 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul i32 %142, %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %150 = call i64 @vt_is_cursor_in_area(%struct.vt_device* %149, %struct.TYPE_14__* %16)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %200

152:                                              ; preds = %108
  %153 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %154 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %155 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %156 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %155, i32 0, i32 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %161 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %160, i32 0, i32 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %166 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %165, i32 0, i32 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %171 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %170, i32 0, i32 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %176 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %179 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add i32 %177, %182
  %184 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %185 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %188 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %186, %191
  %193 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %194 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %197 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ofwfb_bitblt_bitmap(%struct.vt_device* %153, %struct.vt_window* %154, i32* %159, i32* %164, i32 %169, i32 %174, i32 %183, i32 %192, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %107, %152, %108
  ret void
}

declare dso_local i32 @VTBUF_GET_FIELD(i32*, i32, i32) #1

declare dso_local i32* @vtfont_lookup(%struct.vt_font*, i32) #1

declare dso_local i32 @vt_determine_colors(i32, i32, i32*, i32*) #1

declare dso_local i32 @VTBUF_ISCURSOR(i32*, i32, i32) #1

declare dso_local i32 @ofwfb_bitblt_bitmap(%struct.vt_device*, %struct.vt_window*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vt_is_cursor_in_area(%struct.vt_device*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
