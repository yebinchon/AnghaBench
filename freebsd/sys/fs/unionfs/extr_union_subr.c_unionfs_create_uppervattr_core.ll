; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_create_uppervattr_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_create_uppervattr_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unionfs_mount = type { i32, i32, i32, i32, i32 }
%struct.vattr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unionfs_create_uppervattr_core(%struct.unionfs_mount* %0, %struct.vattr* %1, %struct.vattr* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.unionfs_mount*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.thread*, align 8
  store %struct.unionfs_mount* %0, %struct.unionfs_mount** %5, align 8
  store %struct.vattr* %1, %struct.vattr** %6, align 8
  store %struct.vattr* %2, %struct.vattr** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %9 = load %struct.vattr*, %struct.vattr** %7, align 8
  %10 = call i32 @VATTR_NULL(%struct.vattr* %9)
  %11 = load %struct.vattr*, %struct.vattr** %6, align 8
  %12 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vattr*, %struct.vattr** %7, align 8
  %15 = getelementptr inbounds %struct.vattr, %struct.vattr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vattr*, %struct.vattr** %6, align 8
  %17 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vattr*, %struct.vattr** %7, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vattr*, %struct.vattr** %6, align 8
  %22 = getelementptr inbounds %struct.vattr, %struct.vattr* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vattr*, %struct.vattr** %7, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vattr*, %struct.vattr** %6, align 8
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vattr*, %struct.vattr** %7, align 8
  %30 = getelementptr inbounds %struct.vattr, %struct.vattr* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %32 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %124 [
    i32 128, label %34
    i32 129, label %50
  ]

34:                                               ; preds = %4
  %35 = load %struct.vattr*, %struct.vattr** %6, align 8
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vattr*, %struct.vattr** %7, align 8
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vattr*, %struct.vattr** %6, align 8
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vattr*, %struct.vattr** %7, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vattr*, %struct.vattr** %6, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vattr*, %struct.vattr** %7, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %146

50:                                               ; preds = %4
  %51 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %52 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vattr*, %struct.vattr** %6, align 8
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %50
  %59 = load %struct.vattr*, %struct.vattr** %6, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 32319
  %63 = load %struct.vattr*, %struct.vattr** %7, align 8
  %64 = getelementptr inbounds %struct.vattr, %struct.vattr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vattr*, %struct.vattr** %6, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VDIR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %72 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  br label %78

74:                                               ; preds = %58
  %75 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %76 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %73, %70 ], [ %77, %74 ]
  %80 = and i32 %79, 448
  %81 = load %struct.vattr*, %struct.vattr** %7, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.vattr*, %struct.vattr** %6, align 8
  %86 = getelementptr inbounds %struct.vattr, %struct.vattr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vattr*, %struct.vattr** %7, align 8
  %89 = getelementptr inbounds %struct.vattr, %struct.vattr* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.vattr*, %struct.vattr** %6, align 8
  %91 = getelementptr inbounds %struct.vattr, %struct.vattr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vattr*, %struct.vattr** %7, align 8
  %94 = getelementptr inbounds %struct.vattr, %struct.vattr* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %123

95:                                               ; preds = %50
  %96 = load %struct.vattr*, %struct.vattr** %6, align 8
  %97 = getelementptr inbounds %struct.vattr, %struct.vattr* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VDIR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %103 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %107 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %104, %101 ], [ %108, %105 ]
  %111 = load %struct.vattr*, %struct.vattr** %7, align 8
  %112 = getelementptr inbounds %struct.vattr, %struct.vattr* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %114 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.vattr*, %struct.vattr** %7, align 8
  %117 = getelementptr inbounds %struct.vattr, %struct.vattr* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %119 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vattr*, %struct.vattr** %7, align 8
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %109, %78
  br label %146

124:                                              ; preds = %4
  %125 = load %struct.thread*, %struct.thread** %8, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 511, %132
  %134 = load %struct.vattr*, %struct.vattr** %7, align 8
  %135 = getelementptr inbounds %struct.vattr, %struct.vattr* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %137 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vattr*, %struct.vattr** %7, align 8
  %140 = getelementptr inbounds %struct.vattr, %struct.vattr* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.unionfs_mount*, %struct.unionfs_mount** %5, align 8
  %142 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vattr*, %struct.vattr** %7, align 8
  %145 = getelementptr inbounds %struct.vattr, %struct.vattr* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %124, %123, %34
  ret void
}

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
