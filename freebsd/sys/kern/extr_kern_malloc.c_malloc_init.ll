; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.malloc_type = type { i64, %struct.malloc_type*, %struct.malloc_type_internal* }
%struct.malloc_type_internal = type { i32 }

@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"malloc_register before vm_init\00", align 1
@M_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"malloc_init: bad malloc type magic\00", align 1
@mt_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@mt_stats_zone = common dso_local global i32 0, align 4
@malloc_mtx = common dso_local global i32 0, align 4
@kmemstatistics = common dso_local global %struct.malloc_type* null, align 8
@kmemcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malloc_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.malloc_type_internal*, align 8
  %4 = alloca %struct.malloc_type*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.malloc_type*
  store %struct.malloc_type* %10, %struct.malloc_type** %4, align 8
  %11 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %12 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @M_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* @mt_zone, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.malloc_type_internal* @uma_zalloc(i32 %19, i32 %22)
  store %struct.malloc_type_internal* %23, %struct.malloc_type_internal** %3, align 8
  %24 = load i32, i32* @mt_stats_zone, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @uma_zalloc_pcpu(i32 %24, i32 %27)
  %29 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %3, align 8
  %30 = getelementptr inbounds %struct.malloc_type_internal, %struct.malloc_type_internal* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %3, align 8
  %32 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %33 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %32, i32 0, i32 2
  store %struct.malloc_type_internal* %31, %struct.malloc_type_internal** %33, align 8
  %34 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %35 = call i32 @mtp_set_subzone(%struct.malloc_type* %34)
  %36 = call i32 @mtx_lock(i32* @malloc_mtx)
  %37 = load %struct.malloc_type*, %struct.malloc_type** @kmemstatistics, align 8
  %38 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %39 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %38, i32 0, i32 1
  store %struct.malloc_type* %37, %struct.malloc_type** %39, align 8
  %40 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  store %struct.malloc_type* %40, %struct.malloc_type** @kmemstatistics, align 8
  %41 = load i32, i32* @kmemcount, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @kmemcount, align 4
  %43 = call i32 @mtx_unlock(i32* @malloc_mtx)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.malloc_type_internal* @uma_zalloc(i32, i32) #1

declare dso_local i32 @uma_zalloc_pcpu(i32, i32) #1

declare dso_local i32 @mtp_set_subzone(%struct.malloc_type*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
