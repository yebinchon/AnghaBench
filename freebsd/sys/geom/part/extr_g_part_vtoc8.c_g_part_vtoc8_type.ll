; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_vtoc8_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VTOC_TAG_FREEBSD_NANDFS = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_SWAP = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_SWAP = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_UFS = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_UFS = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_VINUM = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_VINUM = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_ZFS = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_ZFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"!%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_vtoc8_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_vtoc8_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_vtoc8_table*, align 8
  %11 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %13 = bitcast %struct.g_part_table* %12 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %13, %struct.g_part_vtoc8_table** %10, align 8
  %14 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %10, align 8
  %15 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %19 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @be16dec(i32* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @VTOC_TAG_FREEBSD_NANDFS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @G_PART_ALIAS_FREEBSD_NANDFS, align 4
  %31 = call i8* @g_part_alias_name(i32 %30)
  store i8* %31, i8** %5, align 8
  br label %66

32:                                               ; preds = %4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @VTOC_TAG_FREEBSD_SWAP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @G_PART_ALIAS_FREEBSD_SWAP, align 4
  %38 = call i8* @g_part_alias_name(i32 %37)
  store i8* %38, i8** %5, align 8
  br label %66

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @VTOC_TAG_FREEBSD_UFS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @G_PART_ALIAS_FREEBSD_UFS, align 4
  %45 = call i8* @g_part_alias_name(i32 %44)
  store i8* %45, i8** %5, align 8
  br label %66

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @VTOC_TAG_FREEBSD_VINUM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @G_PART_ALIAS_FREEBSD_VINUM, align 4
  %52 = call i8* @g_part_alias_name(i32 %51)
  store i8* %52, i8** %5, align 8
  br label %66

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @VTOC_TAG_FREEBSD_ZFS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @G_PART_ALIAS_FREEBSD_ZFS, align 4
  %59 = call i8* @g_part_alias_name(i32 %58)
  store i8* %59, i8** %5, align 8
  br label %66

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %60, %57, %50, %43, %36, %29
  %67 = load i8*, i8** %5, align 8
  ret i8* %67
}

declare dso_local i64 @be16dec(i32*) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
