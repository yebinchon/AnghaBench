; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_blobs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_array_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@builtin_diff_usage = common dso_local global i32 0, align 4
@S_IFINVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**, %struct.object_array_entry**)* @builtin_diff_blobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_blobs(%struct.rev_info* %0, i32 %1, i8** %2, %struct.object_array_entry** %3) #0 {
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.object_array_entry**, align 8
  %9 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.object_array_entry** %3, %struct.object_array_entry*** %8, align 8
  %10 = load i32, i32* @S_IFREG, align 4
  %11 = or i32 %10, 420
  %12 = call i32 @canon_mode(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @builtin_diff_usage, align 4
  %17 = call i32 @usage(i32 %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %20 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %19, i64 0
  %21 = load %struct.object_array_entry*, %struct.object_array_entry** %20, align 8
  %22 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S_IFINVALID, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %29 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %28, i64 0
  %30 = load %struct.object_array_entry*, %struct.object_array_entry** %29, align 8
  %31 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %34 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %33, i64 1
  %35 = load %struct.object_array_entry*, %struct.object_array_entry** %34, align 8
  %36 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @S_IFINVALID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %43 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %42, i64 1
  %44 = load %struct.object_array_entry*, %struct.object_array_entry** %43, align 8
  %45 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  %49 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %50 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %49, i64 0
  %51 = load %struct.object_array_entry*, %struct.object_array_entry** %50, align 8
  %52 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %55 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %54, i64 1
  %56 = load %struct.object_array_entry*, %struct.object_array_entry** %55, align 8
  %57 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %60 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %59, i64 0
  %61 = load %struct.object_array_entry*, %struct.object_array_entry** %60, align 8
  %62 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %66 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %65, i64 1
  %67 = load %struct.object_array_entry*, %struct.object_array_entry** %66, align 8
  %68 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %72 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %71, i64 0
  %73 = load %struct.object_array_entry*, %struct.object_array_entry** %72, align 8
  %74 = call i32 @blob_path(%struct.object_array_entry* %73)
  %75 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %76 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %75, i64 1
  %77 = load %struct.object_array_entry*, %struct.object_array_entry** %76, align 8
  %78 = call i32 @blob_path(%struct.object_array_entry* %77)
  %79 = call i32 @stuff_change(i32* %48, i32 %53, i32 %58, i32* %64, i32* %70, i32 1, i32 1, i32 %74, i32 %78)
  %80 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %81 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %80, i32 0, i32 0
  %82 = call i32 @diffcore_std(i32* %81)
  %83 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %84 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %83, i32 0, i32 0
  %85 = call i32 @diff_flush(i32* %84)
  ret i32 0
}

declare dso_local i32 @canon_mode(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @stuff_change(i32*, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @blob_path(%struct.object_array_entry*) #1

declare dso_local i32 @diffcore_std(i32*) #1

declare dso_local i32 @diff_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
