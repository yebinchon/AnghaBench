; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32 }
%struct.lockf_entry = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.lockf_entry_list = type { i32 }

@F_REMOTE = common dso_local global i32 0, align 4
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockf*, %struct.lockf_entry*, %struct.lockf_entry*, %struct.lockf_entry_list*)* @lf_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_split(%struct.lockf* %0, %struct.lockf_entry* %1, %struct.lockf_entry* %2, %struct.lockf_entry_list* %3) #0 {
  %5 = alloca %struct.lockf*, align 8
  %6 = alloca %struct.lockf_entry*, align 8
  %7 = alloca %struct.lockf_entry*, align 8
  %8 = alloca %struct.lockf_entry_list*, align 8
  %9 = alloca %struct.lockf_entry*, align 8
  store %struct.lockf* %0, %struct.lockf** %5, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %6, align 8
  store %struct.lockf_entry* %2, %struct.lockf_entry** %7, align 8
  store %struct.lockf_entry_list* %3, %struct.lockf_entry_list** %8, align 8
  %10 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %11 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %14 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.lockf*, %struct.lockf** %5, align 8
  %19 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %20 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %21 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.lockf_entry_list*, %struct.lockf_entry_list** %8, align 8
  %25 = call i32 @lf_set_start(%struct.lockf* %18, %struct.lockf_entry* %19, i64 %23, %struct.lockf_entry_list* %24)
  br label %91

26:                                               ; preds = %4
  %27 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %28 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %31 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.lockf*, %struct.lockf** %5, align 8
  %36 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %37 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %38 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load %struct.lockf_entry_list*, %struct.lockf_entry_list** %8, align 8
  %42 = call i32 @lf_set_end(%struct.lockf* %35, %struct.lockf_entry* %36, i64 %40, %struct.lockf_entry_list* %41)
  br label %91

43:                                               ; preds = %26
  %44 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %45 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.lockf_entry* @lf_alloc_lock(i32 %46)
  store %struct.lockf_entry* %47, %struct.lockf_entry** %9, align 8
  %48 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %49 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %50 = call i32 @memcpy(%struct.lockf_entry* %48, %struct.lockf_entry* %49, i32 40)
  %51 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %52 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %54 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @F_REMOTE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %61 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vref(i32 %62)
  br label %64

64:                                               ; preds = %59, %43
  %65 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %66 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %70 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %72 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %71, i32 0, i32 5
  %73 = call i32 @LIST_INIT(i32* %72)
  %74 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %75 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %74, i32 0, i32 4
  %76 = call i32 @LIST_INIT(i32* %75)
  %77 = load %struct.lockf*, %struct.lockf** %5, align 8
  %78 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %79 = call i32 @lf_add_incoming(%struct.lockf* %77, %struct.lockf_entry* %78)
  %80 = load %struct.lockf*, %struct.lockf** %5, align 8
  %81 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %82 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %83 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.lockf_entry_list*, %struct.lockf_entry_list** %8, align 8
  %87 = call i32 @lf_set_end(%struct.lockf* %80, %struct.lockf_entry* %81, i64 %85, %struct.lockf_entry_list* %86)
  %88 = load %struct.lockf*, %struct.lockf** %5, align 8
  %89 = load %struct.lockf_entry*, %struct.lockf_entry** %9, align 8
  %90 = call i32 @lf_insert_lock(%struct.lockf* %88, %struct.lockf_entry* %89)
  br label %91

91:                                               ; preds = %64, %34, %17
  ret void
}

declare dso_local i32 @lf_set_start(%struct.lockf*, %struct.lockf_entry*, i64, %struct.lockf_entry_list*) #1

declare dso_local i32 @lf_set_end(%struct.lockf*, %struct.lockf_entry*, i64, %struct.lockf_entry_list*) #1

declare dso_local %struct.lockf_entry* @lf_alloc_lock(i32) #1

declare dso_local i32 @memcpy(%struct.lockf_entry*, %struct.lockf_entry*, i32) #1

declare dso_local i32 @vref(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @lf_add_incoming(%struct.lockf*, %struct.lockf_entry*) #1

declare dso_local i32 @lf_insert_lock(%struct.lockf*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
