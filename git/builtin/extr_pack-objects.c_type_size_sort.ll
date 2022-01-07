; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_type_size_sort.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_type_size_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@use_delta_islands = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @type_size_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_size_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca %struct.object_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.object_entry**
  %15 = load %struct.object_entry*, %struct.object_entry** %14, align 8
  store %struct.object_entry* %15, %struct.object_entry** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.object_entry**
  %18 = load %struct.object_entry*, %struct.object_entry** %17, align 8
  store %struct.object_entry* %18, %struct.object_entry** %7, align 8
  %19 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %20 = call i32 @oe_type(%struct.object_entry* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %22 = call i32 @oe_type(%struct.object_entry* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %24 = call i64 @SIZE(%struct.object_entry* %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %26 = call i64 @SIZE(%struct.object_entry* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %110

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %110

36:                                               ; preds = %31
  %37 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %38 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %41 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %110

45:                                               ; preds = %36
  %46 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %47 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %50 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %110

54:                                               ; preds = %45
  %55 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %56 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %59 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %110

63:                                               ; preds = %54
  %64 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %65 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %68 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %110

72:                                               ; preds = %63
  %73 = load i64, i64* @use_delta_islands, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %77 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %80 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @island_delta_cmp(i32* %78, i32* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %110

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %110

93:                                               ; preds = %88
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %110

98:                                               ; preds = %93
  %99 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %100 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %101 = icmp ult %struct.object_entry* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %108

103:                                              ; preds = %98
  %104 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %105 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %106 = icmp ugt %struct.object_entry* %104, %105
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %103, %102
  %109 = phi i32 [ -1, %102 ], [ %107, %103 ]
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %97, %92, %85, %71, %62, %53, %44, %35, %30
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @oe_type(%struct.object_entry*) #1

declare dso_local i64 @SIZE(%struct.object_entry*) #1

declare dso_local i32 @island_delta_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
