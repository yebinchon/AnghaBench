; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_display_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_display_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_foreign_scan_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"foreign display: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@MFI_DCMD_CFG_FOREIGN_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to scan foreign configuration\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"foreign display: no foreign configs found\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_format(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mfi_foreign_scan_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %106

19:                                               ; preds = %4
  %20 = load i32, i32* @mfi_unit, align 4
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @mfi_open(i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %12, align 4
  %27 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %106

29:                                               ; preds = %19
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MFI_DCMD_CFG_FOREIGN_SCAN, align 4
  %32 = call i64 @mfi_dcmd_command(i32 %30, i32 %31, %struct.mfi_foreign_scan_info* %10, i32 4, i32* null, i32 0, i32* null)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %12, align 4
  %36 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %106

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %106

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @foreign_show_cfg(i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %106

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds %struct.mfi_foreign_scan_info, %struct.mfi_foreign_scan_info* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %53

82:                                               ; preds = %53
  br label %103

83:                                               ; preds = %49
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @foreign_show_cfg(i32 %87, i32 %88, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %106

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @close(i32 %104)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %97, %66, %44, %34, %25, %16
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_foreign_scan_info*, i32, i32*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @foreign_show_cfg(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
