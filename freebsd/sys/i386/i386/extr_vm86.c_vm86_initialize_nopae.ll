; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_initialize_nopae.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_initialize_nopae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb_ext = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, %struct.pcb_ext*, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.vm86_layout_nopae = type { i32, i64, i64, %struct.pcb_ext, %struct.pcb_ext }
%struct.pcb = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, %struct.pcb*, i32, i8*, i8* }
%struct.soft_segment_descriptor = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SDT_SYS386TSS = common dso_local global i32 0, align 4
@vm86paddr = common dso_local global i8* null, align 8
@vm86_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vm86 lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@vm86pa = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@PCB_VM86CALL = common dso_local global i32 0, align 4
@GDATA_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_VME = common dso_local global i32 0, align 4
@CR4_VME = common dso_local global i32 0, align 4
@INTMAP_SIZE = common dso_local global i32 0, align 4
@IOMAP_SIZE = common dso_local global i32 0, align 4
@TSS_SIZE = common dso_local global i64 0, align 8
@vm86pcb = common dso_local global %struct.pcb_ext* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm86_initialize_nopae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm86_initialize_nopae() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vm86_layout_nopae*, align 8
  %4 = alloca %struct.pcb*, align 8
  %5 = alloca %struct.pcb_ext*, align 8
  %6 = alloca %struct.soft_segment_descriptor, align 8
  %7 = bitcast %struct.soft_segment_descriptor* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %6, i32 0, i32 2
  %9 = load i32, i32* @SDT_SYS386TSS, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %6, i32 0, i32 4
  store i32 1, i32* %11, align 4
  %12 = load i8*, i8** @vm86paddr, align 8
  %13 = bitcast i8* %12 to %struct.vm86_layout_nopae*
  store %struct.vm86_layout_nopae* %13, %struct.vm86_layout_nopae** %3, align 8
  %14 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %15 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %14, i32 0, i32 4
  %16 = bitcast %struct.pcb_ext* %15 to %struct.pcb*
  store %struct.pcb* %16, %struct.pcb** %4, align 8
  %17 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %18 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %17, i32 0, i32 3
  store %struct.pcb_ext* %18, %struct.pcb_ext** %5, align 8
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* @vm86_lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load %struct.pcb*, %struct.pcb** %4, align 8
  %22 = bitcast %struct.pcb* %21 to %struct.pcb_ext*
  %23 = call i32 @bzero(%struct.pcb_ext* %22, i32 80)
  %24 = load i32, i32* @vm86pa, align 4
  %25 = load i32, i32* @PG_V, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PG_RW, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PG_U, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.pcb*, %struct.pcb** %4, align 8
  %32 = getelementptr inbounds %struct.pcb, %struct.pcb* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @vm86paddr, align 8
  %34 = getelementptr i8, i8* %33, i64 -4
  %35 = load %struct.pcb*, %struct.pcb** %4, align 8
  %36 = getelementptr inbounds %struct.pcb, %struct.pcb* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @vm86paddr, align 8
  %38 = load %struct.pcb*, %struct.pcb** %4, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PCB_VM86CALL, align 4
  %41 = load %struct.pcb*, %struct.pcb** %4, align 8
  %42 = getelementptr inbounds %struct.pcb, %struct.pcb* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %44 = bitcast %struct.pcb_ext* %43 to %struct.pcb*
  %45 = load %struct.pcb*, %struct.pcb** %4, align 8
  %46 = getelementptr inbounds %struct.pcb, %struct.pcb* %45, i32 0, i32 5
  store %struct.pcb* %44, %struct.pcb** %46, align 8
  %47 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %48 = call i32 @bzero(%struct.pcb_ext* %47, i32 80)
  %49 = load i8*, i8** @vm86paddr, align 8
  %50 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %51 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @GDATA_SEL, align 4
  %54 = load i32, i32* @SEL_KPL, align 4
  %55 = call i32 @GSEL(i32 %53, i32 %54)
  %56 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %57 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %60 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %64 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %63, i32 0, i32 2
  %65 = ptrtoint %struct.TYPE_4__* %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = shl i32 %66, 16
  %68 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %69 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %72 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %75 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %77 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %80 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load i32, i32* @cpu_feature, align 4
  %83 = load i32, i32* @CPUID_VME, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %0
  %87 = call i32 (...) @rcr4()
  %88 = load i32, i32* @CR4_VME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %94 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %86, %0
  %97 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %98 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %2, align 8
  store i32 0, i32* %1, align 4
  br label %102

102:                                              ; preds = %114, %96
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* @INTMAP_SIZE, align 4
  %106 = load i32, i32* @IOMAP_SIZE, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = udiv i64 %108, 4
  %110 = icmp ult i64 %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load i32*, i32** %2, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %2, align 8
  store i32 0, i32* %112, align 4
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %102

117:                                              ; preds = %102
  %118 = load %struct.vm86_layout_nopae*, %struct.vm86_layout_nopae** %3, align 8
  %119 = getelementptr inbounds %struct.vm86_layout_nopae, %struct.vm86_layout_nopae* %118, i32 0, i32 0
  store i32 255, i32* %119, align 8
  %120 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %121 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %120, i32 0, i32 2
  %122 = ptrtoint %struct.TYPE_4__* %121 to i32
  %123 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %6, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load i64, i64* @TSS_SIZE, align 8
  %125 = sub nsw i64 %124, 1
  %126 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %6, i32 0, i32 2
  store i64 %125, i64* %126, align 8
  %127 = load %struct.pcb_ext*, %struct.pcb_ext** %5, align 8
  %128 = getelementptr inbounds %struct.pcb_ext, %struct.pcb_ext* %127, i32 0, i32 1
  %129 = call i32 @ssdtosd(%struct.soft_segment_descriptor* %6, i32* %128)
  %130 = load %struct.pcb*, %struct.pcb** %4, align 8
  %131 = bitcast %struct.pcb* %130 to %struct.pcb_ext*
  store %struct.pcb_ext* %131, %struct.pcb_ext** @vm86pcb, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @bzero(%struct.pcb_ext*, i32) #2

declare dso_local i32 @GSEL(i32, i32) #2

declare dso_local i32 @rcr4(...) #2

declare dso_local i32 @ssdtosd(%struct.soft_segment_descriptor*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
