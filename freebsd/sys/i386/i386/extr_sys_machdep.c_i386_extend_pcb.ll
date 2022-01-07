; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_extend_pcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_sys_machdep.c_i386_extend_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pcb_ext* }
%struct.pcb_ext = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i8* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.soft_segment_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IOPAGES = common dso_local global i64 0, align 8
@SDT_SYS386TSS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GDATA_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"giving TSS to !curthread\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"already have a TSS!\00", align 1
@trampstk = common dso_local global i32 0, align 4
@private_tss = common dso_local global i32 0, align 4
@tss_gdt = common dso_local global i32 0, align 4
@GPROC0_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_extend_pcb(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pcb_ext*, align 8
  %7 = alloca %struct.soft_segment_descriptor, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 1
  %10 = load i64, i64* @IOPAGES, align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @ctob(i64 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 2
  %15 = load i32, i32* @SDT_SYS386TSS, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 4
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 5
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 6
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 7
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 8
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 9
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 10
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* @IOPAGES, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @ctob(i64 %25)
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.pcb_ext* @pmap_trm_alloc(i32 %26, i32 %29)
  store %struct.pcb_ext* %30, %struct.pcb_ext** %6, align 8
  %31 = load i32, i32* @GDATA_SEL, align 4
  %32 = load i32, i32* @SEL_KPL, align 4
  %33 = call i32 @GSEL(i32 %31, i32 %32)
  %34 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %35 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sub nsw i32 %37, 16
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %41 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %40, i32 0, i32 1
  %42 = ptrtoint %struct.TYPE_5__* %41 to i32
  %43 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %44 = ptrtoint %struct.pcb_ext* %43 to i32
  %45 = sub i32 %42, %44
  %46 = sub i32 %39, %45
  %47 = shl i32 %46, 16
  %48 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %49 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %52 = bitcast %struct.pcb_ext* %51 to i8*
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %57 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %59 = bitcast %struct.pcb_ext* %58 to i8*
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = getelementptr i8, i8* %62, i64 -32
  %64 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %65 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %68 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %85, %1
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @IOPAGES, align 8
  %76 = call i32 @ctob(i64 %75)
  %77 = add nsw i32 %76, 32
  %78 = add nsw i32 %77, 16
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = icmp ult i64 %74, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  store i32 -1, i32* %83, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %90 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %89, i32 0, i32 1
  %91 = ptrtoint %struct.TYPE_5__* %90 to i32
  %92 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %94 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %93, i32 0, i32 1
  %95 = ptrtoint %struct.TYPE_5__* %94 to i32
  %96 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %97 = ptrtoint %struct.pcb_ext* %96 to i32
  %98 = sub i32 %95, %97
  %99 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %7, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sub i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %103 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %102, i32 0, i32 0
  %104 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %7, i32* %103)
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = load %struct.thread*, %struct.thread** @curthread, align 8
  %107 = icmp eq %struct.thread* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @KASSERT(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.thread*, %struct.thread** %2, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.pcb_ext*, %struct.pcb_ext** %113, align 8
  %115 = icmp eq %struct.pcb_ext* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @KASSERT(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %118 = call i32 (...) @critical_enter()
  %119 = load i32, i32* @trampstk, align 4
  %120 = call i32* @PCPU_GET(i32 %119)
  %121 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %122 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32* %120, i32** %123, align 8
  %124 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %125 = load %struct.thread*, %struct.thread** %2, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store %struct.pcb_ext* %124, %struct.pcb_ext** %128, align 8
  %129 = load i32, i32* @private_tss, align 4
  %130 = call i32 @PCPU_SET(i32 %129, i32 1)
  %131 = load %struct.pcb_ext*, %struct.pcb_ext** %6, align 8
  %132 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @tss_gdt, align 4
  %135 = call i32* @PCPU_GET(i32 %134)
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @GPROC0_SEL, align 4
  %137 = load i32, i32* @SEL_KPL, align 4
  %138 = call i32 @GSEL(i32 %136, i32 %137)
  %139 = call i32 @ltr(i32 %138)
  %140 = call i32 (...) @critical_exit()
  ret i32 0
}

declare dso_local i32 @ctob(i64) #1

declare dso_local %struct.pcb_ext* @pmap_trm_alloc(i32, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @ssdtosd(%struct.soft_segment_descriptor*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32* @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @ltr(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
