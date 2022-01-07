; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_foreign_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_foreign_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_foreign_scan_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"foreign preview: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@MFI_DCMD_CFG_FOREIGN_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to scan foreign configuration\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"foreign import: no foreign configs found\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Are you sure you wish to import ALL foreign configurations on mfi%u? [y/N] \00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Invalid foreign config %d specified max is %d\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Are you sure you wish to import the foreign configuration %d on mfi%u? [y/N] \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\0AAborting\0A\00", align 1
@MFI_DCMD_CFG_FOREIGN_IMPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to import foreign configuration\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"mfi%d: All foreign configurations imported\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"mfi%d: Foreign configuration %d imported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @foreign_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreign_import(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_foreign_scan_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %115

17:                                               ; preds = %2
  %18 = load i32, i32* @mfi_unit, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i32 @mfi_open(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %8, align 4
  %25 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %115

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MFI_DCMD_CFG_FOREIGN_SCAN, align 4
  %30 = call i64 @mfi_dcmd_command(i32 %28, i32 %29, %struct.mfi_foreign_scan_info* %6, i32 4, i32* null, i32 0, i32* null)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %8, align 4
  %34 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %115

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %115

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  store i32 255, i32* %10, align 4
  %51 = load i32, i32* @mfi_unit, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %75

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %115

71:                                               ; preds = %53
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @mfi_unit, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %50
  %76 = call i32 (...) @getchar()
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 121
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 89
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @close(i32 %84)
  store i32 0, i32* %3, align 4
  br label %115

86:                                               ; preds = %79, %75
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %88 = call i32 @bzero(i32* %87, i32 16)
  %89 = load i32, i32* %10, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %89, i32* %90, align 16
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @MFI_DCMD_CFG_FOREIGN_IMPORT, align 4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %94 = call i64 @mfi_dcmd_command(i32 %91, i32 %92, %struct.mfi_foreign_scan_info* null, i32 0, i32* %93, i32 16, i32* null)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i32, i32* @errno, align 4
  store i32 %97, i32* %8, align 4
  %98 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @close(i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %115

102:                                              ; preds = %86
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @mfi_unit, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  br label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @mfi_unit, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @close(i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %96, %82, %62, %42, %32, %23, %14
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_foreign_scan_info*, i32, i32*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
