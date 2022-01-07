; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_read_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_read_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readdir_args = type { i32*, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dirent = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"NULL ap->a_cookies value with non-NULL ap->a_ncookies!\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_read_dirent(%struct.vop_readdir_args* %0, %struct.dirent* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vop_readdir_args*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %5, align 8
  store %struct.dirent* %1, %struct.dirent** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dirent*, %struct.dirent** %6, align 8
  %10 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %13 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %19, i32* %4, align 4
  br label %102

20:                                               ; preds = %3
  %21 = load %struct.dirent*, %struct.dirent** %6, align 8
  %22 = load %struct.dirent*, %struct.dirent** %6, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %26 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @uiomove(%struct.dirent* %21, i64 %24, %struct.TYPE_2__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %33 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %38 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %43 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = call i32 @free(i32** %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %49 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %48, i32 0, i32 1
  store i32** null, i32*** %49, align 8
  %50 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %51 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %102

55:                                               ; preds = %20
  %56 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %57 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %102

61:                                               ; preds = %55
  %62 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %63 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = call i32 @KASSERT(i32** %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %67 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %71 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = load i32, i32* @M_WAITOK, align 4
  %80 = load i32, i32* @M_ZERO, align 4
  %81 = or i32 %79, %80
  %82 = call i32* @realloc(i32* %69, i32 %77, i32 %78, i32 %81)
  %83 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %84 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %88 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %92 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 %86, i32* %96, align 4
  %97 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %5, align 8
  %98 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %61, %60, %53, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @uiomove(%struct.dirent*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @KASSERT(i32**, i8*) #1

declare dso_local i32* @realloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
