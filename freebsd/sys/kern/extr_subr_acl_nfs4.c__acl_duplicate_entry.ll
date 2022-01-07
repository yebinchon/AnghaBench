; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c__acl_duplicate_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_nfs4.c__acl_duplicate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_entry = type { i32 }
%struct.acl = type { i32, %struct.acl_entry* }

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"aclp->acl_cnt + 1 <= ACL_MAX_ENTRIES\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acl_entry* (%struct.acl*, i32)* @_acl_duplicate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acl_entry* @_acl_duplicate_entry(%struct.acl* %0, i32 %1) #0 {
  %3 = alloca %struct.acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acl*, %struct.acl** %3, align 8
  %7 = getelementptr inbounds %struct.acl, %struct.acl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %11 = icmp sle i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.acl*, %struct.acl** %3, align 8
  %15 = getelementptr inbounds %struct.acl, %struct.acl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.acl*, %struct.acl** %3, align 8
  %23 = getelementptr inbounds %struct.acl, %struct.acl* %22, i32 0, i32 1
  %24 = load %struct.acl_entry*, %struct.acl_entry** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %24, i64 %26
  %28 = load %struct.acl*, %struct.acl** %3, align 8
  %29 = getelementptr inbounds %struct.acl, %struct.acl* %28, i32 0, i32 1
  %30 = load %struct.acl_entry*, %struct.acl_entry** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %30, i64 %33
  %35 = bitcast %struct.acl_entry* %27 to i8*
  %36 = bitcast %struct.acl_entry* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.acl*, %struct.acl** %3, align 8
  %42 = getelementptr inbounds %struct.acl, %struct.acl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.acl*, %struct.acl** %3, align 8
  %46 = getelementptr inbounds %struct.acl, %struct.acl* %45, i32 0, i32 1
  %47 = load %struct.acl_entry*, %struct.acl_entry** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.acl_entry, %struct.acl_entry* %47, i64 %50
  ret %struct.acl_entry* %51
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
