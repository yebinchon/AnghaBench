; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crom_context = type { i32 }
%struct.csrreg = type { i32, i32 }
%struct.csrdirectory = type { i32, i32, i32* }

@CSRTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"offset=0x%04x(%d)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"len=%d crc=0x%04x(%s) \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"module_vendor_ID\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hardware_version\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"node_capabilities\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"unit_spec_ID\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"unit_sw_version\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"logical_unit_number\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"model_ID\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"command_set_spec_ID\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"command_set\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"unit_characteristics\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"command_set_revision\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"firmware_revision\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"reconnect_timeout\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"management_agent\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"text_leaf\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"unit_directory\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"logical_unit_directory\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @crom_desc(%struct.crom_context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.crom_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csrreg*, align 8
  %8 = alloca %struct.csrdirectory*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.crom_context* %0, %struct.crom_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %12 = call %struct.csrreg* @crom_get(%struct.crom_context* %11)
  store %struct.csrreg* %12, %struct.csrreg** %7, align 8
  %13 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %14 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CSRTYPE_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %76 [
    i32 129, label %18
    i32 131, label %20
    i32 128, label %37
    i32 130, label %37
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  store i8 0, i8* %19, align 1
  br label %76

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %24 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %27 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  br label %76

37:                                               ; preds = %3, %3
  %38 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %39 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %40 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %38, i64 %42
  %44 = bitcast %struct.csrreg* %43 to %struct.csrdirectory*
  store %struct.csrdirectory* %44, %struct.csrdirectory** %8, align 8
  %45 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %46 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %50 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @crom_crc(i32* %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %56 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %59 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.csrdirectory*, %struct.csrdirectory** %8, align 8
  %63 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i8* %67)
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i8*, i8** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %37, %3, %20, %18
  %77 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %78 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %111 [
    i32 3, label %80
    i32 4, label %81
    i32 12, label %82
    i32 18, label %83
    i32 19, label %84
    i32 20, label %91
    i32 23, label %92
    i32 56, label %93
    i32 57, label %94
    i32 58, label %95
    i32 59, label %96
    i32 60, label %97
    i32 61, label %98
    i32 84, label %99
    i32 129, label %100
    i32 209, label %109
    i32 212, label %110
  ]

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %112

81:                                               ; preds = %76
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %112

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %112

83:                                               ; preds = %76
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %112

84:                                               ; preds = %76
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  %85 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %86 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @crom_desc_specver(i32 0, i32 %87, i8* %88, i32 %89)
  br label %112

91:                                               ; preds = %76
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %112

92:                                               ; preds = %76
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %112

93:                                               ; preds = %76
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %112

94:                                               ; preds = %76
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %112

95:                                               ; preds = %76
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %112

96:                                               ; preds = %76
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %112

97:                                               ; preds = %76
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %112

98:                                               ; preds = %76
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %112

99:                                               ; preds = %76
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %112

100:                                              ; preds = %76
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  %101 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @crom_parse_text(%struct.crom_context* %101, i8* %106, i32 %107)
  br label %112

109:                                              ; preds = %76
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %112

110:                                              ; preds = %76
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %112

111:                                              ; preds = %76
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %112

112:                                              ; preds = %111, %110, %109, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %84, %83, %82, %81, %80
  %113 = load i8*, i8** %9, align 8
  ret i8* %113
}

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @crom_crc(i32*, i32) #1

declare dso_local i32 @crom_desc_specver(i32, i32, i8*, i32) #1

declare dso_local i32 @crom_parse_text(%struct.crom_context*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
