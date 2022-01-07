; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_attr_hashmap_add.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_attr_hashmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_hashmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.attr_hash_entry = type { i8*, i64, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_hashmap*, i8*, i64, i8*)* @attr_hashmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attr_hashmap_add(%struct.attr_hashmap* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.attr_hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.attr_hash_entry*, align 8
  store %struct.attr_hashmap* %0, %struct.attr_hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.attr_hashmap*, %struct.attr_hashmap** %5, align 8
  %11 = getelementptr inbounds %struct.attr_hashmap, %struct.attr_hashmap* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.attr_hashmap*, %struct.attr_hashmap** %5, align 8
  %17 = call i32 @attr_hashmap_init(%struct.attr_hashmap* %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = call %struct.attr_hash_entry* @xmalloc(i32 32)
  store %struct.attr_hash_entry* %19, %struct.attr_hash_entry** %9, align 8
  %20 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %9, align 8
  %21 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %20, i32 0, i32 2
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memhash(i8* %22, i64 %23)
  %25 = call i32 @hashmap_entry_init(i32* %21, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %9, align 8
  %28 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %9, align 8
  %31 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %9, align 8
  %34 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.attr_hashmap*, %struct.attr_hashmap** %5, align 8
  %36 = getelementptr inbounds %struct.attr_hashmap, %struct.attr_hashmap* %35, i32 0, i32 0
  %37 = load %struct.attr_hash_entry*, %struct.attr_hash_entry** %9, align 8
  %38 = getelementptr inbounds %struct.attr_hash_entry, %struct.attr_hash_entry* %37, i32 0, i32 2
  %39 = call i32 @hashmap_add(%struct.TYPE_2__* %36, i32* %38)
  ret void
}

declare dso_local i32 @attr_hashmap_init(%struct.attr_hashmap*) #1

declare dso_local %struct.attr_hash_entry* @xmalloc(i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @memhash(i8*, i64) #1

declare dso_local i32 @hashmap_add(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
