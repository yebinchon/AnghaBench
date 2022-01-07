; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_new_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, i32, i32, i8* }
%struct.gcov_info = type { i32 }

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@gcov_data_fops = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not create file\0A\00", align 1
@children_entry = common dso_local global i32 0, align 4
@all_head = common dso_local global i32 0, align 4
@all_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gcov_node* (%struct.gcov_node*, %struct.gcov_info*, i8*)* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gcov_node* @new_node(%struct.gcov_node* %0, %struct.gcov_info* %1, i8* %2) #0 {
  %4 = alloca %struct.gcov_node*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %5, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = add i64 24, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @M_GCOV, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 %14, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.gcov_node*
  store %struct.gcov_node* %20, %struct.gcov_node** %8, align 8
  %21 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %22 = icmp ne %struct.gcov_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %101

24:                                               ; preds = %3
  %25 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %26 = icmp ne %struct.gcov_info* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* @M_GCOV, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @malloc(i32 8, i32 %28, i32 %31)
  %33 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %34 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %36 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %101

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %43 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %46 = call i32 @init_node(%struct.gcov_node* %42, %struct.gcov_info* %43, i8* %44, %struct.gcov_node* %45)
  %47 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %48 = icmp ne %struct.gcov_info* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %51 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @deskew(i32 %52)
  %54 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %55 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %58 = call i32 @debugfs_create_file(i32 %53, i32 384, i32 %56, %struct.gcov_node* %57, i32* @gcov_data_fops)
  %59 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %60 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %71

61:                                               ; preds = %41
  %62 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %63 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %66 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @debugfs_create_dir(i32 %64, i32 %67)
  %69 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %70 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %49
  %72 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %73 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @LOG_WARNING, align 4
  %78 = call i32 @log(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %80 = load i32, i32* @M_GCOV, align 4
  %81 = call i32 @free(%struct.gcov_node* %79, i32 %80)
  store %struct.gcov_node* null, %struct.gcov_node** %4, align 8
  br label %107

82:                                               ; preds = %71
  %83 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %84 = icmp ne %struct.gcov_info* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %87 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %88 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @add_links(%struct.gcov_node* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %93 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %92, i32 0, i32 0
  %94 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %95 = load i32, i32* @children_entry, align 4
  %96 = call i32 @LIST_INSERT_HEAD(i32* %93, %struct.gcov_node* %94, i32 %95)
  %97 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %98 = load i32, i32* @all_entry, align 4
  %99 = call i32 @LIST_INSERT_HEAD(i32* @all_head, %struct.gcov_node* %97, i32 %98)
  %100 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  store %struct.gcov_node* %100, %struct.gcov_node** %4, align 8
  br label %107

101:                                              ; preds = %39, %23
  %102 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %103 = load i32, i32* @M_GCOV, align 4
  %104 = call i32 @free(%struct.gcov_node* %102, i32 %103)
  %105 = load i32, i32* @LOG_WARNING, align 4
  %106 = call i32 @log(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.gcov_node* null, %struct.gcov_node** %4, align 8
  br label %107

107:                                              ; preds = %101, %91, %76
  %108 = load %struct.gcov_node*, %struct.gcov_node** %4, align 8
  ret %struct.gcov_node* %108
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @init_node(%struct.gcov_node*, %struct.gcov_info*, i8*, %struct.gcov_node*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.gcov_node*, i32*) #1

declare dso_local i32 @deskew(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @free(%struct.gcov_node*, i32) #1

declare dso_local i32 @add_links(%struct.gcov_node*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gcov_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
