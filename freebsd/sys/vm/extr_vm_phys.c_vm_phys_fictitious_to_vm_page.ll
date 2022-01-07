; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_to_vm_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_to_vm_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vm_phys_fictitious_seg = type { i64, %struct.TYPE_3__*, i64 }

@vm_phys_fictitious_reg_lock = common dso_local global i32 0, align 4
@fict_tree = common dso_local global i32 0, align 4
@vm_phys_fictitious_tree = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%p not fictitious\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @vm_phys_fictitious_to_vm_page(i64 %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_phys_fictitious_seg, align 8
  %5 = alloca %struct.vm_phys_fictitious_seg*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %4, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %4, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = call i32 @rw_rlock(i32* @vm_phys_fictitious_reg_lock)
  %11 = load i32, i32* @fict_tree, align 4
  %12 = call %struct.vm_phys_fictitious_seg* @RB_FIND(i32 %11, i32* @vm_phys_fictitious_tree, %struct.vm_phys_fictitious_seg* %4)
  store %struct.vm_phys_fictitious_seg* %12, %struct.vm_phys_fictitious_seg** %5, align 8
  %13 = call i32 @rw_runlock(i32* @vm_phys_fictitious_reg_lock)
  %14 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %15 = icmp eq %struct.vm_phys_fictitious_seg* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %19 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.vm_phys_fictitious_seg*, %struct.vm_phys_fictitious_seg** %5, align 8
  %23 = getelementptr inbounds %struct.vm_phys_fictitious_seg, %struct.vm_phys_fictitious_seg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i64 @atop(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %26
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PG_FICTITIOUS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = bitcast %struct.TYPE_3__* %35 to i8*
  %37 = call i32 @KASSERT(i32 %34, i8* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %2, align 8
  br label %39

39:                                               ; preds = %17, %16
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %40
}

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local %struct.vm_phys_fictitious_seg* @RB_FIND(i32, i32*, %struct.vm_phys_fictitious_seg*) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
