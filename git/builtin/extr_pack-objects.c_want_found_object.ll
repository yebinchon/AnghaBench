; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_want_found_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_want_found_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i64, i64 }

@incremental = common dso_local global i64 0, align 8
@ignore_packed_keep_on_disk = common dso_local global i64 0, align 8
@ignore_packed_keep_in_core = common dso_local global i64 0, align 8
@local = common dso_local global i64 0, align 8
@have_non_local_packs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.packed_git*)* @want_found_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_found_object(i32 %0, %struct.packed_git* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.packed_git*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

9:                                                ; preds = %2
  %10 = load i64, i64* @incremental, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %9
  %14 = load i64, i64* @ignore_packed_keep_on_disk, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @ignore_packed_keep_in_core, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @local, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @have_non_local_packs, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19
  store i32 1, i32* %3, align 4
  br label %58

26:                                               ; preds = %22, %16, %13
  %27 = load i64, i64* @local, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %31 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %58

35:                                               ; preds = %29, %26
  %36 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %37 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i64, i64* @ignore_packed_keep_on_disk, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %45 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43, %40
  %49 = load i64, i64* @ignore_packed_keep_in_core, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %53 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %43
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %51, %48, %35
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %34, %25, %12, %8
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
