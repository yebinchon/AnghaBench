; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_split_blame_at.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_split_blame_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i32, i64, i64, i64, i32, i32, %struct.blame_origin* }
%struct.blame_origin = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_entry* (%struct.blame_entry*, i32, %struct.blame_origin*)* @split_blame_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_entry* @split_blame_at(%struct.blame_entry* %0, i32 %1, %struct.blame_origin* %2) #0 {
  %4 = alloca %struct.blame_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blame_origin*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.blame_origin* %2, %struct.blame_origin** %6, align 8
  %8 = call %struct.blame_entry* @xcalloc(i32 1, i32 48)
  store %struct.blame_entry* %8, %struct.blame_entry** %7, align 8
  %9 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %10 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 6
  store %struct.blame_origin* %9, %struct.blame_origin** %11, align 8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %21 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %23 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %29 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %31 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %37 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %39 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %44 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %47 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %49 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  ret %struct.blame_entry* %50
}

declare dso_local %struct.blame_entry* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
