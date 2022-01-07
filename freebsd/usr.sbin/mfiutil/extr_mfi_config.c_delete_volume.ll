; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_delete_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_delete_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"spare\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"delete volume: volume required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"The current mfi(4) driver does not support configuration changes.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid volume %s\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to get info for volume %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Volume %s is busy and cannot be deleted\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MFI_DCMD_LD_DELETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to delete volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @delete_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_volume(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_ld_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %13
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @remove_spare(i32 %35, i8** %36)
  store i32 %37, i32* %3, align 4
  br label %125

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %125

46:                                               ; preds = %40
  %47 = load i32, i32* @mfi_unit, align 4
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = call i32 @mfi_open(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %7, align 4
  %54 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %125

56:                                               ; preds = %46
  %57 = call i32 (...) @mfi_reconfig_supported()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %63, i32* %3, align 4
  br label %125

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @mfi_lookup_volume(i32 %65, i8* %68, i32* %9)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %125

80:                                               ; preds = %64
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @mfi_ld_get_info(i32 %81, i32 %82, %struct.mfi_ld_info* %6, i32* null)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @errno, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %125

92:                                               ; preds = %80
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @mfi_volume_busy(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @mfi_volume_name(i32 %98, i32 %99)
  %101 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* @EBUSY, align 4
  store i32 %104, i32* %3, align 4
  br label %125

105:                                              ; preds = %92
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %107 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %6, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = call i32 @mbox_store_ldref(i32* %106, i32* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MFI_DCMD_LD_DELETE, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %114 = call i64 @mfi_dcmd_command(i32 %111, i32 %112, i32* null, i32 0, i32* %113, i32 16, i32* null)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %105
  %117 = load i32, i32* @errno, align 4
  store i32 %117, i32* %7, align 4
  %118 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @close(i32 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %125

122:                                              ; preds = %105
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @close(i32 %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %116, %97, %85, %71, %59, %52, %43, %30
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @remove_spare(i32, i8**) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @mfi_reconfig_supported(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_lookup_volume(i32, i8*, i32*) #1

declare dso_local i64 @mfi_ld_get_info(i32, i32, %struct.mfi_ld_info*, i32*) #1

declare dso_local i64 @mfi_volume_busy(i32, i32) #1

declare dso_local i32 @mfi_volume_name(i32, i32) #1

declare dso_local i32 @mbox_store_ldref(i32*, i32*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
