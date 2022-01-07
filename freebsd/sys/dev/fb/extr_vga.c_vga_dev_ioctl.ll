; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.fbtype = type { i32, i32, i32, i32, i32, i32 }
%struct.fbcmap = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64)* @vga_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_dev_ioctl(%struct.TYPE_14__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %203 [
    i32 132, label %9
    i32 128, label %12
    i32 131, label %14
    i32 130, label %31
    i32 133, label %43
    i32 129, label %70
    i32 135, label %97
    i32 136, label %157
    i32 134, label %180
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32 0, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %208

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODEV, align 4
  store i32 %13, i32* %4, align 4
  br label %208

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_12__*
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_display_start(%struct.TYPE_14__* %15, i32 %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @ENODEV, align 4
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %4, align 4
  br label %208

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_line_length(%struct.TYPE_14__* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ENODEV, align 4
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  store i32 %42, i32* %4, align 4
  br label %208

43:                                               ; preds = %3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_13__*
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_13__*
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_13__*
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_13__*
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_13__*
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_13__*
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @get_palette(%struct.TYPE_14__* %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32* %68)
  store i32 %69, i32* %4, align 4
  br label %208

70:                                               ; preds = %3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_13__*
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_13__*
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %7, align 8
  %81 = inttoptr i64 %80 to %struct.TYPE_13__*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_13__*
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %7, align 8
  %89 = inttoptr i64 %88 to %struct.TYPE_13__*
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_13__*
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @set_palette(%struct.TYPE_14__* %71, i32 %75, i32 %79, i32 %83, i32 %87, i32 %91, i32* %95)
  store i32 %96, i32* %4, align 4
  br label %208

97:                                               ; preds = %3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @fb_type(i32 %100)
  %102 = load i64, i64* %7, align 8
  %103 = inttoptr i64 %102 to %struct.fbtype*
  %104 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %103, i32 0, i32 5
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %7, align 8
  %110 = inttoptr i64 %109 to %struct.fbtype*
  %111 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %7, align 8
  %117 = inttoptr i64 %116 to %struct.fbtype*
  %118 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %7, align 8
  %124 = inttoptr i64 %123 to %struct.fbtype*
  %125 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %137, label %131

131:                                              ; preds = %97
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 8
  br i1 %136, label %137, label %141

137:                                              ; preds = %131, %97
  %138 = load i64, i64* %7, align 8
  %139 = inttoptr i64 %138 to %struct.fbtype*
  %140 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %150

141:                                              ; preds = %131
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 1, %145
  %147 = load i64, i64* %7, align 8
  %148 = inttoptr i64 %147 to %struct.fbtype*
  %149 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %141, %137
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %7, align 8
  %155 = inttoptr i64 %154 to %struct.fbtype*
  %156 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  store i32 0, i32* %4, align 4
  br label %208

157:                                              ; preds = %3
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = load i64, i64* %7, align 8
  %160 = inttoptr i64 %159 to %struct.fbcmap*
  %161 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %7, align 8
  %164 = inttoptr i64 %163 to %struct.fbcmap*
  %165 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %7, align 8
  %168 = inttoptr i64 %167 to %struct.fbcmap*
  %169 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %7, align 8
  %172 = inttoptr i64 %171 to %struct.fbcmap*
  %173 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %7, align 8
  %176 = inttoptr i64 %175 to %struct.fbcmap*
  %177 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @get_palette(%struct.TYPE_14__* %158, i32 %162, i32 %166, i32 %170, i32 %174, i32 %178, i32* null)
  store i32 %179, i32* %4, align 4
  br label %208

180:                                              ; preds = %3
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = load i64, i64* %7, align 8
  %183 = inttoptr i64 %182 to %struct.fbcmap*
  %184 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %7, align 8
  %187 = inttoptr i64 %186 to %struct.fbcmap*
  %188 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %7, align 8
  %191 = inttoptr i64 %190 to %struct.fbcmap*
  %192 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %7, align 8
  %195 = inttoptr i64 %194 to %struct.fbcmap*
  %196 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %7, align 8
  %199 = inttoptr i64 %198 to %struct.fbcmap*
  %200 = getelementptr inbounds %struct.fbcmap, %struct.fbcmap* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @set_palette(%struct.TYPE_14__* %181, i32 %185, i32 %189, i32 %193, i32 %197, i32 %201, i32* null)
  store i32 %202, i32* %4, align 4
  br label %208

203:                                              ; preds = %3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i64, i64* %7, align 8
  %207 = call i32 @fb_commonioctl(%struct.TYPE_14__* %204, i32 %205, i64 %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %203, %180, %157, %150, %70, %43, %41, %29, %12, %9
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @set_display_start(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @set_line_length(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @get_palette(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @set_palette(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fb_type(i32) #1

declare dso_local i32 @fb_commonioctl(%struct.TYPE_14__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
