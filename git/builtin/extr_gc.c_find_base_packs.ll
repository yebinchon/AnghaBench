; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_find_base_packs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_find_base_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i32, i32, %struct.packed_git* }
%struct.string_list = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packed_git* (%struct.string_list*, i64)* @find_base_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packed_git* @find_base_packs(%struct.string_list* %0, i64 %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.packed_git*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.packed_git* null, %struct.packed_git** %6, align 8
  %7 = load i32, i32* @the_repository, align 4
  %8 = call %struct.packed_git* @get_all_packs(i32 %7)
  store %struct.packed_git* %8, %struct.packed_git** %5, align 8
  br label %9

9:                                                ; preds = %49, %2
  %10 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %11 = icmp ne %struct.packed_git* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %14 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %49

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %23 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.string_list*, %struct.string_list** %3, align 8
  %29 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @string_list_append(%struct.string_list* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %48

34:                                               ; preds = %18
  %35 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %36 = icmp ne %struct.packed_git* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %39 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %42 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %34
  %46 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  store %struct.packed_git* %46, %struct.packed_git** %6, align 8
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %51 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %50, i32 0, i32 3
  %52 = load %struct.packed_git*, %struct.packed_git** %51, align 8
  store %struct.packed_git* %52, %struct.packed_git** %5, align 8
  br label %9

53:                                               ; preds = %9
  %54 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %55 = icmp ne %struct.packed_git* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.string_list*, %struct.string_list** %3, align 8
  %58 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %59 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @string_list_append(%struct.string_list* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  ret %struct.packed_git* %63
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
