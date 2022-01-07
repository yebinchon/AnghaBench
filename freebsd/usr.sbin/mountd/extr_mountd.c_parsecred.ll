; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_parsecred.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_parsecred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xucred = type { i32, i32*, i32, i32 }
%struct.passwd = type { i32, i32, i32 }
%struct.group = type { i32 }

@XU_NGROUPS = common dso_local global i32 0, align 4
@XUCRED_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown user: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"too many groups\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown group: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.xucred*)* @parsecred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsecred(i8* %0, %struct.xucred* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xucred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.xucred* %1, %struct.xucred** %4, align 8
  %14 = load i32, i32* @XU_NGROUPS, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @XUCRED_VERSION, align 4
  %20 = load %struct.xucred*, %struct.xucred** %4, align 8
  %21 = getelementptr inbounds %struct.xucred, %struct.xucred* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xucred*, %struct.xucred** %4, align 8
  %23 = getelementptr inbounds %struct.xucred, %struct.xucred* %22, i32 0, i32 0
  store i32 65534, i32* %23, align 8
  %24 = load %struct.xucred*, %struct.xucred** %4, align 8
  %25 = getelementptr inbounds %struct.xucred, %struct.xucred* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 65533, i32* %27, align 4
  %28 = load %struct.xucred*, %struct.xucred** %4, align 8
  %29 = getelementptr inbounds %struct.xucred, %struct.xucred* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %7, align 8
  %31 = call i8* @strsep_quote(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %2
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @atoi(i8* %42)
  %44 = call %struct.passwd* @getpwuid(i8* %43)
  store %struct.passwd* %44, %struct.passwd** %8, align 8
  br label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %5, align 8
  %47 = call %struct.passwd* @getpwnam(i8* %46)
  store %struct.passwd* %47, %struct.passwd** %8, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %112

51:                                               ; preds = %48
  %52 = load %struct.passwd*, %struct.passwd** %8, align 8
  %53 = icmp eq %struct.passwd* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @syslog(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 1, i32* %13, align 4
  br label %225

58:                                               ; preds = %51
  %59 = load %struct.passwd*, %struct.passwd** %8, align 8
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xucred*, %struct.xucred** %4, align 8
  %63 = getelementptr inbounds %struct.xucred, %struct.xucred* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @XU_NGROUPS, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load %struct.passwd*, %struct.passwd** %8, align 8
  %67 = getelementptr inbounds %struct.passwd, %struct.passwd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.passwd*, %struct.passwd** %8, align 8
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @getgrouplist(i32 %68, i32 %71, i8** %18, i32* %12)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* @LOG_ERR, align 4
  %76 = call i32 (i32, i8*, ...) @syslog(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @XU_NGROUPS, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.xucred*, %struct.xucred** %4, align 8
  %83 = getelementptr inbounds %struct.xucred, %struct.xucred* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds i8*, i8** %18, i64 0
  %85 = load i8*, i8** %84, align 16
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.xucred*, %struct.xucred** %4, align 8
  %88 = getelementptr inbounds %struct.xucred, %struct.xucred* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  store i32 2, i32* %6, align 4
  br label %91

91:                                               ; preds = %108, %79
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %18, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.xucred*, %struct.xucred** %4, align 8
  %102 = getelementptr inbounds %struct.xucred, %struct.xucred* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %91

111:                                              ; preds = %91
  store i32 1, i32* %13, align 4
  br label %225

112:                                              ; preds = %48
  %113 = load %struct.passwd*, %struct.passwd** %8, align 8
  %114 = icmp ne %struct.passwd* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.passwd*, %struct.passwd** %8, align 8
  %117 = getelementptr inbounds %struct.passwd, %struct.passwd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.xucred*, %struct.xucred** %4, align 8
  %120 = getelementptr inbounds %struct.xucred, %struct.xucred* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %142

121:                                              ; preds = %112
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @isdigit(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 45
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %121
  %132 = load i8*, i8** %5, align 8
  %133 = call i8* @atoi(i8* %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.xucred*, %struct.xucred** %4, align 8
  %136 = getelementptr inbounds %struct.xucred, %struct.xucred* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %141

137:                                              ; preds = %126
  %138 = load i32, i32* @LOG_ERR, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 (i32, i8*, ...) @syslog(i32 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %139)
  store i32 1, i32* %13, align 4
  br label %225

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %115
  %143 = load %struct.xucred*, %struct.xucred** %4, align 8
  %144 = getelementptr inbounds %struct.xucred, %struct.xucred* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %206, %189, %142
  %146 = load i8*, i8** %7, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i8*, i8** %7, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.xucred*, %struct.xucred** %4, align 8
  %155 = getelementptr inbounds %struct.xucred, %struct.xucred* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @XU_NGROUPS, align 4
  %158 = icmp slt i32 %156, %157
  br label %159

159:                                              ; preds = %153, %148, %145
  %160 = phi i1 [ false, %148 ], [ false, %145 ], [ %158, %153 ]
  br i1 %160, label %161, label %207

161:                                              ; preds = %159
  %162 = call i8* @strsep_quote(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %162, i8** %5, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = call i64 @isdigit(i8 signext %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %161
  %168 = load i8*, i8** %5, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 45
  br i1 %171, label %172, label %185

172:                                              ; preds = %167, %161
  %173 = load i8*, i8** %5, align 8
  %174 = call i8* @atoi(i8* %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.xucred*, %struct.xucred** %4, align 8
  %177 = getelementptr inbounds %struct.xucred, %struct.xucred* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.xucred*, %struct.xucred** %4, align 8
  %180 = getelementptr inbounds %struct.xucred, %struct.xucred* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %178, i64 %183
  store i32 %175, i32* %184, align 4
  br label %206

185:                                              ; preds = %167
  %186 = load i8*, i8** %5, align 8
  %187 = call %struct.group* @getgrnam(i8* %186)
  store %struct.group* %187, %struct.group** %9, align 8
  %188 = icmp eq %struct.group* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* @LOG_ERR, align 4
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 (i32, i8*, ...) @syslog(i32 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %191)
  br label %145

193:                                              ; preds = %185
  %194 = load %struct.group*, %struct.group** %9, align 8
  %195 = getelementptr inbounds %struct.group, %struct.group* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.xucred*, %struct.xucred** %4, align 8
  %198 = getelementptr inbounds %struct.xucred, %struct.xucred* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.xucred*, %struct.xucred** %4, align 8
  %201 = getelementptr inbounds %struct.xucred, %struct.xucred* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  store i32 %196, i32* %205, align 4
  br label %206

206:                                              ; preds = %193, %172
  br label %145

207:                                              ; preds = %159
  %208 = load i8*, i8** %7, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i8*, i8** %7, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %210
  %216 = load %struct.xucred*, %struct.xucred** %4, align 8
  %217 = getelementptr inbounds %struct.xucred, %struct.xucred* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @XU_NGROUPS, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32, i32* @LOG_ERR, align 4
  %223 = call i32 (i32, i8*, ...) @syslog(i32 %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %215, %210, %207
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %224, %137, %111, %54
  %226 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %13, align 4
  switch i32 %227, label %229 [
    i32 0, label %228
    i32 1, label %228
  ]

228:                                              ; preds = %225, %225
  ret void

229:                                              ; preds = %225
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep_quote(i8**, i8*) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local %struct.passwd* @getpwuid(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i64 @getgrouplist(i32, i32, i8**, i32*) #2

declare dso_local %struct.group* @getgrnam(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
