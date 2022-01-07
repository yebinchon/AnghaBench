; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c__vm_phys_create_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c__vm_phys_create_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i64, i32, i64 }

@vm_phys_nsegs = common dso_local global i64 0, align 8
@VM_PHYSSEG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"vm_phys_create_seg: increase VM_PHYSSEG_MAX\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"vm_phys_create_seg: invalid domain provided\00", align 1
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @_vm_phys_create_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_phys_create_seg(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_phys_seg*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @vm_phys_nsegs, align 8
  %9 = load i64, i64* @VM_PHYSSEG_MAX, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @vm_ndomains, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %24 = load i64, i64* @vm_phys_nsegs, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @vm_phys_nsegs, align 8
  %26 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %23, i64 %24
  store %struct.vm_phys_seg* %26, %struct.vm_phys_seg** %7, align 8
  br label %27

27:                                               ; preds = %40, %19
  %28 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %29 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %30 = icmp ugt %struct.vm_phys_seg* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %33 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %32, i64 -1
  %34 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sge i64 %35, %36
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i1 [ false, %27 ], [ %37, %31 ]
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %42 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %43 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %42, i64 -1
  %44 = bitcast %struct.vm_phys_seg* %41 to i8*
  %45 = bitcast %struct.vm_phys_seg* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  %46 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %47 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %46, i32 -1
  store %struct.vm_phys_seg* %47, %struct.vm_phys_seg** %7, align 8
  br label %27

48:                                               ; preds = %38
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %51 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %54 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %7, align 8
  %57 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
