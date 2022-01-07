; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i64, i64, i64, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32, i32 (%struct.drm_mm_node*, i64, i64*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64)* @drm_mm_insert_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_mm_insert_helper(%struct.drm_mm_node* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_mm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %6, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 7
  %19 = load %struct.drm_mm*, %struct.drm_mm** %18, align 8
  store %struct.drm_mm* %19, %struct.drm_mm** %11, align 8
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %21 = call i64 @drm_mm_hole_node_start(%struct.drm_mm_node* %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %23 = call i64 @drm_mm_hole_node_end(%struct.drm_mm_node* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %5
  %36 = phi i1 [ true, %5 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %40 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %39, i32 0, i32 1
  %41 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %40, align 8
  %42 = icmp ne i32 (%struct.drm_mm_node*, i64, i64*, i64*)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %45 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %44, i32 0, i32 1
  %46 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %45, align 8
  %47 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 %46(%struct.drm_mm_node* %47, i64 %48, i64* %14, i64* %15)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = urem i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %16, align 4
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %61, %53
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %75 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %77 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %76, i32 0, i32 5
  %78 = call i32 @list_del(i32* %77)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %82 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %85 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %88 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %87, i32 0, i32 7
  store %struct.drm_mm* %86, %struct.drm_mm** %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %91 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %93 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %95 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %94, i32 0, i32 5
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %98 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %97, i32 0, i32 6
  %99 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %100 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %99, i32 0, i32 6
  %101 = call i32 @list_add(i32* %98, i32* %100)
  %102 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %103 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %106 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = load i64, i64* %15, align 8
  %110 = icmp ugt i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  %113 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %114 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %116 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %119 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = load i64, i64* %13, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %79
  %125 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %126 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %125, i32 0, i32 5
  %127 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %128 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %127, i32 0, i32 0
  %129 = call i32 @list_add(i32* %126, i32* %128)
  %130 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %131 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %124, %79
  ret void
}

declare dso_local i64 @drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i64 @drm_mm_hole_node_end(%struct.drm_mm_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
