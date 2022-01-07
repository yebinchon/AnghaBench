; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_snd_str2afmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_snd_str2afmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%5[^:]:%6s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"quad\00", align 1
@AFMT_CHANNEL_MAX = common dso_local global i32 0, align 4
@AFMT_EXTCHANNEL_MAX = common dso_local global i32 0, align 4
@afmt_tab = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_str2afmt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 8)
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 8)
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %183

26:                                               ; preds = %19
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %28 = call i32 @strlcpy(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %36, 1
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %37, %39
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %183

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %183

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %26
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32* %4)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %53 = call i64 @strcasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 2, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %63 = call i64 @strcasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 4, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %183

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %55
  br label %107

70:                                               ; preds = %46
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @AFMT_CHANNEL_MAX, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %73
  store i32 0, i32* %2, align 4
  br label %183

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %106

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @AFMT_EXTCHANNEL_MAX, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %85
  store i32 0, i32* %2, align 4
  br label %183

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @AFMT_CHANNEL_MAX, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96, %93
  store i32 0, i32* %2, align 4
  br label %183

103:                                              ; preds = %96
  br label %105

104:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  br label %183

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105, %81
  br label %107

107:                                              ; preds = %106, %69
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %179, %107
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %182

116:                                              ; preds = %108
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %124 = call i64 @strcasecmp(i8* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %116
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %179

135:                                              ; preds = %126
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %143 = call i64 @strcasecmp(i8* %141, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %135
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %179

154:                                              ; preds = %145
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %162 = call i64 @strcasecmp(i8* %160, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %179

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %135
  br label %167

167:                                              ; preds = %166, %116
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @afmt_tab, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @SND_FORMAT(i32 %173, i32 %176, i32 %177)
  store i32 %178, i32* %2, align 4
  br label %183

179:                                              ; preds = %164, %153, %134
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %108

182:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %167, %104, %102, %92, %80, %66, %44, %42, %25
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @SND_FORMAT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
