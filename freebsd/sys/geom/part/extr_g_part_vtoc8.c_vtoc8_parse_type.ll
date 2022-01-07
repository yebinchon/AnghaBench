; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_vtoc8_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_vtoc8_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_NANDFS = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_SWAP = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_SWAP = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_UFS = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_UFS = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_VINUM = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_VINUM = common dso_local global i64 0, align 8
@G_PART_ALIAS_FREEBSD_ZFS = common dso_local global i32 0, align 4
@VTOC_TAG_FREEBSD_ZFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @vtoc8_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtoc8_parse_type(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 33
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = call i64 @strtol(i8* %16, i8** %7, i32 0)
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = icmp sge i64 %32, 65536
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %28, %23, %14
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %91

39:                                               ; preds = %2
  %40 = load i32, i32* @G_PART_ALIAS_FREEBSD_NANDFS, align 4
  %41 = call i8* @g_part_alias_name(i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcasecmp(i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* @VTOC_TAG_FREEBSD_NANDFS, align 8
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %91

49:                                               ; preds = %39
  %50 = load i32, i32* @G_PART_ALIAS_FREEBSD_SWAP, align 4
  %51 = call i8* @g_part_alias_name(i32 %50)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcasecmp(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @VTOC_TAG_FREEBSD_SWAP, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %3, align 4
  br label %91

59:                                               ; preds = %49
  %60 = load i32, i32* @G_PART_ALIAS_FREEBSD_UFS, align 4
  %61 = call i8* @g_part_alias_name(i32 %60)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strcasecmp(i8* %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* @VTOC_TAG_FREEBSD_UFS, align 8
  %68 = load i64*, i64** %5, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %3, align 4
  br label %91

69:                                               ; preds = %59
  %70 = load i32, i32* @G_PART_ALIAS_FREEBSD_VINUM, align 4
  %71 = call i8* @g_part_alias_name(i32 %70)
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcasecmp(i8* %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* @VTOC_TAG_FREEBSD_VINUM, align 8
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %3, align 4
  br label %91

79:                                               ; preds = %69
  %80 = load i32, i32* @G_PART_ALIAS_FREEBSD_ZFS, align 4
  %81 = call i8* @g_part_alias_name(i32 %80)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @strcasecmp(i8* %82, i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i64, i64* @VTOC_TAG_FREEBSD_ZFS, align 8
  %88 = load i64*, i64** %5, align 8
  store i64 %87, i64* %88, align 8
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %86, %76, %66, %56, %46, %36, %34
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
