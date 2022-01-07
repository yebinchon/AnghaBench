; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pack_offset_sort.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pack_offset_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pack_offset_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_offset_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca %struct.object_entry*, align 8
  %8 = alloca %struct.packed_git*, align 8
  %9 = alloca %struct.packed_git*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.object_entry**
  %12 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  store %struct.object_entry* %12, %struct.object_entry** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.object_entry**
  %15 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  store %struct.object_entry* %15, %struct.object_entry** %7, align 8
  %16 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %17 = call %struct.packed_git* @IN_PACK(%struct.object_entry* %16)
  store %struct.packed_git* %17, %struct.packed_git** %8, align 8
  %18 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %19 = call %struct.packed_git* @IN_PACK(%struct.object_entry* %18)
  store %struct.packed_git* %19, %struct.packed_git** %9, align 8
  %20 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %21 = icmp ne %struct.packed_git* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %24 = icmp ne %struct.packed_git* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %27 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %30 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @oidcmp(i32* %28, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %22, %2
  %34 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %35 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %36 = icmp ult %struct.packed_git* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %63

38:                                               ; preds = %33
  %39 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %40 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  %41 = icmp ugt %struct.packed_git* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %63

43:                                               ; preds = %38
  %44 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %48 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %61

52:                                               ; preds = %43
  %53 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %54 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %57 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %52, %51
  %62 = phi i32 [ -1, %51 ], [ %60, %52 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %42, %37, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.packed_git* @IN_PACK(%struct.object_entry*) #1

declare dso_local i32 @oidcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
