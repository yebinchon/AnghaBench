; ModuleID = '/home/carl/AnghaBench/git/compat/win32/extr_....cache.h_ce_mode_from_stat.c'
source_filename = "/home/carl/AnghaBench/git/compat/win32/extr_....cache.h_ce_mode_from_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@has_symlinks = external dso_local global i32, align 4
@trust_executable_bit = external dso_local global i32, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, i32)* @ce_mode_from_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_mode_from_stat(%struct.cache_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @has_symlinks, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @S_ISREG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %14 = icmp ne %struct.cache_entry* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @S_ISLNK(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %15, %12, %8, %2
  %26 = load i32, i32* @trust_executable_bit, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @S_ISREG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %34 = icmp ne %struct.cache_entry* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISREG(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %35, %32
  %46 = call i32 @create_ce_mode(i32 438)
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %28, %25
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @create_ce_mode(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45, %41, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
