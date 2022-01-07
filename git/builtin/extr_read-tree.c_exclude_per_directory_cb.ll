; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_read-tree.c_exclude_per_directory_cb.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_read-tree.c_exclude_per_directory_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }
%struct.dir_struct = type { i8*, i32 }
%struct.unpack_trees_options = type { %struct.dir_struct* }

@.str = private unnamed_addr constant [45 x i8] c"more than one --exclude-per-directory given.\00", align 1
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @exclude_per_directory_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclude_per_directory_cb(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_struct*, align 8
  %8 = alloca %struct.unpack_trees_options*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @BUG_ON_OPT_NEG(i32 %9)
  %11 = load %struct.option*, %struct.option** %4, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.unpack_trees_options*
  store %struct.unpack_trees_options* %14, %struct.unpack_trees_options** %8, align 8
  %15 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %8, align 8
  %16 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %15, i32 0, i32 0
  %17 = load %struct.dir_struct*, %struct.dir_struct** %16, align 8
  %18 = icmp ne %struct.dir_struct* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = call %struct.dir_struct* @xcalloc(i32 1, i32 16)
  store %struct.dir_struct* %22, %struct.dir_struct** %7, align 8
  %23 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %24 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %25 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %30 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %32 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %8, align 8
  %33 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %32, i32 0, i32 0
  store %struct.dir_struct* %31, %struct.dir_struct** %33, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.dir_struct* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
