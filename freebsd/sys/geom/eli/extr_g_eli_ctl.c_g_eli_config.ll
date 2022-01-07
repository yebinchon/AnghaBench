; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@G_ELI_VERSION = common dso_local global i64 0, align 8
@G_ELI_VERSION_06 = common dso_local global i64 0, align 8
@G_ELI_VERSION_05 = common dso_local global i64 0, align 8
@G_ELI_VERSION_07 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Userland and kernel parts are out of sync.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"onetime\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"setkey\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"delkey\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Unknown verb.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_eli_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = call i64* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %137

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @G_ELI_VERSION, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load i64, i64* @G_ELI_VERSION, align 8
  %24 = load i64, i64* @G_ELI_VERSION_06, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @G_ELI_VERSION_05, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %50

32:                                               ; preds = %26, %22
  %33 = load i64, i64* @G_ELI_VERSION, align 8
  %34 = load i64, i64* @G_ELI_VERSION_07, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @G_ELI_VERSION_05, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @G_ELI_VERSION_06, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  br label %50

47:                                               ; preds = %41, %32
  %48 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %49 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %137

50:                                               ; preds = %46, %31, %17
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %56 = load %struct.g_class*, %struct.g_class** %5, align 8
  %57 = call i32 @g_eli_ctl_attach(%struct.gctl_req* %55, %struct.g_class* %56)
  br label %137

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %68 = load %struct.g_class*, %struct.g_class** %5, align 8
  %69 = call i32 @g_eli_ctl_detach(%struct.gctl_req* %67, %struct.g_class* %68)
  br label %136

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %76 = load %struct.g_class*, %struct.g_class** %5, align 8
  %77 = call i32 @g_eli_ctl_onetime(%struct.gctl_req* %75, %struct.g_class* %76)
  br label %135

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %84 = load %struct.g_class*, %struct.g_class** %5, align 8
  %85 = call i32 @g_eli_ctl_configure(%struct.gctl_req* %83, %struct.g_class* %84)
  br label %134

86:                                               ; preds = %78
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %92 = load %struct.g_class*, %struct.g_class** %5, align 8
  %93 = call i32 @g_eli_ctl_setkey(%struct.gctl_req* %91, %struct.g_class* %92)
  br label %133

94:                                               ; preds = %86
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %100 = load %struct.g_class*, %struct.g_class** %5, align 8
  %101 = call i32 @g_eli_ctl_delkey(%struct.gctl_req* %99, %struct.g_class* %100)
  br label %132

102:                                              ; preds = %94
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %108 = load %struct.g_class*, %struct.g_class** %5, align 8
  %109 = call i32 @g_eli_ctl_suspend(%struct.gctl_req* %107, %struct.g_class* %108)
  br label %131

110:                                              ; preds = %102
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %116 = load %struct.g_class*, %struct.g_class** %5, align 8
  %117 = call i32 @g_eli_ctl_resume(%struct.gctl_req* %115, %struct.g_class* %116)
  br label %130

118:                                              ; preds = %110
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %124 = load %struct.g_class*, %struct.g_class** %5, align 8
  %125 = call i32 @g_eli_ctl_kill(%struct.gctl_req* %123, %struct.g_class* %124)
  br label %129

126:                                              ; preds = %118
  %127 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %128 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131, %98
  br label %133

133:                                              ; preds = %132, %90
  br label %134

134:                                              ; preds = %133, %82
  br label %135

135:                                              ; preds = %134, %74
  br label %136

136:                                              ; preds = %135, %66
  br label %137

137:                                              ; preds = %13, %47, %136, %54
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_eli_ctl_attach(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_detach(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_onetime(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_configure(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_setkey(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_delkey(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_suspend(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_resume(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_eli_ctl_kill(%struct.gctl_req*, %struct.g_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
