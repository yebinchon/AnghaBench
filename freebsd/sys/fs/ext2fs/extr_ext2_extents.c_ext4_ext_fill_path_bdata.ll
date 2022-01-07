; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_fill_path_bdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_fill_path_bdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_path = type { i32, i32* }
%struct.buf = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"ext4_ext_fill_path_bdata: bad ep_data\00", align 1
@M_EXT2EXTENTS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_extent_path*, %struct.buf*, i32)* @ext4_ext_fill_path_bdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_fill_path_bdata(%struct.ext4_extent_path* %0, %struct.buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_extent_path*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  store %struct.ext4_extent_path* %0, %struct.ext4_extent_path** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.buf*, %struct.buf** %6, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @M_EXT2EXTENTS, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i32* @malloc(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %21 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %23 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %30 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.buf*, %struct.buf** %6, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.buf*, %struct.buf** %6, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %31, i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %41 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %28, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
