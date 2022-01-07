; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_s_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_s_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c".h\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"#include <stdio.h>\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"#include <stdlib.h> /* getenv, exit */\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"#include <rpc/pmap_clnt.h> /* for pmap_unset */\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"#include <string.h> /* strcmp */\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"#include <rpc/rpc_com.h>\0A\00", align 1
@svcclosetime = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@indefinitewait = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@exitnow = common dso_local global i32 0, align 4
@inetdflag = common dso_local global i64 0, align 8
@pmflag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"#include <signal.h>\0A\00", align 1
@timerflag = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"#include <sys/ttycom.h> /* TIOCNOTTY */\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"#include <sys/sysent.h> /* getdtablesize, open */\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"#endif /* __cplusplus */\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"#include <fcntl.h> /* open */\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"#include <unistd.h> /* fork / setsid */\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"#include <sys/types.h>\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"#include <string.h>\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"#include <sys/socket.h>\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"#include <netinet/in.h>\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"#include <netconfig.h>\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"#include <sys/resource.h> /* rlimit */\0A\00", align 1
@logflag = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"#include <syslog.h>\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\0A#ifdef DEBUG\0A#define\09RPC_SVC_FG\0A#endif\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\0A#define\09_RPCSVC_CLOSEDOWN %s\0A\00", align 1
@DEF_PROGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8*, i8*, i32, i8*, i32, i32)* @s_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_output(i32 %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @open_input(i8* %21, i8* %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i8* @extendfile(i8* %27, i8* %28)
  br label %32

30:                                               ; preds = %8
  %31 = load i8*, i8** %14, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i8* [ %29, %26 ], [ %31, %30 ]
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @open_output(i8* %34, i8* %35)
  %37 = call i32 (...) @add_warning()
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i8*, i8** %11, align 8
  %42 = call i8* @extendfile(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @fout, align 4
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @free(i8* %48)
  br label %53

50:                                               ; preds = %40, %32
  %51 = load i32, i32* @fout, align 4
  %52 = call i32 (i32, i8*, ...) @f_print(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* @fout, align 4
  %55 = call i32 (i32, i8*, ...) @f_print(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @fout, align 4
  %57 = call i32 (i32, i8*, ...) @f_print(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @fout, align 4
  %59 = call i32 (i32, i8*, ...) @f_print(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @fout, align 4
  %61 = call i32 (i32, i8*, ...) @f_print(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i64, i64* @tirpcflag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @fout, align 4
  %66 = call i32 (i32, i8*, ...) @f_print(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i8*, i8** @svcclosetime, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* @indefinitewait, align 4
  br label %88

72:                                               ; preds = %67
  %73 = load i8*, i8** @svcclosetime, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* @exitnow, align 4
  br label %87

77:                                               ; preds = %72
  %78 = load i64, i64* @inetdflag, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* @pmflag, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @fout, align 4
  %85 = call i32 (i32, i8*, ...) @f_print(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* @timerflag, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %76
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i64, i64* @tirpcflag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @inetdflag, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @fout, align 4
  %96 = call i32 (i32, i8*, ...) @f_print(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load i64, i64* @inetdflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @pmflag, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100, %97
  %104 = load i32, i32* @fout, align 4
  %105 = call i32 (i32, i8*, ...) @f_print(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %106 = load i32, i32* @fout, align 4
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %106, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %108 = load i32, i32* @fout, align 4
  %109 = call i32 (i32, i8*, ...) @f_print(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i64, i64* @tirpcflag, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @fout, align 4
  %115 = call i32 (i32, i8*, ...) @f_print(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %116 = load i32, i32* @fout, align 4
  %117 = call i32 (i32, i8*, ...) @f_print(i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %118 = load i32, i32* @fout, align 4
  %119 = call i32 (i32, i8*, ...) @f_print(i32 %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %120

120:                                              ; preds = %113, %110
  %121 = load i32, i32* @fout, align 4
  %122 = call i32 (i32, i8*, ...) @f_print(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %123 = load i64, i64* @inetdflag, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i64, i64* @tirpcflag, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* @fout, align 4
  %130 = call i32 (i32, i8*, ...) @f_print(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %131 = load i32, i32* @fout, align 4
  %132 = call i32 (i32, i8*, ...) @f_print(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* @pmflag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136, %133
  %140 = load i64, i64* @tirpcflag, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @fout, align 4
  %147 = call i32 (i32, i8*, ...) @f_print(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142, %139, %136
  %149 = load i64, i64* @tirpcflag, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @fout, align 4
  %153 = call i32 (i32, i8*, ...) @f_print(i32 %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i64, i64* @logflag, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* @inetdflag, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* @pmflag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* @tirpcflag, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %160, %157, %154
  %167 = load i32, i32* @fout, align 4
  %168 = call i32 (i32, i8*, ...) @f_print(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* @fout, align 4
  %171 = call i32 (i32, i8*, ...) @f_print(i32 %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  %172 = load i32, i32* @timerflag, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @fout, align 4
  %176 = load i8*, i8** @svcclosetime, align 8
  %177 = call i32 (i32, i8*, ...) @f_print(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %182, %178
  %180 = call %struct.TYPE_3__* (...) @get_definition()
  store %struct.TYPE_3__* %180, %struct.TYPE_3__** %18, align 8
  %181 = icmp ne %struct.TYPE_3__* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @DEF_PROGRAM, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %19, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %19, align 4
  br label %179

191:                                              ; preds = %179
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i8*, i8** %20, align 8
  %199 = call i32 @unlink(i8* %198)
  br label %222

200:                                              ; preds = %194, %191
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @write_most(i8* %201, i32 %202, i32 %203)
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %222, label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %9, align 4
  %209 = load i8**, i8*** %10, align 8
  %210 = call i32 @do_registers(i32 %208, i8** %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = load i8*, i8** %20, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i8*, i8** %20, align 8
  %217 = call i32 @unlink(i8* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = call i32 (...) @usage()
  br label %220

220:                                              ; preds = %218, %207
  %221 = call i32 (...) @write_rest()
  br label %222

222:                                              ; preds = %197, %220, %200
  ret void
}

declare dso_local i32 @open_input(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @open_output(i8*, i8*) #1

declare dso_local i32 @add_warning(...) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @get_definition(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @write_most(i8*, i32, i32) #1

declare dso_local i32 @do_registers(i32, i8**) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @write_rest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
