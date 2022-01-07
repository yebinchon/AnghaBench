; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_read-tree.c_debug_stage.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_read-tree.c_debug_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i8*, i32 }
%struct.unpack_trees_options = type { %struct.cache_entry* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(missing)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"(conflict)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%06o #%d %s %.8s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cache_entry*, %struct.unpack_trees_options*)* @debug_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_stage(i8* %0, %struct.cache_entry* %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.unpack_trees_options*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %10 = icmp ne %struct.cache_entry* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %6, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 0
  %17 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %18 = icmp eq %struct.cache_entry* %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %26 = call i32 @ce_stage(%struct.cache_entry* %25)
  %27 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %31 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %30, i32 0, i32 2
  %32 = call i8* @oid_to_hex(i32* %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %26, i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %21, %19
  br label %35

35:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
