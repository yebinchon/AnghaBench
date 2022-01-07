; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i64, i32, i32, i64 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }
%struct.image = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"removal patch leaves file contents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*, %struct.stat*, %struct.cache_entry*)* @apply_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_data(%struct.apply_state* %0, %struct.patch* %1, %struct.stat* %2, %struct.cache_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.image, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store %struct.patch* %1, %struct.patch** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store %struct.cache_entry* %3, %struct.cache_entry** %9, align 8
  %11 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %12 = load %struct.patch*, %struct.patch** %7, align 8
  %13 = load %struct.stat*, %struct.stat** %8, align 8
  %14 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %15 = call i64 @load_preimage(%struct.apply_state* %11, %struct.image* %10, %struct.patch* %12, %struct.stat* %13, %struct.cache_entry* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %70

18:                                               ; preds = %4
  %19 = load %struct.patch*, %struct.patch** %7, align 8
  %20 = getelementptr inbounds %struct.patch, %struct.patch* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %25 = load %struct.patch*, %struct.patch** %7, align 8
  %26 = call i64 @apply_fragments(%struct.apply_state* %24, %struct.image* %10, %struct.patch* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23, %18
  %29 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %30 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %35 = load %struct.patch*, %struct.patch** %7, align 8
  %36 = load %struct.stat*, %struct.stat** %8, align 8
  %37 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %38 = call i64 @try_threeway(%struct.apply_state* %34, %struct.image* %10, %struct.patch* %35, %struct.stat* %36, %struct.cache_entry* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %28
  store i32 -1, i32* %5, align 4
  br label %70

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %23
  %43 = getelementptr inbounds %struct.image, %struct.image* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.patch*, %struct.patch** %7, align 8
  %46 = getelementptr inbounds %struct.patch, %struct.patch* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.image, %struct.image* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.patch*, %struct.patch** %7, align 8
  %50 = getelementptr inbounds %struct.patch, %struct.patch* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %52 = load %struct.patch*, %struct.patch** %7, align 8
  %53 = call i32 @add_to_fn_table(%struct.apply_state* %51, %struct.patch* %52)
  %54 = getelementptr inbounds %struct.image, %struct.image* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @free(i32 %55)
  %57 = load %struct.patch*, %struct.patch** %7, align 8
  %58 = getelementptr inbounds %struct.patch, %struct.patch* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 0, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %42
  %62 = load %struct.patch*, %struct.patch** %7, align 8
  %63 = getelementptr inbounds %struct.patch, %struct.patch* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @error(i32 %67)
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %61, %42
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %66, %40, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @load_preimage(%struct.apply_state*, %struct.image*, %struct.patch*, %struct.stat*, %struct.cache_entry*) #1

declare dso_local i64 @apply_fragments(%struct.apply_state*, %struct.image*, %struct.patch*) #1

declare dso_local i64 @try_threeway(%struct.apply_state*, %struct.image*, %struct.patch*, %struct.stat*, %struct.cache_entry*) #1

declare dso_local i32 @add_to_fn_table(%struct.apply_state*, %struct.patch*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
