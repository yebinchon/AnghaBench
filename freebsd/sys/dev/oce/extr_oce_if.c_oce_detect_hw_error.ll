; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_detect_hw_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_detect_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@db = common dso_local global i32 0, align 4
@SLIPORT_STATUS_OFFSET = common dso_local global i32 0, align 4
@SLIPORT_STATUS_ERR_MASK = common dso_local global i32 0, align 4
@SLIPORT_ERROR1_OFFSET = common dso_local global i32 0, align 4
@SLIPORT_ERROR2_OFFSET = common dso_local global i32 0, align 4
@devcfg = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HIGH = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_LOW_MASK = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HI_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Error detected in the card\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ERR: sliport status 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ERR: sliport error1 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ERR: sliport error2 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"UE: %s bit set\0A\00", align 1
@ue_status_low_desc = common dso_local global i32* null, align 8
@ue_status_hi_desc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @oce_detect_hw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_detect_hw_error(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %154

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i64 @IS_XE201(%struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load i32, i32* @db, align 4
  %23 = load i32, i32* @SLIPORT_STATUS_OFFSET, align 4
  %24 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* @db, align 4
  %32 = load i32, i32* @SLIPORT_ERROR1_OFFSET, align 4
  %33 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load i32, i32* @db, align 4
  %36 = load i32, i32* @SLIPORT_ERROR2_OFFSET, align 4
  %37 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %29, %20
  br label %64

39:                                               ; preds = %16
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = load i32, i32* @devcfg, align 4
  %42 = load i32, i32* @PCICFG_UE_STATUS_LOW, align 4
  %43 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load i32, i32* @devcfg, align 4
  %46 = load i32, i32* @PCICFG_UE_STATUS_HIGH, align 4
  %47 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %44, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = load i32, i32* @devcfg, align 4
  %50 = load i32, i32* @PCICFG_UE_STATUS_LOW_MASK, align 4
  %51 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = load i32, i32* @devcfg, align 4
  %54 = load i32, i32* @PCICFG_UE_STATUS_HI_MASK, align 4
  %55 = call i32 @OCE_READ_REG32(%struct.TYPE_5__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %39, %38
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i64, i64* @TRUE, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %69, %64
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %82, %77
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %120, %101
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** @ue_status_low_desc, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %109, %105
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %102

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %125, %98
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %148, %129
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** @ue_status_hi_desc, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %137, %133
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %4, align 4
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %130

153:                                              ; preds = %130
  br label %154

154:                                              ; preds = %15, %153, %126
  ret void
}

declare dso_local i64 @IS_XE201(%struct.TYPE_5__*) #1

declare dso_local i32 @OCE_READ_REG32(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
