; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_other_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_other_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_struct = type { i32, %struct.dir_entry** }
%struct.dir_entry = type { i32, i32 }

@tag_other = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.dir_struct*)* @show_other_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_other_files(%struct.index_state* %0, %struct.dir_struct* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %10 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %15 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %14, i32 0, i32 1
  %16 = load %struct.dir_entry**, %struct.dir_entry*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %16, i64 %18
  %20 = load %struct.dir_entry*, %struct.dir_entry** %19, align 8
  store %struct.dir_entry* %20, %struct.dir_entry** %6, align 8
  %21 = load %struct.index_state*, %struct.index_state** %3, align 8
  %22 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %23 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %26 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @index_name_is_other(%struct.index_state* %21, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  br label %36

31:                                               ; preds = %13
  %32 = load %struct.index_state*, %struct.index_state** %3, align 8
  %33 = load i32, i32* @tag_other, align 4
  %34 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %35 = call i32 @show_dir_entry(%struct.index_state* %32, i32 %33, %struct.dir_entry* %34)
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local i32 @index_name_is_other(%struct.index_state*, i32, i32) #1

declare dso_local i32 @show_dir_entry(%struct.index_state*, i32, %struct.dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
