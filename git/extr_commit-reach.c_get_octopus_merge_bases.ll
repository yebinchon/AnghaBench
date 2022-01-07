; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_get_octopus_merge_bases.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_get_octopus_merge_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @get_octopus_merge_bases(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.commit_list* null, %struct.commit_list** %7, align 8
  %11 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %12 = icmp ne %struct.commit_list* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %14, %struct.commit_list** %2, align 8
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @commit_list_insert(i32 %18, %struct.commit_list** %7)
  %20 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %21 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %20, i32 0, i32 0
  %22 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  store %struct.commit_list* %22, %struct.commit_list** %4, align 8
  br label %23

23:                                               ; preds = %65, %15
  %24 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %25 = icmp ne %struct.commit_list* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  store %struct.commit_list* null, %struct.commit_list** %8, align 8
  store %struct.commit_list* null, %struct.commit_list** %9, align 8
  %27 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %27, %struct.commit_list** %5, align 8
  br label %28

28:                                               ; preds = %59, %26
  %29 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %30 = icmp ne %struct.commit_list* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %36 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.commit_list* @get_merge_bases(i32 %34, i32 %37)
  store %struct.commit_list* %38, %struct.commit_list** %10, align 8
  %39 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %40 = icmp ne %struct.commit_list* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %42, %struct.commit_list** %8, align 8
  br label %47

43:                                               ; preds = %31
  %44 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %45 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %46 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %45, i32 0, i32 0
  store %struct.commit_list* %44, %struct.commit_list** %46, align 8
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %48, %struct.commit_list** %6, align 8
  br label %49

49:                                               ; preds = %54, %47
  %50 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %51 = icmp ne %struct.commit_list* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %53, %struct.commit_list** %9, align 8
  br label %54

54:                                               ; preds = %52
  %55 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 0
  %57 = load %struct.commit_list*, %struct.commit_list** %56, align 8
  store %struct.commit_list* %57, %struct.commit_list** %6, align 8
  br label %49

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %61 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %60, i32 0, i32 0
  %62 = load %struct.commit_list*, %struct.commit_list** %61, align 8
  store %struct.commit_list* %62, %struct.commit_list** %5, align 8
  br label %28

63:                                               ; preds = %28
  %64 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  store %struct.commit_list* %64, %struct.commit_list** %7, align 8
  br label %65

65:                                               ; preds = %63
  %66 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 0
  %68 = load %struct.commit_list*, %struct.commit_list** %67, align 8
  store %struct.commit_list* %68, %struct.commit_list** %4, align 8
  br label %23

69:                                               ; preds = %23
  %70 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %70, %struct.commit_list** %2, align 8
  br label %71

71:                                               ; preds = %69, %13
  %72 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  ret %struct.commit_list* %72
}

declare dso_local i32 @commit_list_insert(i32, %struct.commit_list**) #1

declare dso_local %struct.commit_list* @get_merge_bases(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
