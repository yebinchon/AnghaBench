; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_collectbufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_collectbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster_save = type { i32, %struct.buf** }
%struct.vnode = type { i32, i32 }
%struct.buf = type { i64, i64, i32 }

@M_SEGMENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cluster_save* (%struct.vnode*, %struct.buf*, i32)* @cluster_collectbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cluster_save* @cluster_collectbufs(%struct.vnode* %0, %struct.buf* %1, i32 %2) #0 {
  %4 = alloca %struct.cluster_save*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cluster_save*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = add i64 %26, 16
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_SEGMENT, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.cluster_save* @malloc(i32 %28, i32 %29, i32 %30)
  store %struct.cluster_save* %31, %struct.cluster_save** %8, align 8
  %32 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %33 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %35 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %34, i64 1
  %36 = bitcast %struct.cluster_save* %35 to %struct.buf**
  %37 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %38 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %37, i32 0, i32 1
  store %struct.buf** %36, %struct.buf*** %38, align 8
  %39 = load %struct.vnode*, %struct.vnode** %5, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %102, %3
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %42
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.buf*, %struct.buf** %6, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NOCRED, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bread_gb(%struct.vnode* %47, i32 %48, i32 %51, i32 %52, i32 %53, %struct.buf** %9)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %64 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %63, i32 0, i32 1
  %65 = load %struct.buf**, %struct.buf*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.buf*, %struct.buf** %65, i64 %67
  %69 = load %struct.buf*, %struct.buf** %68, align 8
  %70 = call i32 @brelse(%struct.buf* %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %76 = load i32, i32* @M_SEGMENT, align 4
  %77 = call i32 @free(%struct.cluster_save* %75, i32 %76)
  store %struct.cluster_save* null, %struct.cluster_save** %4, align 8
  br label %136

78:                                               ; preds = %46
  %79 = load %struct.buf*, %struct.buf** %9, align 8
  %80 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %81 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %80, i32 0, i32 1
  %82 = load %struct.buf**, %struct.buf*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buf*, %struct.buf** %82, i64 %84
  store %struct.buf* %79, %struct.buf** %85, align 8
  %86 = load %struct.buf*, %struct.buf** %9, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.buf*, %struct.buf** %9, align 8
  %90 = getelementptr inbounds %struct.buf, %struct.buf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load %struct.vnode*, %struct.vnode** %5, align 8
  %95 = load %struct.buf*, %struct.buf** %9, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.buf*, %struct.buf** %9, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = call i32 @VOP_BMAP(%struct.vnode* %94, i64 %97, i32* null, i64* %99, i32* null, i32* null)
  br label %101

101:                                              ; preds = %93, %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %42

107:                                              ; preds = %42
  %108 = load %struct.buf*, %struct.buf** %6, align 8
  store %struct.buf* %108, %struct.buf** %9, align 8
  %109 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %110 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %109, i32 0, i32 1
  %111 = load %struct.buf**, %struct.buf*** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buf*, %struct.buf** %111, i64 %113
  store %struct.buf* %108, %struct.buf** %114, align 8
  %115 = load %struct.buf*, %struct.buf** %9, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.buf*, %struct.buf** %9, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %107
  %123 = load %struct.vnode*, %struct.vnode** %5, align 8
  %124 = load %struct.buf*, %struct.buf** %9, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.buf*, %struct.buf** %9, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 0
  %129 = call i32 @VOP_BMAP(%struct.vnode* %123, i64 %126, i32* null, i64* %128, i32* null, i32* null)
  br label %130

130:                                              ; preds = %122, %107
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  %134 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.cluster_save*, %struct.cluster_save** %8, align 8
  store %struct.cluster_save* %135, %struct.cluster_save** %4, align 8
  br label %136

136:                                              ; preds = %130, %74
  %137 = load %struct.cluster_save*, %struct.cluster_save** %4, align 8
  ret %struct.cluster_save* %137
}

declare dso_local %struct.cluster_save* @malloc(i32, i32, i32) #1

declare dso_local i32 @bread_gb(%struct.vnode*, i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @free(%struct.cluster_save*, i32) #1

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i64, i32*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
