; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_bmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_bmap.c_ext2_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_bmap_args = type { i32*, i32, i32, i32, i32, i32** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IN_E4EXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_bmap(%struct.vop_bmap_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_bmap_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vop_bmap_args* %0, %struct.vop_bmap_args** %3, align 8
  %6 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %6, i32 0, i32 5
  %8 = load i32**, i32*** %7, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_4__* @VTOI(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %18, i32 0, i32 5
  %20 = load i32**, i32*** %19, align 8
  store i32* %17, i32** %20, align 8
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %21
  %28 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_4__* @VTOI(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IN_E4EXTENTS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ext4_bmapext(i32 %40, i32 %43, i32* %4, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %65

51:                                               ; preds = %27
  %52 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %53 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %56 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %59 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %62 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ext2_bmaparray(i32 %54, i32 %57, i32* %4, i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %51, %37
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %68 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_4__* @VTOI(i32) #1

declare dso_local i32 @ext4_bmapext(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ext2_bmaparray(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
