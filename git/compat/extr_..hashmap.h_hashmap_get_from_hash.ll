; ModuleID = '/home/carl/AnghaBench/git/compat/extr_..hashmap.h_hashmap_get_from_hash.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_..hashmap.h_hashmap_get_from_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap_entry = type { i32 }
%struct.hashmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hashmap_entry* (%struct.hashmap*, i32, i8*)* @hashmap_get_from_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashmap_entry* @hashmap_get_from_hash(%struct.hashmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hashmap_entry, align 4
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @hashmap_entry_init(%struct.hashmap_entry* %7, i32 %8)
  %10 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.hashmap_entry* @hashmap_get(%struct.hashmap* %10, %struct.hashmap_entry* %7, i8* %11)
  ret %struct.hashmap_entry* %12
}

declare dso_local i32 @hashmap_entry_init(%struct.hashmap_entry*, i32) #1

declare dso_local %struct.hashmap_entry* @hashmap_get(%struct.hashmap*, %struct.hashmap_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
