; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_apm_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@APM_ENT_TYPE_APPLE_BOOT = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_BOOT = common dso_local global i32 0, align 4
@APM_ENT_TYPE_APPLE_HFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_HFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_APPLE_UFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_UFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_SWAP = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_SWAP = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_UFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_UFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_VINUM = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_VINUM = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_ZFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_ZFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_apm_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_apm_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_apm_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %14 = bitcast %struct.g_part_entry* %13 to %struct.g_part_apm_entry*
  store %struct.g_part_apm_entry* %14, %struct.g_part_apm_entry** %10, align 8
  %15 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %10, align 8
  %16 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* @APM_ENT_TYPE_APPLE_BOOT, align 4
  %21 = call i32 @strcmp(i8* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @G_PART_ALIAS_APPLE_BOOT, align 4
  %25 = call i8* @g_part_alias_name(i32 %24)
  store i8* %25, i8** %5, align 8
  br label %106

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @APM_ENT_TYPE_APPLE_HFS, align 4
  %29 = call i32 @strcmp(i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @G_PART_ALIAS_APPLE_HFS, align 4
  %33 = call i8* @g_part_alias_name(i32 %32)
  store i8* %33, i8** %5, align 8
  br label %106

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* @APM_ENT_TYPE_APPLE_UFS, align 4
  %37 = call i32 @strcmp(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @G_PART_ALIAS_APPLE_UFS, align 4
  %41 = call i8* @g_part_alias_name(i32 %40)
  store i8* %41, i8** %5, align 8
  br label %106

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @APM_ENT_TYPE_FREEBSD, align 4
  %45 = call i32 @strcmp(i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @G_PART_ALIAS_FREEBSD, align 4
  %49 = call i8* @g_part_alias_name(i32 %48)
  store i8* %49, i8** %5, align 8
  br label %106

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @APM_ENT_TYPE_FREEBSD_NANDFS, align 4
  %53 = call i32 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @G_PART_ALIAS_FREEBSD_NANDFS, align 4
  %57 = call i8* @g_part_alias_name(i32 %56)
  store i8* %57, i8** %5, align 8
  br label %106

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @APM_ENT_TYPE_FREEBSD_SWAP, align 4
  %61 = call i32 @strcmp(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @G_PART_ALIAS_FREEBSD_SWAP, align 4
  %65 = call i8* @g_part_alias_name(i32 %64)
  store i8* %65, i8** %5, align 8
  br label %106

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @APM_ENT_TYPE_FREEBSD_UFS, align 4
  %69 = call i32 @strcmp(i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @G_PART_ALIAS_FREEBSD_UFS, align 4
  %73 = call i8* @g_part_alias_name(i32 %72)
  store i8* %73, i8** %5, align 8
  br label %106

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @APM_ENT_TYPE_FREEBSD_VINUM, align 4
  %77 = call i32 @strcmp(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @G_PART_ALIAS_FREEBSD_VINUM, align 4
  %81 = call i8* @g_part_alias_name(i32 %80)
  store i8* %81, i8** %5, align 8
  br label %106

82:                                               ; preds = %74
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* @APM_ENT_TYPE_FREEBSD_ZFS, align 4
  %85 = call i32 @strcmp(i8* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @G_PART_ALIAS_FREEBSD_ZFS, align 4
  %89 = call i8* @g_part_alias_name(i32 %88)
  store i8* %89, i8** %5, align 8
  br label %106

90:                                               ; preds = %82
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 33, i8* %92, align 1
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %93, 2
  %95 = call i64 @MIN(i32 8, i64 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @bcopy(i8* %96, i8* %98, i64 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %8, align 8
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %90, %87, %79, %71, %63, %55, %47, %39, %31, %23
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
