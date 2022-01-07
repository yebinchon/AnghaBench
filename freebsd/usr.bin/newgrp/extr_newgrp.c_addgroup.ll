; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_addgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_addgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.group = type { i64, i8**, i8* }

@.str = private unnamed_addr constant [19 x i8] c"%s: bad group name\00", align 1
@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Sorry\0A\00", align 1
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"getgroups\00", align 1
@PRIV_START = common dso_local global i32 0, align 4
@PRIV_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"setgroups\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"too many groups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @addgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addgroup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %15 = call i64 (...) @getegid()
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call %struct.group* @getgrnam(i8* %16)
  store %struct.group* %17, %struct.group** %10, align 8
  %18 = icmp eq %struct.group* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strtol(i8* %20, i8** %11, i32 10)
  store i64 %21, i64* %4, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.group* @getgrgid(i64 %29)
  store %struct.group* %30, %struct.group** %10, align 8
  %31 = icmp eq %struct.group* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %23, %19
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %242

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %1
  store i32 0, i32* %6, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.group*, %struct.group** %10, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.group*, %struct.group** %10, align 8
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  store i8** %48, i8*** %14, align 8
  br label %49

49:                                               ; preds = %63, %45
  %50 = load i8**, i8*** %14, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i8**, i8*** %14, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %55, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i8**, i8*** %14, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %14, align 8
  br label %49

66:                                               ; preds = %61, %49
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %66
  %70 = load %struct.group*, %struct.group** %10, align 8
  %71 = getelementptr inbounds %struct.group, %struct.group* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %69
  %77 = call i64 (...) @getuid()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = call i8* @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %242

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.group*, %struct.group** %10, align 8
  %87 = getelementptr inbounds %struct.group, %struct.group* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @crypt(i8* %85, i8* %88)
  store i8* %89, i8** %13, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %84
  %93 = load %struct.group*, %struct.group** %10, align 8
  %94 = getelementptr inbounds %struct.group, %struct.group* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i64 @strcmp(i8* %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92, %84
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %242

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %76, %69, %66
  %104 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %105 = call i32 @sysconf(i32 %104)
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = mul i64 8, %108
  %110 = trunc i64 %109 to i32
  %111 = call i64* @malloc(i32 %110)
  store i64* %111, i64** %3, align 8
  %112 = icmp eq i64* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %103
  %116 = load i64, i64* %5, align 8
  %117 = load i64*, i64** %3, align 8
  %118 = call i32 @getgroups(i64 %116, i64* %117)
  store i32 %118, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %239

122:                                              ; preds = %115
  %123 = load %struct.group*, %struct.group** %10, align 8
  %124 = getelementptr inbounds %struct.group, %struct.group* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load %struct.group*, %struct.group** %10, align 8
  %130 = getelementptr inbounds %struct.group, %struct.group* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @inarray(i64 %131, i64* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %185

136:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i64*, i64** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.group*, %struct.group** %10, align 8
  %148 = getelementptr inbounds %struct.group, %struct.group* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %156

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %137

156:                                              ; preds = %151, %137
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %8, align 4
  %159 = load i64*, i64** %3, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64*, i64** %3, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memmove(i64* %162, i64* %167, i32 %173)
  %175 = load i32, i32* @PRIV_START, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i64*, i64** %3, align 8
  %178 = call i64 @setgroups(i32 %176, i64* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %156
  %181 = load i32, i32* @PRIV_END, align 4
  %182 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %239

183:                                              ; preds = %156
  %184 = load i32, i32* @PRIV_END, align 4
  br label %185

185:                                              ; preds = %183, %128, %122
  %186 = load i32, i32* @PRIV_START, align 4
  %187 = load %struct.group*, %struct.group** %10, align 8
  %188 = getelementptr inbounds %struct.group, %struct.group* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @setgid(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, i32* @PRIV_END, align 4
  %194 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %239

195:                                              ; preds = %185
  %196 = load i32, i32* @PRIV_END, align 4
  %197 = load %struct.group*, %struct.group** %10, align 8
  %198 = getelementptr inbounds %struct.group, %struct.group* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %3, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  store i64 %199, i64* %201, align 8
  %202 = load i64, i64* %9, align 8
  %203 = load %struct.group*, %struct.group** %10, align 8
  %204 = getelementptr inbounds %struct.group, %struct.group* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %202, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %195
  %208 = load i64, i64* %9, align 8
  %209 = load i64*, i64** %3, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i64 @inarray(i64 %208, i64* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %238, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %5, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %237

220:                                              ; preds = %213
  %221 = load i64, i64* %9, align 8
  %222 = load i64*, i64** %3, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i64, i64* %222, i64 %225
  store i64 %221, i64* %226, align 8
  %227 = load i32, i32* @PRIV_START, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i64*, i64** %3, align 8
  %230 = call i64 @setgroups(i32 %228, i64* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %220
  %233 = load i32, i32* @PRIV_END, align 4
  %234 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %239

235:                                              ; preds = %220
  %236 = load i32, i32* @PRIV_END, align 4
  br label %237

237:                                              ; preds = %235, %218
  br label %238

238:                                              ; preds = %237, %207, %195
  br label %239

239:                                              ; preds = %238, %232, %192, %180, %120
  %240 = load i64*, i64** %3, align 8
  %241 = call i32 @free(i64* %240)
  br label %242

242:                                              ; preds = %239, %99, %83, %32
  ret void
}

declare dso_local i64 @getegid(...) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.group* @getgrgid(i64) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i8* @getpass(i8*) #1

declare dso_local i8* @crypt(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getgroups(i64, i64*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @inarray(i64, i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i64 @setgroups(i32, i64*) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
