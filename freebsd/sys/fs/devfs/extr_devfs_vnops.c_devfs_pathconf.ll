; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@VV_ISTTY = common dso_local global i32 0, align 4
@MAX_CANON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_INPUT = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @devfs_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_pathconf_args*, align 8
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %3, align 8
  %4 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %5 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %82 [
    i32 135, label %7
    i32 130, label %11
    i32 134, label %16
    i32 129, label %21
    i32 132, label %26
    i32 131, label %42
    i32 128, label %58
    i32 133, label %74
    i32 136, label %78
  ]

7:                                                ; preds = %1
  %8 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32 64, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %85

11:                                               ; preds = %1
  %12 = load i32, i32* @NAME_MAX, align 4
  %13 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32 %12, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load i32, i32* @INT_MAX, align 4
  %18 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32 %17, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32 %22, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %85

26:                                               ; preds = %1
  %27 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VV_ISTTY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @MAX_CANON, align 4
  %37 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32 %36, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %85

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %2, align 4
  br label %85

42:                                               ; preds = %1
  %43 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VV_ISTTY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @MAX_INPUT, align 4
  %53 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %85

56:                                               ; preds = %42
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %2, align 4
  br label %85

58:                                               ; preds = %1
  %59 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VV_ISTTY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i32, i32* @_POSIX_VDISABLE, align 4
  %69 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %70 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32 %68, i32* %71, align 4
  store i32 0, i32* %2, align 4
  br label %85

72:                                               ; preds = %58
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %2, align 4
  br label %85

74:                                               ; preds = %1
  %75 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %76 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32 0, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %85

78:                                               ; preds = %1
  %79 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32 1, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %85

82:                                               ; preds = %1
  %83 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %84 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %78, %74, %72, %67, %56, %51, %40, %35, %21, %16, %11, %7
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
