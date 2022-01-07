; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i32* }

@NAME_MAX = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@FUSE_LINK_MAX = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @fuse_vnop_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_pathconf_args*, align 8
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %3, align 8
  %4 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %5 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %32 [
    i32 132, label %7
    i32 130, label %11
    i32 131, label %16
    i32 128, label %23
    i32 129, label %28
  ]

7:                                                ; preds = %1
  %8 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32 64, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* @NAME_MAX, align 4
  %13 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32 %12, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @LONG_MAX, align 4
  %18 = load i32, i32* @FUSE_LINK_MAX, align 4
  %19 = call i32 @MIN(i32 %17, i32 %18)
  %20 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32 %19, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32 1, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %34 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %28, %23, %16, %11, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
