; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_compare_blame_suspect.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_compare_blame_suspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_blame_suspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_blame_suspect(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.blame_entry*
  store %struct.blame_entry* %9, %struct.blame_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.blame_entry*
  store %struct.blame_entry* %11, %struct.blame_entry** %7, align 8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %21 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %24 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 -1
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %31 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %34 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %40 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %43 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 -1
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %37, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
