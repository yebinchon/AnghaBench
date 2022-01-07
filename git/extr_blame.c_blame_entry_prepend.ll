; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_entry_prepend.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_entry_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i64, i64, i64, %struct.blame_entry*, %struct.blame_origin* }
%struct.blame_origin = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blame_entry* @blame_entry_prepend(%struct.blame_entry* %0, i64 %1, i64 %2, %struct.blame_origin* %3) #0 {
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.blame_origin* %3, %struct.blame_origin** %8, align 8
  %10 = call %struct.blame_entry* @xcalloc(i32 1, i32 40)
  store %struct.blame_entry* %10, %struct.blame_entry** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %20 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %21 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %20, i32 0, i32 4
  store %struct.blame_origin* %19, %struct.blame_origin** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %24 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %26 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %27 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %26, i32 0, i32 3
  store %struct.blame_entry* %25, %struct.blame_entry** %27, align 8
  %28 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %29 = call i32 @blame_origin_incref(%struct.blame_origin* %28)
  %30 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  ret %struct.blame_entry* %30
}

declare dso_local %struct.blame_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @blame_origin_incref(%struct.blame_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
