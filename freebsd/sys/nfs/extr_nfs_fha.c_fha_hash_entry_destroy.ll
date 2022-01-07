; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fha_hash_entry = type { i64, i64, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d reqs on destroyed fhe %p\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%d exclusive reqs on destroyed fhe %p\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%d threads on destroyed fhe %p\00", align 1
@M_NFS_FHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fha_hash_entry*)* @fha_hash_entry_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fha_hash_entry_destroy(%struct.fha_hash_entry* %0) #0 {
  %2 = alloca %struct.fha_hash_entry*, align 8
  store %struct.fha_hash_entry* %0, %struct.fha_hash_entry** %2, align 8
  %3 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32 %5, i32 %6)
  %8 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %9 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %14 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %17 = bitcast %struct.fha_hash_entry* %16 to i8*
  %18 = call i32 @KASSERT(i32 %12, i8* %17)
  %19 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %20 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %25 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %28 = bitcast %struct.fha_hash_entry* %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %31 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %36 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %39 = bitcast %struct.fha_hash_entry* %38 to i8*
  %40 = call i32 @KASSERT(i32 %34, i8* %39)
  %41 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %2, align 8
  %42 = load i32, i32* @M_NFS_FHA, align 4
  %43 = call i32 @free(%struct.fha_hash_entry* %41, i32 %42)
  ret void
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.fha_hash_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
