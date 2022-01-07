; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cmap.c_cmap_splay.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cmap.c_cmap_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmapnode = type { i64, %struct.cmapnode*, %struct.cmapnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmapnode* (%struct.cmapnode*, i64)* @cmap_splay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmapnode* @cmap_splay(%struct.cmapnode* %0, i64 %1) #0 {
  %3 = alloca %struct.cmapnode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cmapnode, align 8
  %6 = alloca %struct.cmapnode*, align 8
  %7 = alloca %struct.cmapnode*, align 8
  %8 = alloca %struct.cmapnode*, align 8
  store %struct.cmapnode* %0, %struct.cmapnode** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %10 = icmp ne %struct.cmapnode* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %5, i32 0, i32 2
  store %struct.cmapnode* null, %struct.cmapnode** %13, align 8
  %14 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %5, i32 0, i32 1
  store %struct.cmapnode* null, %struct.cmapnode** %14, align 8
  store %struct.cmapnode* %5, %struct.cmapnode** %7, align 8
  store %struct.cmapnode* %5, %struct.cmapnode** %6, align 8
  br label %15

15:                                               ; preds = %109, %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %18 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %23 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %22, i32 0, i32 1
  %24 = load %struct.cmapnode*, %struct.cmapnode** %23, align 8
  %25 = icmp ne %struct.cmapnode* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %29 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %28, i32 0, i32 1
  %30 = load %struct.cmapnode*, %struct.cmapnode** %29, align 8
  %31 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %36 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %35, i32 0, i32 1
  %37 = load %struct.cmapnode*, %struct.cmapnode** %36, align 8
  store %struct.cmapnode* %37, %struct.cmapnode** %8, align 8
  %38 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  %39 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %38, i32 0, i32 2
  %40 = load %struct.cmapnode*, %struct.cmapnode** %39, align 8
  %41 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %42 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %41, i32 0, i32 1
  store %struct.cmapnode* %40, %struct.cmapnode** %42, align 8
  %43 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %44 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  %45 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %44, i32 0, i32 2
  store %struct.cmapnode* %43, %struct.cmapnode** %45, align 8
  %46 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  store %struct.cmapnode* %46, %struct.cmapnode** %3, align 8
  br label %47

47:                                               ; preds = %34, %26, %21
  %48 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %49 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %48, i32 0, i32 1
  %50 = load %struct.cmapnode*, %struct.cmapnode** %49, align 8
  %51 = icmp eq %struct.cmapnode* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %110

53:                                               ; preds = %47
  %54 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %55 = load %struct.cmapnode*, %struct.cmapnode** %7, align 8
  %56 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %55, i32 0, i32 1
  store %struct.cmapnode* %54, %struct.cmapnode** %56, align 8
  %57 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  store %struct.cmapnode* %57, %struct.cmapnode** %7, align 8
  %58 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %59 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %58, i32 0, i32 1
  %60 = load %struct.cmapnode*, %struct.cmapnode** %59, align 8
  store %struct.cmapnode* %60, %struct.cmapnode** %3, align 8
  br label %109

61:                                               ; preds = %15
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %64 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %61
  %68 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %69 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %68, i32 0, i32 2
  %70 = load %struct.cmapnode*, %struct.cmapnode** %69, align 8
  %71 = icmp ne %struct.cmapnode* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %75 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %74, i32 0, i32 2
  %76 = load %struct.cmapnode*, %struct.cmapnode** %75, align 8
  %77 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %73, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %82 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %81, i32 0, i32 2
  %83 = load %struct.cmapnode*, %struct.cmapnode** %82, align 8
  store %struct.cmapnode* %83, %struct.cmapnode** %8, align 8
  %84 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  %85 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %84, i32 0, i32 1
  %86 = load %struct.cmapnode*, %struct.cmapnode** %85, align 8
  %87 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %88 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %87, i32 0, i32 2
  store %struct.cmapnode* %86, %struct.cmapnode** %88, align 8
  %89 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %90 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  %91 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %90, i32 0, i32 1
  store %struct.cmapnode* %89, %struct.cmapnode** %91, align 8
  %92 = load %struct.cmapnode*, %struct.cmapnode** %8, align 8
  store %struct.cmapnode* %92, %struct.cmapnode** %3, align 8
  br label %93

93:                                               ; preds = %80, %72, %67
  %94 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %95 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %94, i32 0, i32 2
  %96 = load %struct.cmapnode*, %struct.cmapnode** %95, align 8
  %97 = icmp eq %struct.cmapnode* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %110

99:                                               ; preds = %93
  %100 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %101 = load %struct.cmapnode*, %struct.cmapnode** %6, align 8
  %102 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %101, i32 0, i32 2
  store %struct.cmapnode* %100, %struct.cmapnode** %102, align 8
  %103 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  store %struct.cmapnode* %103, %struct.cmapnode** %6, align 8
  %104 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %105 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %104, i32 0, i32 2
  %106 = load %struct.cmapnode*, %struct.cmapnode** %105, align 8
  store %struct.cmapnode* %106, %struct.cmapnode** %3, align 8
  br label %108

107:                                              ; preds = %61
  br label %110

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %53
  br label %15

110:                                              ; preds = %107, %98, %52
  %111 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %112 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %111, i32 0, i32 1
  %113 = load %struct.cmapnode*, %struct.cmapnode** %112, align 8
  %114 = load %struct.cmapnode*, %struct.cmapnode** %6, align 8
  %115 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %114, i32 0, i32 2
  store %struct.cmapnode* %113, %struct.cmapnode** %115, align 8
  %116 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %117 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %116, i32 0, i32 2
  %118 = load %struct.cmapnode*, %struct.cmapnode** %117, align 8
  %119 = load %struct.cmapnode*, %struct.cmapnode** %7, align 8
  %120 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %119, i32 0, i32 1
  store %struct.cmapnode* %118, %struct.cmapnode** %120, align 8
  %121 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %5, i32 0, i32 2
  %122 = load %struct.cmapnode*, %struct.cmapnode** %121, align 8
  %123 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %124 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %123, i32 0, i32 1
  store %struct.cmapnode* %122, %struct.cmapnode** %124, align 8
  %125 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %5, i32 0, i32 1
  %126 = load %struct.cmapnode*, %struct.cmapnode** %125, align 8
  %127 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  %128 = getelementptr inbounds %struct.cmapnode, %struct.cmapnode* %127, i32 0, i32 2
  store %struct.cmapnode* %126, %struct.cmapnode** %128, align 8
  %129 = load %struct.cmapnode*, %struct.cmapnode** %3, align 8
  ret %struct.cmapnode* %129
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
