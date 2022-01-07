; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_too_many_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_too_many_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i32, %struct.packed_git* }

@gc_auto_pack_limit = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @too_many_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_packs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @gc_auto_pack_limit, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

7:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @the_repository, align 4
  %9 = call %struct.packed_git* @get_all_packs(i32 %8)
  store %struct.packed_git* %9, %struct.packed_git** %2, align 8
  br label %10

10:                                               ; preds = %28, %7
  %11 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %12 = icmp ne %struct.packed_git* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %24, %18
  %29 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 2
  %31 = load %struct.packed_git*, %struct.packed_git** %30, align 8
  store %struct.packed_git* %31, %struct.packed_git** %2, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* @gc_auto_pack_limit, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %6
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
