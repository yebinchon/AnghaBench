; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_git_attr_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_git_attr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.git_attr = type { i32, i32 }

@g_attr_hashmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.git_attr* (i8*, i32)* @git_attr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.git_attr* @git_attr_internal(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.git_attr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.git_attr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @attr_name_valid(i8* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.git_attr* null, %struct.git_attr** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = call i32 @hashmap_lock(%struct.TYPE_6__* @g_attr_hashmap)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.git_attr* @attr_hashmap_get(%struct.TYPE_6__* @g_attr_hashmap, i8* %14, i32 %15)
  store %struct.git_attr* %16, %struct.git_attr** %6, align 8
  %17 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %18 = icmp ne %struct.git_attr* %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %12
  %20 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FLEX_ALLOC_MEM(%struct.git_attr* %20, i8* %21, i8* %22, i32 %23)
  %25 = call i32 @hashmap_get_size(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_attr_hashmap, i32 0, i32 0))
  %26 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %27 = getelementptr inbounds %struct.git_attr, %struct.git_attr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %29 = getelementptr inbounds %struct.git_attr, %struct.git_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %33 = call i32 @attr_hashmap_add(%struct.TYPE_6__* @g_attr_hashmap, i32 %30, i32 %31, %struct.git_attr* %32)
  %34 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  %35 = getelementptr inbounds %struct.git_attr, %struct.git_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hashmap_get_size(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_attr_hashmap, i32 0, i32 0))
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %19, %12
  %43 = call i32 @hashmap_unlock(%struct.TYPE_6__* @g_attr_hashmap)
  %44 = load %struct.git_attr*, %struct.git_attr** %6, align 8
  store %struct.git_attr* %44, %struct.git_attr** %3, align 8
  br label %45

45:                                               ; preds = %42, %11
  %46 = load %struct.git_attr*, %struct.git_attr** %3, align 8
  ret %struct.git_attr* %46
}

declare dso_local i32 @attr_name_valid(i8*, i32) #1

declare dso_local i32 @hashmap_lock(%struct.TYPE_6__*) #1

declare dso_local %struct.git_attr* @attr_hashmap_get(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.git_attr*, i8*, i8*, i32) #1

declare dso_local i32 @hashmap_get_size(i32*) #1

declare dso_local i32 @attr_hashmap_add(%struct.TYPE_6__*, i32, i32, %struct.git_attr*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hashmap_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
