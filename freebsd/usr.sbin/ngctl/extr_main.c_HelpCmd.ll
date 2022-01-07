; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_HelpCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_HelpCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngcmd = type { i8*, i8*, i8**, i8* }

@.str = private unnamed_addr constant [21 x i8] c"Available commands:\0A\00", align 1
@cmds = common dso_local global %struct.ngcmd** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  %-10s %s\0A\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"usage:    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Aliases:  \00", align 1
@MAX_CMD_ALIAS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Summary:  %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Description:\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @HelpCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HelpCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ngcmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [65 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %67 [
    i32 0, label %17
    i32 1, label %17
  ]

17:                                               ; preds = %2, %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %62, %17
  %20 = load %struct.ngcmd**, %struct.ngcmd*** @cmds, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ngcmd*, %struct.ngcmd** %20, i64 %22
  %24 = load %struct.ngcmd*, %struct.ngcmd** %23, align 8
  %25 = icmp ne %struct.ngcmd* %24, null
  br i1 %25, label %26, label %65

26:                                               ; preds = %19
  %27 = load %struct.ngcmd**, %struct.ngcmd*** @cmds, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ngcmd*, %struct.ngcmd** %27, i64 %29
  %31 = load %struct.ngcmd*, %struct.ngcmd** %30, align 8
  store %struct.ngcmd* %31, %struct.ngcmd** %6, align 8
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %33 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %34 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %32, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %52, %26
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @isspace(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i1 [ false, %38 ], [ %48, %43 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %38

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %58 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %59 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %19

65:                                               ; preds = %19
  %66 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %187

67:                                               ; preds = %2
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = call %struct.ngcmd* @FindCommand(i8* %70)
  store %struct.ngcmd* %71, %struct.ngcmd** %6, align 8
  %72 = icmp ne %struct.ngcmd* %71, null
  br i1 %72, label %73, label %184

73:                                               ; preds = %67
  %74 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %75 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %79 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %113

84:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %110
  %87 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %88 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %87, i32 0, i32 2
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @MAX_CMD_ALIAS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %86
  %100 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %101 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %99, %86
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %112

110:                                              ; preds = %99
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %86

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %73
  %114 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %115 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %119 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %183

122:                                              ; preds = %113
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %124 = load %struct.ngcmd*, %struct.ngcmd** %6, align 8
  %125 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %11, align 8
  br label %127

127:                                              ; preds = %177, %122
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %182

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %138, %132
  %134 = load i8*, i8** %11, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @isspace(i8 signext %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %11, align 8
  br label %133

141:                                              ; preds = %133
  %142 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @snprintf(i8* %142, i32 65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %143)
  store i32 %144, i32* %13, align 4
  %145 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %146 = call i32 @strlen(i8* %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %174, label %153

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %168, %153
  %155 = load i32, i32* %14, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = call i32 @isspace(i8 signext %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %157, %154
  %167 = phi i1 [ false, %154 ], [ %165, %157 ]
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 %171
  store i8 0, i8* %172, align 1
  br label %154

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %141
  %175 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %14, align 4
  %179 = load i8*, i8** %11, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %11, align 8
  br label %127

182:                                              ; preds = %127
  br label %183

183:                                              ; preds = %182, %113
  br label %184

184:                                              ; preds = %183, %67
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %65
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local %struct.ngcmd* @FindCommand(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
