; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_set_bios_selectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_set_bios_selectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.descriptor = type { i32 }
%struct.bios_segments = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.soft_segment_descriptor = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@SDT_MEMERA = common dso_local global i32 0, align 4
@gdt = common dso_local global %union.descriptor* null, align 8
@GBIOSCODE32_SEL = common dso_local global i64 0, align 8
@BIOSCODE_FLAG = common dso_local global i32 0, align 4
@GBIOSCODE16_SEL = common dso_local global i64 0, align 8
@SDT_MEMRWA = common dso_local global i32 0, align 4
@BIOSDATA_FLAG = common dso_local global i32 0, align 4
@GBIOSDATA_SEL = common dso_local global i64 0, align 8
@BIOSUTIL_FLAG = common dso_local global i32 0, align 4
@GBIOSUTIL_SEL = common dso_local global i64 0, align 8
@BIOSARGS_FLAG = common dso_local global i32 0, align 4
@GBIOSARGS_SEL = common dso_local global i64 0, align 8
@NGDT = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bios_selectors(%struct.bios_segments* %0, i32 %1) #0 {
  %3 = alloca %struct.bios_segments*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soft_segment_descriptor, align 8
  %6 = alloca %union.descriptor*, align 8
  store %struct.bios_segments* %0, %struct.bios_segments** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  %10 = load i32, i32* @SDT_MEMERA, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 4
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 6
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 7
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 8
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 9
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 10
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 11
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 12
  store i32 0, i32* %20, align 8
  %21 = load %union.descriptor*, %union.descriptor** @gdt, align 8
  store %union.descriptor* %21, %union.descriptor** %6, align 8
  %22 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %23 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %28 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %union.descriptor*, %union.descriptor** %6, align 8
  %33 = load i64, i64* @GBIOSCODE32_SEL, align 8
  %34 = getelementptr inbounds %union.descriptor, %union.descriptor* %32, i64 %33
  %35 = bitcast %union.descriptor* %34 to i32*
  %36 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %5, i32* %35)
  %37 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @BIOSCODE_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %2
  %43 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %44 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %49 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = load %union.descriptor*, %union.descriptor** %6, align 8
  %54 = load i64, i64* @GBIOSCODE16_SEL, align 8
  %55 = getelementptr inbounds %union.descriptor, %union.descriptor* %53, i64 %54
  %56 = bitcast %union.descriptor* %55 to i32*
  %57 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %5, i32* %56)
  br label %58

58:                                               ; preds = %42, %2
  %59 = load i32, i32* @SDT_MEMRWA, align 4
  %60 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @BIOSDATA_FLAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %67 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %72 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = load %union.descriptor*, %union.descriptor** %6, align 8
  %77 = load i64, i64* @GBIOSDATA_SEL, align 8
  %78 = getelementptr inbounds %union.descriptor, %union.descriptor* %76, i64 %77
  %79 = bitcast %union.descriptor* %78 to i32*
  %80 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %5, i32* %79)
  br label %81

81:                                               ; preds = %65, %58
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @BIOSUTIL_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %88 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %93 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load %union.descriptor*, %union.descriptor** %6, align 8
  %98 = load i64, i64* @GBIOSUTIL_SEL, align 8
  %99 = getelementptr inbounds %union.descriptor, %union.descriptor* %97, i64 %98
  %100 = bitcast %union.descriptor* %99 to i32*
  %101 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %5, i32* %100)
  br label %102

102:                                              ; preds = %86, %81
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @BIOSARGS_FLAG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %109 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.bios_segments*, %struct.bios_segments** %3, align 8
  %114 = getelementptr inbounds %struct.bios_segments, %struct.bios_segments* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %5, i32 0, i32 2
  store i32 %116, i32* %117, align 8
  %118 = load %union.descriptor*, %union.descriptor** %6, align 8
  %119 = load i64, i64* @GBIOSARGS_SEL, align 8
  %120 = getelementptr inbounds %union.descriptor, %union.descriptor* %118, i64 %119
  %121 = bitcast %union.descriptor* %120 to i32*
  %122 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %5, i32* %121)
  br label %123

123:                                              ; preds = %107, %102
  ret void
}

declare dso_local i32 @ssdtosd(%struct.soft_segment_descriptor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
