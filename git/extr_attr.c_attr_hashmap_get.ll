; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_attr_hashmap_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_attr_hashmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_hashmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.attr_hash_entry = type { i8*, i64, i8*, i32 }

@ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.attr_hashmap*, i8*, i64)* @attr_hashmap_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @attr_hashmap_get(%struct.attr_hashmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.attr_hashmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attr_hash_entry, align 8
  %8 = alloca %struct.attr_hash_entry*, align 8
  store %struct.attr_hashmap* %0, %struct.attr_hashmap** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.attr_hashmap*, %struct.attr_hashmap** %4, align 8
  %10 = getelementptr inbounds %struct.attr_hashmap, %struct.attr_hashmap* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.attr_hashmap*, %struct.attr_hashmap** %4, align 8
  %16 = call i32 @attr_hashmap_init(%struct.attr_hashmap* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %7, i32 0, i32 3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @memhash(i8* %19, i64 %20)
  %22 = call i32 @hashmap_entry_init(i32* %18, i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %7, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %7, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.attr_hashmap*, %struct.attr_hashmap** %4, align 8
  %28 = getelementptr inbounds %struct.attr_hashmap, %struct.attr_hashmap* %27, i32 0, i32 0
  %29 = load i32, i32* @ent, align 4
  %30 = call %struct.attr_hash_entry* @hashmap_get_entry(%struct.TYPE_2__* %28, %struct.attr_hash_entry* %7, i32 %29, i32* null)
  store %struct.attr_hash_entry* %30, %struct.attr_hash_entry** %8, align 8
  %31 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %8, align 8
  %32 = icmp ne %struct.attr_hash_entry* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ null, %37 ]
  ret i8* %39
}

declare dso_local i32 @attr_hashmap_init(%struct.attr_hashmap*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @memhash(i8*, i64) #1

declare dso_local %struct.attr_hash_entry* @hashmap_get_entry(%struct.TYPE_2__*, %struct.attr_hash_entry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
