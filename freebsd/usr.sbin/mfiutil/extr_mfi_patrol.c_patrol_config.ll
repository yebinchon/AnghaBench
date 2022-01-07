; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_patrol.c_patrol_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_patrol.c_patrol_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pr_properties = type { i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"patrol: command required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@MFI_PR_OPMODE_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"continuously\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"patrol: Invalid interval %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"patrol: Invalid start time %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@MFI_PR_OPMODE_MANUAL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@MFI_PR_OPMODE_DISABLED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"patrol: Invalid command %s\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Starting next patrol read at %s\00", align 1
@MFI_DCMD_PR_SET_PROPERTIES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to set patrol read properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @patrol_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patrol_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_pr_properties, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %174

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  %28 = load i64, i64* @MFI_PR_OPMODE_AUTO, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i64 4294967295, i64* %13, align 8
  br label %55

38:                                               ; preds = %31
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strtol(i8* %41, i8** %14, i32 0)
  store i64 %42, i64* %7, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %3, align 4
  br label %174

53:                                               ; preds = %38
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %53, %37
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strtol(i8* %62, i8** %14, i32 0)
  store i64 %63, i64* %7, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %7, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68, %59
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %3, align 4
  br label %174

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %77, %56
  br label %104

80:                                               ; preds = %21
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @MFI_PR_OPMODE_MANUAL, align 8
  store i64 %87, i64* %15, align 8
  br label %103

88:                                               ; preds = %80
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcasecmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i64, i64* @MFI_PR_OPMODE_DISABLED, align 8
  store i64 %95, i64* %15, align 8
  br label %102

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %3, align 4
  br label %174

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i32, i32* @mfi_unit, align 4
  %106 = load i32, i32* @O_RDWR, align 4
  %107 = call i32 @mfi_open(i32 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @errno, align 4
  store i32 %111, i32* %9, align 4
  %112 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %174

114:                                              ; preds = %104
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @patrol_get_props(i32 %115, %struct.mfi_pr_properties* %6)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @close(i32 %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %174

123:                                              ; preds = %114
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds %struct.mfi_pr_properties, %struct.mfi_pr_properties* %6, i32 0, i32 2
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* @MFI_PR_OPMODE_AUTO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  %131 = icmp sgt i32 %130, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds %struct.mfi_pr_properties, %struct.mfi_pr_properties* %6, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %4, align 4
  %137 = icmp sgt i32 %136, 3
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = call i32 @time(i32* %8)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @mfi_get_time(i32 %140, i64* %11)
  %142 = load i64, i64* %11, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @close(i32 %145)
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %3, align 4
  br label %174

148:                                              ; preds = %138
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add nsw i64 %149, %150
  %152 = getelementptr inbounds %struct.mfi_pr_properties, %struct.mfi_pr_properties* %6, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds %struct.mfi_pr_properties, %struct.mfi_pr_properties* %6, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @adapter_time(i32 %153, i64 %154, i64 %156)
  %158 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %148, %135
  br label %160

160:                                              ; preds = %159, %123
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @MFI_DCMD_PR_SET_PROPERTIES, align 4
  %163 = call i64 @mfi_dcmd_command(i32 %161, i32 %162, %struct.mfi_pr_properties* %6, i32 24, i32* null, i32 0, i32* null)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @errno, align 4
  store i32 %166, i32* %9, align 4
  %167 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @close(i32 %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %3, align 4
  br label %174

171:                                              ; preds = %160
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @close(i32 %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %171, %165, %144, %119, %110, %96, %71, %47, %18
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @patrol_get_props(i32, %struct.mfi_pr_properties*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @mfi_get_time(i32, i64*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @adapter_time(i32, i64, i64) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_pr_properties*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
