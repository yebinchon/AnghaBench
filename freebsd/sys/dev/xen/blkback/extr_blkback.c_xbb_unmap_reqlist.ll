; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_unmap_reqlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_unmap_reqlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_xen_reqlist = type { i64, i64* }
%struct.gnttab_unmap_grant_ref = type { i64, i64, i32 }

@XBB_MAX_SEGMENTS_PER_REQLIST = common dso_local global i32 0, align 4
@GRANT_REF_INVALID = common dso_local global i64 0, align 8
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Grant table operation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_xen_reqlist*)* @xbb_unmap_reqlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_unmap_reqlist(%struct.xbb_xen_reqlist* %0) #0 {
  %2 = alloca %struct.xbb_xen_reqlist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xbb_xen_reqlist* %0, %struct.xbb_xen_reqlist** %2, align 8
  %8 = load i32, i32* @XBB_MAX_SEGMENTS_PER_REQLIST, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca %struct.gnttab_unmap_grant_ref, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %2, align 8
  %15 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %2, align 8
  %20 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GRANT_REF_INVALID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %55

28:                                               ; preds = %18
  %29 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @xbb_get_gntaddr(%struct.xbb_xen_reqlist* %29, i64 %30, i32 0)
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %11, i64 %32
  %34 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %11, i64 %35
  %37 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %2, align 8
  %39 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %11, i64 %44
  %46 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* @GRANT_REF_INVALID, align 8
  %48 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %2, align 8
  %49 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %28, %27
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %12

58:                                               ; preds = %12
  %59 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @HYPERVISOR_grant_table_op(i32 %59, %struct.gnttab_unmap_grant_ref* %11, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xbb_get_gntaddr(%struct.xbb_xen_reqlist*, i64, i32) #2

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i64) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
