; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Select.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@LINE_LEN = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@RADIUS_INADDR_POOL = common dso_local global i64 0, align 8
@SECRETFILE = common dso_local global i32 0, align 4
@PARSE_REDUCE = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: %d: Invalid line\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_Select(%struct.bundle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8*], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @LINE_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.bundle*, %struct.bundle** %4, align 8
  %24 = getelementptr inbounds %struct.bundle, %struct.bundle* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* @INADDR_NONE, align 8
  %27 = call i32 @ipcp_Setup(i32* %25, i64 %26)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %206

28:                                               ; preds = %2
  %29 = load %struct.bundle*, %struct.bundle** %4, align 8
  %30 = getelementptr inbounds %struct.bundle, %struct.bundle* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load %struct.bundle*, %struct.bundle** %4, align 8
  %36 = getelementptr inbounds %struct.bundle, %struct.bundle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INADDR_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %34
  %43 = load %struct.bundle*, %struct.bundle** %4, align 8
  %44 = getelementptr inbounds %struct.bundle, %struct.bundle* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RADIUS_INADDR_POOL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load %struct.bundle*, %struct.bundle** %4, align 8
  %52 = load %struct.bundle*, %struct.bundle** %4, align 8
  %53 = getelementptr inbounds %struct.bundle, %struct.bundle* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ipcp_UseHisIPaddr(%struct.bundle* %51, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %206

60:                                               ; preds = %50
  %61 = load %struct.bundle*, %struct.bundle** %4, align 8
  %62 = getelementptr inbounds %struct.bundle, %struct.bundle* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.bundle*, %struct.bundle** %4, align 8
  %65 = getelementptr inbounds %struct.bundle, %struct.bundle* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ipcp_Setup(i32* %63, i64 %68)
  br label %70

70:                                               ; preds = %60, %42, %34, %28
  %71 = load i32, i32* @SECRETFILE, align 4
  %72 = call i32* @OpenSecret(i32 %71)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %200

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %192, %75
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %181, %111, %89, %76
  %78 = trunc i64 %15 to i32
  %79 = load i32*, i32** %6, align 8
  %80 = call i64 @fgets(i8* %17, i32 %78, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %182

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = getelementptr inbounds i8, i8* %17, i64 0
  %86 = load i8, i8* %85, align 16
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 35
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %77

90:                                               ; preds = %82
  %91 = call i32 @strlen(i8* %17)
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %17, i64 %93
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %96 = call i32 @memset(i8** %95, i8 signext 0, i32 40)
  %97 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %98 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %99 = call i32 @VECSIZE(i8** %98)
  %100 = load i32, i32* @PARSE_REDUCE, align 4
  %101 = call i32 @MakeArgs(i8* %17, i8** %97, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load i32, i32* @LogWARN, align 4
  %105 = load i32, i32* @SECRETFILE, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @log_Printf(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %90
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %77

112:                                              ; preds = %108
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %114 = load i8*, i8** %113, align 16
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %181

118:                                              ; preds = %112
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @CloseSecret(i32* %119)
  %121 = load %struct.bundle*, %struct.bundle** %4, align 8
  %122 = getelementptr inbounds %struct.bundle, %struct.bundle* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.bundle*, %struct.bundle** %4, align 8
  %128 = getelementptr inbounds %struct.bundle, %struct.bundle* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @INADDR_NONE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %161

134:                                              ; preds = %126, %118
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 2
  %139 = load i8*, i8** %138, align 16
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 2
  %145 = load i8*, i8** %144, align 16
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.bundle*, %struct.bundle** %4, align 8
  %150 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 2
  %151 = load i8*, i8** %150, align 16
  %152 = call i32 @ipcp_UseHisaddr(%struct.bundle* %149, i8* %151, i32 1)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %206

155:                                              ; preds = %148, %143, %137, %134
  %156 = load %struct.bundle*, %struct.bundle** %4, align 8
  %157 = getelementptr inbounds %struct.bundle, %struct.bundle* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* @INADDR_NONE, align 8
  %160 = call i32 @ipcp_Setup(i32* %158, i64 %159)
  br label %161

161:                                              ; preds = %155, %126
  %162 = load i32, i32* %7, align 4
  %163 = icmp sgt i32 %162, 3
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 3
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.bundle*, %struct.bundle** %4, align 8
  %177 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @bundle_SetLabel(%struct.bundle* %176, i8* %178)
  br label %180

180:                                              ; preds = %175, %170, %164, %161
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %206

181:                                              ; preds = %112
  br label %77

182:                                              ; preds = %77
  %183 = load i8*, i8** %5, align 8
  %184 = call i8* @strrchr(i8* %183, i8 signext 92)
  store i8* %184, i8** %12, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load i8*, i8** %12, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %5, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @rewind(i32* %195)
  br label %76

197:                                              ; preds = %186, %182
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @CloseSecret(i32* %198)
  br label %200

200:                                              ; preds = %197, %70
  %201 = load %struct.bundle*, %struct.bundle** %4, align 8
  %202 = getelementptr inbounds %struct.bundle, %struct.bundle* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* @INADDR_NONE, align 8
  %205 = call i32 @ipcp_Setup(i32* %203, i64 %204)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %206

206:                                              ; preds = %200, %180, %154, %59, %22
  %207 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ipcp_Setup(i32*, i64) #2

declare dso_local i32 @ipcp_UseHisIPaddr(%struct.bundle*, i64) #2

declare dso_local i32* @OpenSecret(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memset(i8**, i8 signext, i32) #2

declare dso_local i32 @MakeArgs(i8*, i8**, i32, i32) #2

declare dso_local i32 @VECSIZE(i8**) #2

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @CloseSecret(i32*) #2

declare dso_local i32 @ipcp_UseHisaddr(%struct.bundle*, i8*, i32) #2

declare dso_local i32 @bundle_SetLabel(%struct.bundle*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @rewind(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
