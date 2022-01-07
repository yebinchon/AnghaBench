; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_split_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_split_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry***, %struct.blame_entry***, %struct.blame_entry*, %struct.blame_entry*)* @split_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_blame(%struct.blame_entry*** %0, %struct.blame_entry*** %1, %struct.blame_entry* %2, %struct.blame_entry* %3) #0 {
  %5 = alloca %struct.blame_entry***, align 8
  %6 = alloca %struct.blame_entry***, align 8
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry*** %0, %struct.blame_entry**** %5, align 8
  store %struct.blame_entry*** %1, %struct.blame_entry**** %6, align 8
  store %struct.blame_entry* %2, %struct.blame_entry** %7, align 8
  store %struct.blame_entry* %3, %struct.blame_entry** %8, align 8
  %9 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %10 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %9, i64 0
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i64 2
  %17 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.blame_entry***, %struct.blame_entry**** %6, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %23 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %24 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %23, i64 0
  %25 = call i32 @dup_entry(%struct.blame_entry*** %21, %struct.blame_entry* %22, %struct.blame_entry* %24)
  %26 = load %struct.blame_entry***, %struct.blame_entry**** %6, align 8
  %27 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %28 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %27, i64 2
  %29 = call i32 @add_blame_entry(%struct.blame_entry*** %26, %struct.blame_entry* %28)
  %30 = load %struct.blame_entry***, %struct.blame_entry**** %5, align 8
  %31 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %32 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %31, i64 1
  %33 = call i32 @add_blame_entry(%struct.blame_entry*** %30, %struct.blame_entry* %32)
  br label %80

34:                                               ; preds = %14, %4
  %35 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %36 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %35, i64 0
  %37 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %42 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %41, i64 2
  %43 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.blame_entry***, %struct.blame_entry**** %5, align 8
  %48 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %49 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %50 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %49, i64 1
  %51 = call i32 @dup_entry(%struct.blame_entry*** %47, %struct.blame_entry* %48, %struct.blame_entry* %50)
  br label %79

52:                                               ; preds = %40, %34
  %53 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %54 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %53, i64 0
  %55 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.blame_entry***, %struct.blame_entry**** %6, align 8
  %60 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %61 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %62 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %61, i64 0
  %63 = call i32 @dup_entry(%struct.blame_entry*** %59, %struct.blame_entry* %60, %struct.blame_entry* %62)
  %64 = load %struct.blame_entry***, %struct.blame_entry**** %5, align 8
  %65 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %66 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %65, i64 1
  %67 = call i32 @add_blame_entry(%struct.blame_entry*** %64, %struct.blame_entry* %66)
  br label %78

68:                                               ; preds = %52
  %69 = load %struct.blame_entry***, %struct.blame_entry**** %5, align 8
  %70 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %71 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %72 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %71, i64 1
  %73 = call i32 @dup_entry(%struct.blame_entry*** %69, %struct.blame_entry* %70, %struct.blame_entry* %72)
  %74 = load %struct.blame_entry***, %struct.blame_entry**** %6, align 8
  %75 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %76 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %75, i64 2
  %77 = call i32 @add_blame_entry(%struct.blame_entry*** %74, %struct.blame_entry* %76)
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78, %46
  br label %80

80:                                               ; preds = %79, %20
  ret void
}

declare dso_local i32 @dup_entry(%struct.blame_entry***, %struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local i32 @add_blame_entry(%struct.blame_entry***, %struct.blame_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
