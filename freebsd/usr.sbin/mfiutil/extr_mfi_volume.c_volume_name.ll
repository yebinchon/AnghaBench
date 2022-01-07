; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_props = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"name: volume and name required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"name: new name is too long\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid volume: %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to fetch volume properties\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"mfi%u volume %s name changed from \22%s\22 to \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to set volume properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @volume_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_name(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_ld_props, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOSPC, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %15
  %26 = load i32, i32* @mfi_unit, align 4
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = call i32 @mfi_open(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @mfi_lookup_volume(i32 %36, i8* %39, i32* %9)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %94

51:                                               ; preds = %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @mfi_ld_get_props(i32 %52, i32 %53, %struct.mfi_ld_props* %6)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %7, align 4
  %58 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %94

62:                                               ; preds = %51
  %63 = load i32, i32* @mfi_unit, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @mfi_volume_name(i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %63, i8* %66, i8* %68, i8* %71)
  %73 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @bzero(i8* %74, i32 8)
  %76 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcpy(i8* %77, i8* %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @mfi_ld_set_props(i32 %82, %struct.mfi_ld_props* %6)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %62
  %86 = load i32, i32* @errno, align 4
  store i32 %86, i32* %7, align 4
  %87 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %94

91:                                               ; preds = %62
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @close(i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %85, %56, %42, %31, %22, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @mfi_lookup_volume(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_ld_get_props(i32, i32, %struct.mfi_ld_props*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @mfi_volume_name(i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @mfi_ld_set_props(i32, %struct.mfi_ld_props*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
