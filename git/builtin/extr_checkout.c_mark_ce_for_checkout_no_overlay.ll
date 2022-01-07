; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_mark_ce_for_checkout_no_overlay.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_mark_ce_for_checkout_no_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.checkout_opts = type { i64, i32, i32 }

@CE_MATCHED = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, i8*, %struct.checkout_opts*)* @mark_ce_for_checkout_no_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ce_for_checkout_no_overlay(%struct.cache_entry* %0, i8* %1, %struct.checkout_opts* %2) #0 {
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.checkout_opts*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.checkout_opts* %2, %struct.checkout_opts** %6, align 8
  %7 = load i32, i32* @CE_MATCHED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %10 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %14 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %19 = call i64 @ce_skip_worktree(%struct.cache_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %55

22:                                               ; preds = %17, %3
  %23 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %24 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %25 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %24, i32 0, i32 1
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @ce_path_match(i32* @the_index, %struct.cache_entry* %23, i32* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load i32, i32* @CE_MATCHED, align 4
  %31 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %36 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29
  %40 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CE_UPDATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @CE_REMOVE, align 4
  %48 = load i32, i32* @CE_WT_REMOVE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %39, %29
  br label %55

55:                                               ; preds = %21, %54, %22
  ret void
}

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @ce_path_match(i32*, %struct.cache_entry*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
