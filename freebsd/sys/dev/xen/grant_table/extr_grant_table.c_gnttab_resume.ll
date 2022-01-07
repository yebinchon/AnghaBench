; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_grant_frames = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@resume_frames = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"No resume frames and no device provided\00", align 1
@gnttab_pseudo_phys_res_id = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@gnttab_pseudo_phys_res = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to reserve physical memory for gnttab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnttab_resume(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @nr_grant_frames, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @max_nr_grant_frames()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOSYS, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i64, i64* @resume_frames, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul i32 %22, %23
  %25 = call i32* @xenmem_alloc(i32* %21, i32* @gnttab_pseudo_phys_res_id, i32 %24)
  store i32* %25, i32** @gnttab_pseudo_phys_res, align 8
  %26 = load i32*, i32** @gnttab_pseudo_phys_res, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i32*, i32** @gnttab_pseudo_phys_res, align 8
  %32 = call i64 @rman_get_start(i32* %31)
  store i64 %32, i64* @resume_frames, align 8
  br label %33

33:                                               ; preds = %30, %13
  %34 = load i32, i32* %5, align 4
  %35 = sub i32 %34, 1
  %36 = call i32 @gnttab_map(i32 0, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @max_nr_grant_frames(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @xenmem_alloc(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @rman_get_start(i32*) #1

declare dso_local i32 @gnttab_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
