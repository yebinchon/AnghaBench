; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.resource_allocator* }
%struct.resource_allocator = type { i32*, i32*, i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, i32, i32, i32)* @mlx4_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_release_resource(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_priv*, align 8
  %12 = alloca %struct.resource_allocator*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %16)
  store %struct.mlx4_priv* %17, %struct.mlx4_priv** %11, align 8
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %11, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.resource_allocator*, %struct.resource_allocator** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %23, i64 %25
  store %struct.resource_allocator* %26, %struct.resource_allocator** %12, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %163

35:                                               ; preds = %5
  %36 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %37 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %36, i32 0, i32 6
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %43 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %46, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %44, i64 %56
  %58 = load i32, i32* %57, align 4
  br label %67

59:                                               ; preds = %35
  %60 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %61 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %59, %41
  %68 = phi i32 [ %58, %41 ], [ %66, %59 ]
  store i32 %68, i32* %13, align 4
  %69 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %70 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %96

82:                                               ; preds = %67
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %83, %84
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sub nsw i32 %88, %91
  store i32 %92, i32* %15, align 4
  br label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %87
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %102 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %107 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 %105, %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %103, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, %100
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %121 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %119
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %131 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %129
  store i32 %138, i32* %136, align 4
  br label %159

139:                                              ; preds = %96
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %142 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, %140
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %151 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %156 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %139, %99
  %160 = load %struct.resource_allocator*, %struct.resource_allocator** %12, align 8
  %161 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %160, i32 0, i32 6
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %34
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
