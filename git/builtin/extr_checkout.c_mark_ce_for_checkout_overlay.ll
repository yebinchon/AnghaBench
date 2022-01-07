; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_mark_ce_for_checkout_overlay.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_mark_ce_for_checkout_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.checkout_opts = type { i32, i64, i32 }

@CE_MATCHED = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, i8*, %struct.checkout_opts*)* @mark_ce_for_checkout_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ce_for_checkout_overlay(%struct.cache_entry* %0, i8* %1, %struct.checkout_opts* %2) #0 {
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
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %19 = call i64 @ce_skip_worktree(%struct.cache_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %48

22:                                               ; preds = %17, %3
  %23 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %24 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CE_UPDATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %48

35:                                               ; preds = %27, %22
  %36 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %37 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %38 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %37, i32 0, i32 0
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @ce_path_match(i32* @the_index, %struct.cache_entry* %36, i32* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @CE_MATCHED, align 4
  %44 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %21, %34, %42, %35
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
