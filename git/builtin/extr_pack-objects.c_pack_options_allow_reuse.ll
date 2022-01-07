; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pack_options_allow_reuse.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pack_options_allow_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pack_to_stdout = common dso_local global i64 0, align 8
@allow_ofs_delta = common dso_local global i64 0, align 8
@ignore_packed_keep_on_disk = common dso_local global i32 0, align 4
@ignore_packed_keep_in_core = common dso_local global i32 0, align 4
@local = common dso_local global i32 0, align 4
@have_non_local_packs = common dso_local global i32 0, align 4
@incremental = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pack_options_allow_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_options_allow_reuse() #0 {
  %1 = load i64, i64* @pack_to_stdout, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = load i64, i64* @allow_ofs_delta, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i32, i32* @ignore_packed_keep_on_disk, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @ignore_packed_keep_in_core, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @local, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @have_non_local_packs, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @incremental, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %15, %9, %6, %3, %0
  %23 = phi i1 [ false, %15 ], [ false, %9 ], [ false, %6 ], [ false, %3 ], [ false, %0 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
