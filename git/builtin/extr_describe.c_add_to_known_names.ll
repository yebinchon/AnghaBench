; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_add_to_known_names.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_add_to_known_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit_name = type { i32, i32*, i32, i64, %struct.tag*, i32, i32 }
%struct.tag = type { i32 }

@names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.object_id*, i32, %struct.object_id*)* @add_to_known_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_known_names(i8* %0, %struct.object_id* %1, i32 %2, %struct.object_id* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.commit_name*, align 8
  %10 = alloca %struct.tag*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.object_id* %3, %struct.object_id** %8, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call %struct.commit_name* @find_commit_name(%struct.object_id* %11)
  store %struct.commit_name* %12, %struct.commit_name** %9, align 8
  store %struct.tag* null, %struct.tag** %10, align 8
  %13 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.object_id*, %struct.object_id** %8, align 8
  %16 = call i64 @replace_name(%struct.commit_name* %13, i32 %14, %struct.object_id* %15, %struct.tag** %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %20 = icmp ne %struct.commit_name* %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = call %struct.commit_name* @xmalloc(i32 48)
  store %struct.commit_name* %22, %struct.commit_name** %9, align 8
  %23 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %24 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %23, i32 0, i32 6
  %25 = load %struct.object_id*, %struct.object_id** %6, align 8
  %26 = call i32 @oidcpy(i32* %24, %struct.object_id* %25)
  %27 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %28 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %27, i32 0, i32 5
  %29 = load %struct.object_id*, %struct.object_id** %6, align 8
  %30 = call i32 @oidhash(%struct.object_id* %29)
  %31 = call i32 @hashmap_entry_init(i32* %28, i32 %30)
  %32 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %33 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %32, i32 0, i32 5
  %34 = call i32 @hashmap_add(i32* @names, i32* %33)
  %35 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %36 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %21, %18
  %38 = load %struct.tag*, %struct.tag** %10, align 8
  %39 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %40 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %39, i32 0, i32 4
  store %struct.tag* %38, %struct.tag** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %43 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %45 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %47 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %46, i32 0, i32 2
  %48 = load %struct.object_id*, %struct.object_id** %8, align 8
  %49 = call i32 @oidcpy(i32* %47, %struct.object_id* %48)
  %50 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %51 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @xstrdup(i8* %54)
  %56 = load %struct.commit_name*, %struct.commit_name** %9, align 8
  %57 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %37, %4
  ret void
}

declare dso_local %struct.commit_name* @find_commit_name(%struct.object_id*) #1

declare dso_local i64 @replace_name(%struct.commit_name*, i32, %struct.object_id*, %struct.tag**) #1

declare dso_local %struct.commit_name* @xmalloc(i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @oidhash(%struct.object_id*) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
