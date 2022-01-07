; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_remove_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_remove_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, i32, i32* }
%struct.gcov_info = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not remove '%s' (not found)\0A\00", align 1
@gcov_persist = common dso_local global i64 0, align 8
@M_GCOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*)* @remove_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_info(%struct.gcov_node* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %6 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %7 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %8 = call i32 @get_info_index(%struct.gcov_node* %6, %struct.gcov_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_WARNING, align 4
  %13 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %14 = call i32 @gcov_info_filename(%struct.gcov_info* %13)
  %15 = call i32 @log(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %66

16:                                               ; preds = %2
  %17 = load i64, i64* @gcov_persist, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %21 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %22 = call i32 @save_info(%struct.gcov_node* %20, %struct.gcov_info* %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %25 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %28 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %35 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %41 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %45 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %66

49:                                               ; preds = %23
  %50 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %51 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @M_GCOV, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  %55 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %56 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %58 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %60 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %65 = call i32 @remove_node(%struct.gcov_node* %64)
  br label %66

66:                                               ; preds = %11, %48, %63, %49
  ret void
}

declare dso_local i32 @get_info_index(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i32 @save_info(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @remove_node(%struct.gcov_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
