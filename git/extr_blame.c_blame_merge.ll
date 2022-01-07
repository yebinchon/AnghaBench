; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i64, %struct.blame_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_entry* (%struct.blame_entry*, %struct.blame_entry*)* @blame_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_entry* @blame_merge(%struct.blame_entry* %0, %struct.blame_entry* %1) #0 {
  %3 = alloca %struct.blame_entry*, align 8
  %4 = alloca %struct.blame_entry*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_entry**, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %5, align 8
  %9 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %9, %struct.blame_entry** %6, align 8
  %10 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  store %struct.blame_entry* %10, %struct.blame_entry** %7, align 8
  store %struct.blame_entry** %4, %struct.blame_entry*** %8, align 8
  %11 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %12 = icmp ne %struct.blame_entry* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  store %struct.blame_entry* %14, %struct.blame_entry** %3, align 8
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %17 = icmp ne %struct.blame_entry* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  store %struct.blame_entry* %19, %struct.blame_entry** %3, align 8
  br label %95

20:                                               ; preds = %15
  %21 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %22 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %25 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %40, %28
  %30 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %31 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %30, i32 0, i32 1
  store %struct.blame_entry** %31, %struct.blame_entry*** %8, align 8
  %32 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  %33 = load %struct.blame_entry*, %struct.blame_entry** %32, align 8
  store %struct.blame_entry* %33, %struct.blame_entry** %6, align 8
  %34 = icmp eq %struct.blame_entry* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %37 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %36, %struct.blame_entry** %37, align 8
  %38 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %38, %struct.blame_entry** %3, align 8
  br label %95

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %42 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %45 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %43, %46
  br i1 %47, label %29, label %48

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %20
  br label %50

50:                                               ; preds = %94, %49
  %51 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %52 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %51, %struct.blame_entry** %52, align 8
  br label %53

53:                                               ; preds = %64, %50
  %54 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %55 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %54, i32 0, i32 1
  store %struct.blame_entry** %55, %struct.blame_entry*** %8, align 8
  %56 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  %57 = load %struct.blame_entry*, %struct.blame_entry** %56, align 8
  store %struct.blame_entry* %57, %struct.blame_entry** %7, align 8
  %58 = icmp eq %struct.blame_entry* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %61 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %60, %struct.blame_entry** %61, align 8
  %62 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %62, %struct.blame_entry** %3, align 8
  br label %95

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %66 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %69 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %53, label %72

72:                                               ; preds = %64
  %73 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %74 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %73, %struct.blame_entry** %74, align 8
  br label %75

75:                                               ; preds = %86, %72
  %76 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %77 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %76, i32 0, i32 1
  store %struct.blame_entry** %77, %struct.blame_entry*** %8, align 8
  %78 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  %79 = load %struct.blame_entry*, %struct.blame_entry** %78, align 8
  store %struct.blame_entry* %79, %struct.blame_entry** %6, align 8
  %80 = icmp eq %struct.blame_entry* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %83 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  store %struct.blame_entry* %82, %struct.blame_entry** %83, align 8
  %84 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %84, %struct.blame_entry** %3, align 8
  br label %95

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %88 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %91 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %75, label %94

94:                                               ; preds = %86
  br label %50

95:                                               ; preds = %81, %59, %35, %18, %13
  %96 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  ret %struct.blame_entry* %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
