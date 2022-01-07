; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_setup.c_ar71xx_detect_sys_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_setup.c_ar71xx_detect_sys_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"????\00", align 1
@AR71XX_RST_RESET_REG_REV_ID = common dso_local global i32 0, align 4
@REV_ID_MAJOR_MASK = common dso_local global i32 0, align 4
@AR71XX_REV_ID_MINOR_MASK = common dso_local global i32 0, align 4
@AR71XX_REV_ID_REVISION_SHIFT = common dso_local global i32 0, align 4
@AR71XX_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@ar71xx_chip_def = common dso_local global i32 0, align 4
@ar71xx_cpu_ops = common dso_local global i32* null, align 8
@AR71XX_SOC_AR7130 = common dso_local global i32 0, align 4
@ar71xx_soc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"7130\00", align 1
@AR71XX_SOC_AR7141 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"7141\00", align 1
@AR71XX_SOC_AR7161 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"7161\00", align 1
@AR71XX_SOC_AR7240 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"7240\00", align 1
@ar724x_chip_def = common dso_local global i32 0, align 4
@AR724X_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@AR71XX_SOC_AR7241 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"7241\00", align 1
@AR71XX_SOC_AR7242 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"7242\00", align 1
@AR91XX_REV_ID_MINOR_MASK = common dso_local global i32 0, align 4
@AR91XX_REV_ID_REVISION_SHIFT = common dso_local global i32 0, align 4
@AR91XX_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@ar91xx_chip_def = common dso_local global i32 0, align 4
@AR71XX_SOC_AR9130 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"9130\00", align 1
@AR71XX_SOC_AR9132 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"9132\00", align 1
@AR933X_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"9330\00", align 1
@ar933x_chip_def = common dso_local global i32 0, align 4
@AR71XX_SOC_AR9330 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"9331\00", align 1
@AR71XX_SOC_AR9331 = common dso_local global i32 0, align 4
@AR934X_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"9341\00", align 1
@AR71XX_SOC_AR9341 = common dso_local global i32 0, align 4
@ar934x_chip_def = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"9342\00", align 1
@AR71XX_SOC_AR9342 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"9344\00", align 1
@AR71XX_SOC_AR9344 = common dso_local global i32 0, align 4
@QCA953X_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"9533\00", align 1
@AR71XX_SOC_QCA9533 = common dso_local global i32 0, align 4
@qca953x_chip_def = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"9533v2\00", align 1
@AR71XX_SOC_QCA9533_V2 = common dso_local global i32 0, align 4
@QCA955X_REV_ID_REVISION_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"9556\00", align 1
@AR71XX_SOC_QCA9556 = common dso_local global i32 0, align 4
@qca955x_chip_def = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"9558\00", align 1
@AR71XX_SOC_QCA9558 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"ar71xx: unknown chip id:0x%08x\0A\00", align 1
@ar71xx_sys_type = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"Atheros AR%s rev %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar71xx_detect_sys_type() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @AR71XX_RST_RESET_REG_REV_ID, align 4
  %7 = call i32 @ATH_READ_REG(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @REV_ID_MAJOR_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %106 [
    i32 141, label %12
    i32 140, label %30
    i32 139, label %35
    i32 138, label %40
    i32 137, label %45
    i32 136, label %61
    i32 135, label %66
    i32 134, label %71
    i32 133, label %76
    i32 132, label %81
    i32 131, label %86
    i32 130, label %91
    i32 129, label %96
    i32 128, label %101
  ]

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @AR71XX_REV_ID_MINOR_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @AR71XX_REV_ID_REVISION_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @AR71XX_REV_ID_REVISION_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  store i32* @ar71xx_chip_def, i32** @ar71xx_cpu_ops, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %29 [
    i32 146, label %23
    i32 145, label %25
    i32 144, label %27
  ]

23:                                               ; preds = %12
  %24 = load i32, i32* @AR71XX_SOC_AR7130, align 4
  store i32 %24, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %29

25:                                               ; preds = %12
  %26 = load i32, i32* @AR71XX_SOC_AR7141, align 4
  store i32 %26, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @AR71XX_SOC_AR7161, align 4
  store i32 %28, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %29

29:                                               ; preds = %12, %27, %25, %23
  br label %109

30:                                               ; preds = %0
  %31 = load i32, i32* @AR71XX_SOC_AR7240, align 4
  store i32 %31, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  store i32* @ar724x_chip_def, i32** @ar71xx_cpu_ops, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @AR724X_REV_ID_REVISION_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %109

35:                                               ; preds = %0
  %36 = load i32, i32* @AR71XX_SOC_AR7241, align 4
  store i32 %36, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  store i32* @ar724x_chip_def, i32** @ar71xx_cpu_ops, align 8
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @AR724X_REV_ID_REVISION_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  br label %109

40:                                               ; preds = %0
  %41 = load i32, i32* @AR71XX_SOC_AR7242, align 4
  store i32 %41, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  store i32* @ar724x_chip_def, i32** @ar71xx_cpu_ops, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @AR724X_REV_ID_REVISION_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %5, align 4
  br label %109

45:                                               ; preds = %0
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @AR91XX_REV_ID_MINOR_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @AR91XX_REV_ID_REVISION_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @AR91XX_REV_ID_REVISION_MASK, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  store i32* @ar91xx_chip_def, i32** @ar71xx_cpu_ops, align 8
  %55 = load i32, i32* %4, align 4
  switch i32 %55, label %60 [
    i32 143, label %56
    i32 142, label %58
  ]

56:                                               ; preds = %45
  %57 = load i32, i32* @AR71XX_SOC_AR9130, align 4
  store i32 %57, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @AR71XX_SOC_AR9132, align 4
  store i32 %59, i32* @ar71xx_soc, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %60

60:                                               ; preds = %45, %58, %56
  br label %109

61:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @AR933X_REV_ID_REVISION_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  store i32* @ar933x_chip_def, i32** @ar71xx_cpu_ops, align 8
  %65 = load i32, i32* @AR71XX_SOC_AR9330, align 4
  store i32 %65, i32* @ar71xx_soc, align 4
  br label %109

66:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @AR933X_REV_ID_REVISION_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  %70 = load i32, i32* @AR71XX_SOC_AR9331, align 4
  store i32 %70, i32* @ar71xx_soc, align 4
  store i32* @ar933x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

71:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @AR934X_REV_ID_REVISION_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  %75 = load i32, i32* @AR71XX_SOC_AR9341, align 4
  store i32 %75, i32* @ar71xx_soc, align 4
  store i32* @ar934x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

76:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @AR934X_REV_ID_REVISION_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  %80 = load i32, i32* @AR71XX_SOC_AR9342, align 4
  store i32 %80, i32* @ar71xx_soc, align 4
  store i32* @ar934x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

81:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @AR934X_REV_ID_REVISION_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  %85 = load i32, i32* @AR71XX_SOC_AR9344, align 4
  store i32 %85, i32* @ar71xx_soc, align 4
  store i32* @ar934x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

86:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @QCA953X_REV_ID_REVISION_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  %90 = load i32, i32* @AR71XX_SOC_QCA9533, align 4
  store i32 %90, i32* @ar71xx_soc, align 4
  store i32* @qca953x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

91:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @QCA953X_REV_ID_REVISION_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %5, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  %95 = load i32, i32* @AR71XX_SOC_QCA9533_V2, align 4
  store i32 %95, i32* @ar71xx_soc, align 4
  store i32* @qca953x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

96:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @QCA955X_REV_ID_REVISION_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  %100 = load i32, i32* @AR71XX_SOC_QCA9556, align 4
  store i32 %100, i32* @ar71xx_soc, align 4
  store i32* @qca955x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

101:                                              ; preds = %0
  store i32 0, i32* %4, align 4
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @QCA955X_REV_ID_REVISION_MASK, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %1, align 8
  %105 = load i32, i32* @AR71XX_SOC_QCA9558, align 4
  store i32 %105, i32* @ar71xx_soc, align 4
  store i32* @qca955x_chip_def, i32** @ar71xx_cpu_ops, align 8
  br label %109

106:                                              ; preds = %0
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %60, %40, %35, %30, %29
  %110 = load i32, i32* @ar71xx_sys_type, align 4
  %111 = load i8*, i8** %1, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @sprintf(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %111, i32 %112)
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
