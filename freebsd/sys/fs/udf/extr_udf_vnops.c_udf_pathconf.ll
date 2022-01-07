; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @udf_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_pathconf_args*, align 8
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %3, align 8
  %4 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %5 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %52 [
    i32 133, label %7
    i32 132, label %11
    i32 131, label %15
    i32 128, label %20
    i32 130, label %25
    i32 129, label %29
  ]

7:                                                ; preds = %1
  %8 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32 64, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32 65535, i32* %14, align 4
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* @NAME_MAX, align 4
  %17 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32 %16, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32 %21, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %55

25:                                               ; preds = %1
  %26 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %55

29:                                               ; preds = %1
  %30 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VDIR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VFIFO, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @PIPE_BUF, align 4
  %47 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %1
  %53 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %54 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %50, %45, %25, %20, %15, %11, %7
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
