; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_v2sizep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_v2sizep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_page = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MemGuard detected double-free of %p\00", align 1
@PQ_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"MEMGUARD: Expected wired page %p in vtomgfifo!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @v2sizep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @v2sizep(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_page*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @pmap_kextract(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i64 %14)
  store %struct.vm_page* %15, %struct.vm_page** %4, align 8
  %16 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %17 = call i64 @vm_page_wired(%struct.vm_page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %21 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PQ_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %29 = bitcast %struct.vm_page* %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %32 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  ret i32* %34
}

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_page_wired(%struct.vm_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
