; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_bsd_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FS_NANDFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@FS_SWAP = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_SWAP = common dso_local global i32 0, align 4
@FS_BSDFFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_UFS = common dso_local global i32 0, align 4
@FS_VINUM = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_VINUM = common dso_local global i32 0, align 4
@FS_ZFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_ZFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"!%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_bsd_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_bsd_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_bsd_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %13 = bitcast %struct.g_part_entry* %12 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %13, %struct.g_part_bsd_entry** %10, align 8
  %14 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %10, align 8
  %15 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @FS_NANDFS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @G_PART_ALIAS_FREEBSD_NANDFS, align 4
  %23 = call i8* @g_part_alias_name(i32 %22)
  store i8* %23, i8** %5, align 8
  br label %58

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @FS_SWAP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @G_PART_ALIAS_FREEBSD_SWAP, align 4
  %30 = call i8* @g_part_alias_name(i32 %29)
  store i8* %30, i8** %5, align 8
  br label %58

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @FS_BSDFFS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @G_PART_ALIAS_FREEBSD_UFS, align 4
  %37 = call i8* @g_part_alias_name(i32 %36)
  store i8* %37, i8** %5, align 8
  br label %58

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @FS_VINUM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @G_PART_ALIAS_FREEBSD_VINUM, align 4
  %44 = call i8* @g_part_alias_name(i32 %43)
  store i8* %44, i8** %5, align 8
  br label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @FS_ZFS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @G_PART_ALIAS_FREEBSD_ZFS, align 4
  %51 = call i8* @g_part_alias_name(i32 %50)
  store i8* %51, i8** %5, align 8
  br label %58

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %52, %49, %42, %35, %28, %21
  %59 = load i8*, i8** %5, align 8
  ret i8* %59
}

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
