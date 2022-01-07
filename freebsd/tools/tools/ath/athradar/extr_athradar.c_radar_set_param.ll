; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radar_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_radar_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radarhandler = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@DFS_PARAM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"firpwr\00", align 1
@DFS_PARAM_FIRPWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"rrssi\00", align 1
@DFS_PARAM_RRSSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@DFS_PARAM_HEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"prssi\00", align 1
@DFS_PARAM_PRSSI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"inband\00", align 1
@DFS_PARAM_INBAND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"relpwr\00", align 1
@DFS_PARAM_RELPWR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"relstep\00", align 1
@DFS_PARAM_RELSTEP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@DFS_PARAM_MAXLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"usefir128\00", align 1
@DFS_PARAM_USEFIR128 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"blockradar\00", align 1
@DFS_PARAM_BLOCKRADAR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"enmaxrssi\00", align 1
@DFS_PARAM_MAXRSSI_EN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"extchannel\00", align 1
@DFS_PARAM_EN_EXTCH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"enrelpwr\00", align 1
@DFS_PARAM_RELPWR_EN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"en_relstep_check\00", align 1
@DFS_PARAM_RELSTEP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radarhandler*, i8*, i8*)* @radar_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radar_set_param(%struct.radarhandler* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radarhandler*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.radarhandler* %0, %struct.radarhandler** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32 @atoi(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %16 = load i32, i32* @DFS_PARAM_ENABLE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @radarset(%struct.radarhandler* %15, i32 %16, i32 %17)
  br label %160

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %25 = load i32, i32* @DFS_PARAM_FIRPWR, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @radarset(%struct.radarhandler* %24, i32 %25, i32 %26)
  br label %159

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %34 = load i32, i32* @DFS_PARAM_RRSSI, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @radarset(%struct.radarhandler* %33, i32 %34, i32 %35)
  br label %158

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %43 = load i32, i32* @DFS_PARAM_HEIGHT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @radarset(%struct.radarhandler* %42, i32 %43, i32 %44)
  br label %157

46:                                               ; preds = %37
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %52 = load i32, i32* @DFS_PARAM_PRSSI, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @radarset(%struct.radarhandler* %51, i32 %52, i32 %53)
  br label %156

55:                                               ; preds = %46
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %61 = load i32, i32* @DFS_PARAM_INBAND, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @radarset(%struct.radarhandler* %60, i32 %61, i32 %62)
  br label %155

64:                                               ; preds = %55
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %70 = load i32, i32* @DFS_PARAM_RELPWR, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @radarset(%struct.radarhandler* %69, i32 %70, i32 %71)
  br label %154

73:                                               ; preds = %64
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %79 = load i32, i32* @DFS_PARAM_RELSTEP, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @radarset(%struct.radarhandler* %78, i32 %79, i32 %80)
  br label %153

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %88 = load i32, i32* @DFS_PARAM_MAXLEN, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @radarset(%struct.radarhandler* %87, i32 %88, i32 %89)
  br label %152

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %97 = load i32, i32* @DFS_PARAM_USEFIR128, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @radarset(%struct.radarhandler* %96, i32 %97, i32 %98)
  br label %151

100:                                              ; preds = %91
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %106 = load i32, i32* @DFS_PARAM_BLOCKRADAR, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @radarset(%struct.radarhandler* %105, i32 %106, i32 %107)
  br label %150

109:                                              ; preds = %100
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %115 = load i32, i32* @DFS_PARAM_MAXRSSI_EN, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @radarset(%struct.radarhandler* %114, i32 %115, i32 %116)
  br label %149

118:                                              ; preds = %109
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %124 = load i32, i32* @DFS_PARAM_EN_EXTCH, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @radarset(%struct.radarhandler* %123, i32 %124, i32 %125)
  br label %148

127:                                              ; preds = %118
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %133 = load i32, i32* @DFS_PARAM_RELPWR_EN, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @radarset(%struct.radarhandler* %132, i32 %133, i32 %134)
  br label %147

136:                                              ; preds = %127
  %137 = load i8*, i8** %6, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.radarhandler*, %struct.radarhandler** %5, align 8
  %142 = load i32, i32* @DFS_PARAM_RELSTEP_EN, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @radarset(%struct.radarhandler* %141, i32 %142, i32 %143)
  br label %146

145:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %161

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %131
  br label %148

148:                                              ; preds = %147, %122
  br label %149

149:                                              ; preds = %148, %113
  br label %150

150:                                              ; preds = %149, %104
  br label %151

151:                                              ; preds = %150, %95
  br label %152

152:                                              ; preds = %151, %86
  br label %153

153:                                              ; preds = %152, %77
  br label %154

154:                                              ; preds = %153, %68
  br label %155

155:                                              ; preds = %154, %59
  br label %156

156:                                              ; preds = %155, %50
  br label %157

157:                                              ; preds = %156, %41
  br label %158

158:                                              ; preds = %157, %32
  br label %159

159:                                              ; preds = %158, %23
  br label %160

160:                                              ; preds = %159, %14
  store i32 1, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %145
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @radarset(%struct.radarhandler*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
