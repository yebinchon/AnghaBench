; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_strip_escapes.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote-ext.c_strip_escapes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GIT_EXT_SERVICE\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"GIT_EXT_SERVICE_NOPREFIX\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Bad remote-ext placeholder '%%%c'.\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"remote-ext command has incomplete placeholder\00", align 1
@git_req = common dso_local global i8* null, align 8
@git_req_vhost = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**)* @strip_escapes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_escapes(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  %14 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 @skip_prefix(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 1)
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 1)
  br label %21

21:                                               ; preds = %77, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br label %38

38:                                               ; preds = %31, %28
  %39 = phi i1 [ true, %28 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %38, %21
  %41 = phi i1 [ false, %21 ], [ %39, %38 ]
  br i1 %41, label %42, label %80

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %61 [
    i32 32, label %51
    i32 37, label %51
    i32 115, label %51
    i32 83, label %51
    i32 71, label %52
    i32 86, label %52
  ]

51:                                               ; preds = %45, %45, %45, %45
  br label %68

52:                                               ; preds = %45, %45
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %10, align 1
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %68

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %45, %60
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %59, %51
  store i32 0, i32* %9, align 4
  br label %77

69:                                               ; preds = %42
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 37
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %68
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %21

80:                                               ; preds = %40
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83, %80
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8**, i8*** %7, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i8**, i8*** %7, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  br label %105

105:                                              ; preds = %101, %91
  %106 = load i8, i8* %10, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 2, i32 0
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %169, %105
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %5, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 32
  br label %129

129:                                              ; preds = %122, %119
  %130 = phi i1 [ true, %119 ], [ %128, %122 ]
  br label %131

131:                                              ; preds = %129, %112
  %132 = phi i1 [ false, %112 ], [ %130, %129 ]
  br i1 %132, label %133, label %172

133:                                              ; preds = %131
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133
  %137 = load i8*, i8** %5, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  switch i32 %141, label %154 [
    i32 32, label %142
    i32 37, label %142
    i32 115, label %148
    i32 83, label %151
  ]

142:                                              ; preds = %136, %136
  %143 = load i8*, i8** %5, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext %146)
  br label %154

148:                                              ; preds = %136
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %149)
  br label %154

151:                                              ; preds = %136
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %152)
  br label %154

154:                                              ; preds = %136, %151, %148, %142
  store i32 0, i32* %9, align 4
  br label %169

155:                                              ; preds = %133
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  switch i32 %160, label %162 [
    i32 37, label %161
  ]

161:                                              ; preds = %155
  store i32 1, i32* %9, align 4
  br label %168

162:                                              ; preds = %155
  %163 = load i8*, i8** %5, align 8
  %164 = load i64, i64* %8, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext %166)
  br label %168

168:                                              ; preds = %162, %161
  br label %169

169:                                              ; preds = %168, %154
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %8, align 8
  br label %112

172:                                              ; preds = %131
  %173 = load i8, i8* %10, align 1
  %174 = sext i8 %173 to i32
  switch i32 %174, label %179 [
    i32 71, label %175
    i32 86, label %177
  ]

175:                                              ; preds = %172
  %176 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %176, i8** @git_req, align 8
  store i8* null, i8** %4, align 8
  br label %181

177:                                              ; preds = %172
  %178 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %178, i8** @git_req_vhost, align 8
  store i8* null, i8** %4, align 8
  br label %181

179:                                              ; preds = %172
  %180 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %180, i8** %4, align 8
  br label %181

181:                                              ; preds = %179, %177, %175
  %182 = load i8*, i8** %4, align 8
  ret i8* %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
