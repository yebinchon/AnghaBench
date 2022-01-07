; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_mem.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.anonymized_entry = type { i64, i8*, i64, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }

@anonymized_entry_cmp = common dso_local global i32 0, align 4
@hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hashmap*, i8* (i8*, i64*)*, i8*, i64*)* @anonymize_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @anonymize_mem(%struct.hashmap* %0, i8* (i8*, i64*)* %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca i8* (i8*, i64*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.anonymized_entry, align 8
  %10 = alloca %struct.anonymized_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %5, align 8
  store i8* (i8*, i64*)* %1, i8* (i8*, i64*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %12 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %17 = load i32, i32* @anonymized_entry_cmp, align 4
  %18 = call i32 @hashmap_init(%struct.hashmap* %16, i32 %17, i32* null, i32 0)
  br label %19

19:                                               ; preds = %15, %4
  %20 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %9, i32 0, i32 3
  %21 = load i8*, i8** %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memhash(i8* %21, i64 %23)
  %25 = call i32 @hashmap_entry_init(%struct.TYPE_3__* %20, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %9, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %9, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %32 = load i32, i32* @hash, align 4
  %33 = call %struct.anonymized_entry* @hashmap_get_entry(%struct.hashmap* %31, %struct.anonymized_entry* %9, i32 %32, i32* null)
  store %struct.anonymized_entry* %33, %struct.anonymized_entry** %10, align 8
  %34 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %35 = icmp ne %struct.anonymized_entry* %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %19
  %37 = call %struct.anonymized_entry* @xmalloc(i32 40)
  store %struct.anonymized_entry* %37, %struct.anonymized_entry** %10, align 8
  %38 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %39 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %9, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @hashmap_entry_init(%struct.TYPE_3__* %39, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @xstrdup(i8* %44)
  %46 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %47 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %51 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8* (i8*, i64*)*, i8* (i8*, i64*)** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = call i8* %52(i8* %53, i64* %54)
  %56 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %57 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %61 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %63 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %64 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %63, i32 0, i32 3
  %65 = call i32 @hashmap_put(%struct.hashmap* %62, %struct.TYPE_3__* %64)
  br label %66

66:                                               ; preds = %36, %19
  %67 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %68 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.anonymized_entry*, %struct.anonymized_entry** %10, align 8
  %72 = getelementptr inbounds %struct.anonymized_entry, %struct.anonymized_entry* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  ret i8* %73
}

declare dso_local i32 @hashmap_init(%struct.hashmap*, i32, i32*, i32) #1

declare dso_local i32 @hashmap_entry_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @memhash(i8*, i64) #1

declare dso_local %struct.anonymized_entry* @hashmap_get_entry(%struct.hashmap*, %struct.anonymized_entry*, i32, i32*) #1

declare dso_local %struct.anonymized_entry* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @hashmap_put(%struct.hashmap*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
