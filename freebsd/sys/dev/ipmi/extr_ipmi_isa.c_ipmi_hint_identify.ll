; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_hint_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_isa.c_ipmi_hint_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_get_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"KCS\00", align 1
@KCS_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SMIC\00", align 1
@SMIC_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"BT\00", align 1
@BT_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid mode %s\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"maddr\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Invalid register spacing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipmi_get_info*)* @ipmi_hint_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_hint_identify(i32 %0, %struct.ipmi_get_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_get_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ipmi_get_info* %1, %struct.ipmi_get_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @device_get_name(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @device_get_unit(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @resource_string_value(i8* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

20:                                               ; preds = %2
  %21 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %22 = call i32 @bzero(%struct.ipmi_get_info* %21, i32 16)
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* @KCS_MODE, align 4
  %28 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %29 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %31 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %30, i32 0, i32 0
  store i32 3234, i32* %31, align 4
  %32 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %33 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %35 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %70

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @SMIC_MODE, align 4
  %42 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %43 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %45 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %44, i32 0, i32 0
  store i32 3241, i32* %45, align 4
  %46 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %47 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %49 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  br label %69

50:                                               ; preds = %36
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @BT_MODE, align 4
  %56 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %57 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %59 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %58, i32 0, i32 0
  store i32 228, i32* %59, align 4
  %60 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %61 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %63 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  br label %68

64:                                               ; preds = %50
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 0, i32* %3, align 4
  br label %136

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %26
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @bus_delete_resource(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SYS_RES_IOPORT, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @bus_delete_resource(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @resource_int_value(i8* %87, i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %97 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %99 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %115

100:                                              ; preds = %91, %86
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @resource_int_value(i8* %101, i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %111 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %113 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %105, %100
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @resource_int_value(i8* %116, i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load i32, i32* %10, align 4
  switch i32 %121, label %131 [
    i32 8, label %122
    i32 16, label %125
    i32 32, label %128
  ]

122:                                              ; preds = %120
  %123 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %124 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %134

125:                                              ; preds = %120
  %126 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %127 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %126, i32 0, i32 2
  store i32 2, i32* %127, align 4
  br label %134

128:                                              ; preds = %120
  %129 = load %struct.ipmi_get_info*, %struct.ipmi_get_info** %5, align 8
  %130 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %129, i32 0, i32 2
  store i32 4, i32* %130, align 4
  br label %134

131:                                              ; preds = %120
  %132 = load i32, i32* %4, align 4
  %133 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %136

134:                                              ; preds = %128, %125, %122
  br label %135

135:                                              ; preds = %134, %115
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %131, %64, %19
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i32 @bzero(%struct.ipmi_get_info*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
