; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_remove_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_hash_entry_remove_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fha_hash_entry = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%d reqs on removed thread %p\00", align 1
@st_alink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fha_hash_entry*, %struct.TYPE_4__*)* @fha_hash_entry_remove_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fha_hash_entry_remove_thread(%struct.fha_hash_entry* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.fha_hash_entry*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.fha_hash_entry* %0, %struct.fha_hash_entry** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %3, align 8
  %6 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32 %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = bitcast %struct.TYPE_4__* %18 to i8*
  %20 = call i32 @KASSERT(i32 %14, i8* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i32, i32* @st_alink, align 4
  %23 = call i32 @LIST_REMOVE(%struct.TYPE_4__* %21, i32 %22)
  %24 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %3, align 8
  %25 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
