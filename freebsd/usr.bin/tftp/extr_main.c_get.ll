; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"get \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(files) \00", align 1
@stdin = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@connected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"No remote host specified and no host given for file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"getting from %s:%s to %s [%s]\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@mode = common dso_local global i8* null, align 8
@peer = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i32, i32* @MAXLINE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @strlen(i8* %16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  %25 = call i32 @strlen(i8* %16)
  %26 = sext i32 %25 to i64
  %27 = sub i64 %14, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @stdin, align 4
  %30 = call i32 @fgets(i8* %24, i32 %28, i32 %29)
  %31 = call i32 @makeargv(i8* %16)
  %32 = load i32, i32* @margc, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i8**, i8*** @margv, align 8
  store i8** %33, i8*** %4, align 8
  br label %34

34:                                               ; preds = %19, %2
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @getusage(i8* %40)
  store i32 1, i32* %11, align 4
  br label %201

42:                                               ; preds = %34
  %43 = load i32, i32* @connected, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strrchr(i8* %55, i8 signext 58)
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @getusage(i8* %67)
  store i32 1, i32* %11, align 4
  br label %201

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %46

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73, %42
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %197, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %200

79:                                               ; preds = %75
  %80 = load i8**, i8*** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strrchr(i8* %84, i8 signext 58)
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i8**, i8*** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %8, align 8
  br label %133

94:                                               ; preds = %79
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  store i8 0, i8* %95, align 1
  %97 = load i8**, i8*** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 91
  br i1 %106, label %107, label %126

107:                                              ; preds = %94
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 93
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %117, %107, %94
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @setpeer0(i8* %127, i32* null)
  %129 = load i32, i32* @connected, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %197

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %88
  %134 = load i32, i32* %3, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %171

136:                                              ; preds = %133
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  %142 = load i8*, i8** %141, align 8
  br label %146

143:                                              ; preds = %136
  %144 = load i8*, i8** %8, align 8
  %145 = call i8* @tail(i8* %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i8* [ %142, %139 ], [ %145, %143 ]
  store i8* %147, i8** %7, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @creat(i8* %148, i32 420)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  store i32 1, i32* %11, align 4
  br label %201

155:                                              ; preds = %146
  %156 = load i64, i64* @verbose, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i8*, i8** @hostname, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** @mode, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %159, i8* %160, i8* %161, i8* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32, i32* @peer, align 4
  %166 = load i32, i32* @port, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = load i8*, i8** @mode, align 8
  %170 = call i32 @recvfile(i32 %165, i32 %166, i32 %167, i8* %168, i8* %169)
  br label %200

171:                                              ; preds = %133
  %172 = load i8*, i8** %8, align 8
  %173 = call i8* @tail(i8* %172)
  store i8* %173, i8** %7, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @creat(i8* %174, i32 420)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %179)
  br label %197

181:                                              ; preds = %171
  %182 = load i64, i64* @verbose, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i8*, i8** @hostname, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** @mode, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %185, i8* %186, i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %184, %181
  %191 = load i32, i32* @peer, align 4
  %192 = load i32, i32* @port, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = load i8*, i8** @mode, align 8
  %196 = call i32 @recvfile(i32 %191, i32 %192, i32 %193, i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %190, %178, %131
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %75

200:                                              ; preds = %164, %75
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %200, %152, %58, %37
  %202 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %11, align 4
  switch i32 %203, label %205 [
    i32 0, label %204
    i32 1, label %204
  ]

204:                                              ; preds = %201, %201
  ret void

205:                                              ; preds = %201
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @makeargv(i8*) #2

declare dso_local i32 @getusage(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @setpeer0(i8*, i32*) #2

declare dso_local i8* @tail(i8*) #2

declare dso_local i32 @creat(i8*, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @recvfile(i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
