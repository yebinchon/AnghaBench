; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_parse_mw_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_parse_mw_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%c %s %jx %s %jx %s %jx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@DEFAULT_MW_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@DEFAULT_MW_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"NTB_TOOL_WARN: pattern is not supported with read command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*, i64*, i64*, i32*)* @parse_mw_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mw_buf(i8* %0, i8* %1, i64* %2, i64* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [8 x i8], align 1
  %15 = alloca [8 x i8], align 1
  %16 = alloca [8 x i8], align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %29 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i64* %17, i8* %27, i64* %18, i8* %28, i64* %19)
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 87
  br i1 %33, label %34, label %41

34:                                               ; preds = %6
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 82
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %7, align 4
  br label %184

41:                                               ; preds = %34, %6
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %17, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64, i64* %17, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @DEFAULT_MW_OFF, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  store i32 1, i32* %20, align 4
  br label %78

55:                                               ; preds = %41
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %17, align 8
  br label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @DEFAULT_MW_SIZE, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = load i64*, i64** %11, align 8
  store i64 %67, i64* %68, align 8
  store i32 1, i32* %21, align 4
  br label %77

69:                                               ; preds = %55
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %17, align 8
  %75 = load i64*, i64** %12, align 8
  store i64 %74, i64* %75, align 8
  store i32 1, i32* %22, align 4
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %18, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* %18, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @DEFAULT_MW_OFF, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i64 [ %89, %88 ], [ %91, %90 ]
  %94 = load i64*, i64** %10, align 8
  store i64 %93, i64* %94, align 8
  store i32 1, i32* %20, align 4
  br label %124

95:                                               ; preds = %81, %78
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %18, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i64, i64* %18, align 8
  br label %109

107:                                              ; preds = %102
  %108 = load i64, i64* @DEFAULT_MW_SIZE, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  store i32 1, i32* %21, align 4
  br label %123

112:                                              ; preds = %98, %95
  %113 = load i32, i32* %22, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %18, align 8
  %121 = load i64*, i64** %12, align 8
  store i64 %120, i64* %121, align 8
  store i32 1, i32* %22, align 4
  br label %122

122:                                              ; preds = %119, %115, %112
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %19, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i64, i64* %19, align 8
  br label %138

136:                                              ; preds = %131
  %137 = load i64, i64* @DEFAULT_MW_OFF, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %135, %134 ], [ %137, %136 ]
  %140 = load i64*, i64** %10, align 8
  store i64 %139, i64* %140, align 8
  br label %170

141:                                              ; preds = %127, %124
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %19, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i64, i64* %19, align 8
  br label %155

153:                                              ; preds = %148
  %154 = load i64, i64* @DEFAULT_MW_SIZE, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i64 [ %152, %151 ], [ %154, %153 ]
  %157 = load i64*, i64** %11, align 8
  store i64 %156, i64* %157, align 8
  br label %169

158:                                              ; preds = %144, %141
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %19, align 8
  %167 = load i64*, i64** %12, align 8
  store i64 %166, i64* %167, align 8
  store i32 1, i32* %22, align 4
  br label %168

168:                                              ; preds = %165, %161, %158
  br label %169

169:                                              ; preds = %168, %155
  br label %170

170:                                              ; preds = %169, %138
  %171 = load i32, i32* %22, align 4
  %172 = load i32*, i32** %13, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %22, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load i8*, i8** %9, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 82
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %175, %170
  %183 = load i32, i32* %23, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %182, %39
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i64*, i8*, i64*, i8*, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
