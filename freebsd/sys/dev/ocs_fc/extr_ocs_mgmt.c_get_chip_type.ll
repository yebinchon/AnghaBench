; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_chip_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_chip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLI4_INTF_REG = common dso_local global i32 0, align 4
@SLI4_ASIC_ID_REG = common dso_local global i32 0, align 4
@SLI4_PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BE2 A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"BE3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Skyhawk A0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Lancer A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Lancer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Lancer G6\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"BE2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"BE3-R\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Skyhawk-R\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Corsair\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"LancerG6\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@MGMT_MODE_RD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"chip_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @get_chip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_chip_type(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SLI4_INTF_REG, align 4
  %16 = call i32 @ocs_config_read32(i32* %14, i32 %15)
  %17 = and i32 %16, 3840
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SLI4_ASIC_ID_REG, align 4
  %21 = call i32 @ocs_config_read32(i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 65280
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @SLI4_PCI_CLASS_REVISION, align 4
  %29 = call i32 @ocs_config_read32(i32* %27, i32 %28)
  %30 = and i32 %29, 255
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %146 [
    i32 0, label %32
    i32 1, label %41
    i32 2, label %66
    i32 10, label %69
    i32 11, label %79
    i32 12, label %98
    i32 15, label %101
  ]

32:                                               ; preds = %3
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %34 = call i32 @ocs_strncpy(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 80)
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ocs_snprintf(i8* %35, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %40 = call i32 @strcat(i8* %38, i8* %39)
  br label %149

41:                                               ; preds = %3
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %43 = call i32 @ocs_strncpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 80)
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 16
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 240
  %53 = ashr i32 %52, 4
  %54 = add nsw i32 %53, 65
  %55 = call i32 @ocs_snprintf(i8* %50, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %58 = call i32 @strcat(i8* %56, i8* %57)
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 15
  %62 = call i32 @ocs_snprintf(i8* %59, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %65 = call i32 @strcat(i8* %63, i8* %64)
  br label %149

66:                                               ; preds = %3
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %68 = call i32 @ocs_strncpy(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 80)
  br label %149

69:                                               ; preds = %3
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %71 = call i32 @ocs_strncpy(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 80)
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 15
  %75 = call i32 @ocs_snprintf(i8* %72, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %78 = call i32 @strcat(i8* %76, i8* %77)
  br label %149

79:                                               ; preds = %3
  %80 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %81 = call i32 @ocs_strncpy(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 80)
  %82 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 240
  %85 = ashr i32 %84, 4
  %86 = add nsw i32 %85, 65
  %87 = call i32 @ocs_snprintf(i8* %82, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %90 = call i32 @strcat(i8* %88, i8* %89)
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 15
  %94 = call i32 @ocs_snprintf(i8* %91, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %97 = call i32 @strcat(i8* %95, i8* %96)
  br label %149

98:                                               ; preds = %3
  %99 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %100 = call i32 @ocs_strncpy(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 80)
  br label %149

101:                                              ; preds = %3
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %121 [
    i32 0, label %103
    i32 3, label %106
    i32 4, label %109
    i32 5, label %112
    i32 11, label %115
    i32 12, label %118
  ]

103:                                              ; preds = %101
  %104 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %105 = call i32 @ocs_strncpy(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 80)
  br label %124

106:                                              ; preds = %101
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %108 = call i32 @ocs_strncpy(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 80)
  br label %124

109:                                              ; preds = %101
  %110 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %111 = call i32 @ocs_strncpy(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 80)
  br label %124

112:                                              ; preds = %101
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %114 = call i32 @ocs_strncpy(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 80)
  br label %124

115:                                              ; preds = %101
  %116 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %117 = call i32 @ocs_strncpy(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 80)
  br label %124

118:                                              ; preds = %101
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %120 = call i32 @ocs_strncpy(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 80)
  br label %124

121:                                              ; preds = %101
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %123 = call i32 @ocs_strncpy(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 80)
  br label %124

124:                                              ; preds = %121, %118, %115, %112, %109, %106, %103
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %126 = call i32 @ocs_strcmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, 240
  %132 = ashr i32 %131, 4
  %133 = add nsw i32 %132, 65
  %134 = call i32 @ocs_snprintf(i8* %129, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %137 = call i32 @strcat(i8* %135, i8* %136)
  %138 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %139 = load i32, i32* %10, align 4
  %140 = and i32 %139, 15
  %141 = call i32 @ocs_snprintf(i8* %138, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %143 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %144 = call i32 @strcat(i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %128, %124
  br label %149

146:                                              ; preds = %3
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %148 = call i32 @ocs_strncpy(i8* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 80)
  br label %149

149:                                              ; preds = %146, %145, %98, %79, %69, %66, %49, %32
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @MGMT_MODE_RD, align 4
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %153 = call i32 @ocs_mgmt_emit_string(i32* %150, i32 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %152)
  ret void
}

declare dso_local i32 @ocs_config_read32(i32*, i32) #1

declare dso_local i32 @ocs_strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @ocs_strcmp(i8*, i8*) #1

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
