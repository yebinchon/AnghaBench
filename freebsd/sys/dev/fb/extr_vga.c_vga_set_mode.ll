; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32 }

@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V_ADP_COLOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V_STATE_SIG = common dso_local global i32 0, align 4
@V_INFO_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @vga_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_set_mode(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = call i32 @prologue(%struct.TYPE_15__* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V_ADP_COLOR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @map_gen_mode_num(i32 %14, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @vga_get_info(%struct.TYPE_15__* %22, i32 %23, %struct.TYPE_14__* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %158

28:                                               ; preds = %2
  %29 = load i32, i32* @V_STATE_SIG, align 4
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @get_mode_param(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bcopy(i32 %32, i32* %34, i32 8)
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %143 [
    i32 144, label %37
    i32 134, label %37
    i32 146, label %44
    i32 136, label %44
    i32 150, label %72
    i32 153, label %72
    i32 145, label %76
    i32 135, label %76
    i32 148, label %84
    i32 147, label %84
    i32 137, label %84
    i32 168, label %84
    i32 163, label %84
    i32 167, label %84
    i32 162, label %84
    i32 155, label %84
    i32 152, label %84
    i32 154, label %84
    i32 151, label %84
    i32 156, label %84
    i32 128, label %88
    i32 166, label %139
    i32 161, label %139
    i32 165, label %139
    i32 160, label %139
    i32 159, label %139
    i32 158, label %139
    i32 149, label %139
    i32 164, label %139
    i32 157, label %139
    i32 138, label %139
  ]

37:                                               ; preds = %28, %28
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 8, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 19
  store i32 71, i32* %43, align 4
  br label %48

44:                                               ; preds = %28, %28
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 19
  store i32 79, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 9
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 192
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 16
  store i32 8, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 17
  store i32 62, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 26
  store i32 234, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 28
  store i32 223, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 31
  store i32 231, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 32
  store i32 4, i32* %71, align 4
  br label %85

72:                                               ; preds = %28, %28
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 28
  store i32 87, i32* %75, align 4
  br label %77

76:                                               ; preds = %28, %28
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 8, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 19
  store i32 7, i32* %83, align 4
  br label %85

84:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %85

85:                                               ; preds = %84, %77, %48
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = call i32 @vga_load_state(%struct.TYPE_15__* %86, %struct.TYPE_16__* %7)
  br label %145

88:                                               ; preds = %28
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 247
  store i32 %93, i32* %91, align 4
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 4
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 30
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 191
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 33
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 64
  store i32 %108, i32* %106, align 4
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 29
  store i32 80, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 27
  store i32 44, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 16
  store i32 13, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 17
  store i32 62, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 26
  store i32 234, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 27
  store i32 172, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 28
  store i32 223, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 31
  store i32 231, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 32
  store i32 6, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 9
  store i32 227, i32* %138, align 4
  br label %140

139:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %140

140:                                              ; preds = %139, %88
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = call i32 @vga_load_state(%struct.TYPE_15__* %141, %struct.TYPE_16__* %7)
  br label %145

143:                                              ; preds = %28
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %3, align 4
  br label %158

145:                                              ; preds = %140, %85
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @V_INFO_LINEAR, align 4
  %150 = xor i32 %149, -1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %150
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = call i32 @update_adapter_info(%struct.TYPE_15__* %154, %struct.TYPE_14__* %6)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = call i32 @vidd_set_hw_cursor(%struct.TYPE_15__* %156, i32 -1, i32 -1)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %145, %143, %26
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @prologue(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @map_gen_mode_num(i32, i32, i32) #1

declare dso_local i64 @vga_get_info(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @get_mode_param(i32) #1

declare dso_local i32 @vga_load_state(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @update_adapter_info(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vidd_set_hw_cursor(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
