; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_extra_kept_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_extra_kept_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32, i32, i32, %struct.packed_git* }

@the_repository = common dso_local global i32 0, align 4
@ignore_packed_keep_in_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @add_extra_kept_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_extra_kept_packs(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %6 = load %struct.string_list*, %struct.string_list** %2, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* @the_repository, align 4
  %13 = call %struct.packed_git* @get_all_packs(i32 %12)
  store %struct.packed_git* %13, %struct.packed_git** %3, align 8
  br label %14

14:                                               ; preds = %61, %11
  %15 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %16 = icmp ne %struct.packed_git* %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @basename(i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %23 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %61

27:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.string_list*, %struct.string_list** %2, align 8
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.string_list*, %struct.string_list** %2, align 8
  %37 = getelementptr inbounds %struct.string_list, %struct.string_list* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fspathcmp(i8* %35, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %28

51:                                               ; preds = %46, %28
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.string_list*, %struct.string_list** %2, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %59 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  store i32 1, i32* @ignore_packed_keep_in_core, align 4
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %57, %26
  %62 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %63 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %62, i32 0, i32 3
  %64 = load %struct.packed_git*, %struct.packed_git** %63, align 8
  store %struct.packed_git* %64, %struct.packed_git** %3, align 8
  br label %14

65:                                               ; preds = %10, %14
  ret void
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i8* @basename(i32) #1

declare dso_local i32 @fspathcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
