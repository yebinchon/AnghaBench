; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_printbody.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_printbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i8*, i32 }

@newstyle = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" arg;\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\09static \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"char \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@RESULT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\09memset((char *)%s%s, 0, sizeof (%s));\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\09 return \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\09 if \00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"(clnt_call(clnt, %s,\0A\09\09(xdrproc_t) xdr_void, \00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"(caddr_t) NULL,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\0A\09\09TIMEOUT));\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\0A\09\09TIMEOUT) != RPC_SUCCESS) {\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09arg.%s = %s;\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\09return \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\09if \00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"(clnt_call(clnt, %s,\0A\09\09(xdrproc_t) xdr_%s\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c", (caddr_t) &arg,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\00", align 1
@.str.20 = private unnamed_addr constant [131 x i8] c"\09if (clnt_call(clnt, %s,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\0A\09\09TIMEOUT) != RPC_SUCCESS) {\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"argp\00", align 1
@.str.23 = private unnamed_addr constant [119 x i8] c"\09return (clnt_call(clnt, %s,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\0A\09\09(xdrproc_t) xdr_%s, (caddr_t) %s%s,\0A\09\09TIMEOUT));\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\09\09return (NULL);\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"\09return ((void *)%s%s);\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"\09return (%s%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @printbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printbody(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @newstyle, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, i32* @fout, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32, i8*, ...) @f_print(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @fout, align 4
  %23 = call i32 (i32, i8*, ...) @f_print(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %15, %12, %1
  %25 = load i64, i64* @mtflag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @streq(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @fout, align 4
  %37 = call i32 (i32, i8*, ...) @f_print(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %46

38:                                               ; preds = %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ptype(i32 %41, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* @fout, align 4
  %48 = load i8*, i8** @RESULT, align 8
  %49 = call i32 (i32, i8*, ...) @f_print(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @fout, align 4
  %51 = call i32 (i32, i8*, ...) @f_print(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* @fout, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @ampr(i32 %55)
  %57 = load i8*, i8** @RESULT, align 8
  %58 = load i8*, i8** @RESULT, align 8
  %59 = call i32 (i32, i8*, ...) @f_print(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %56, i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %46, %24
  %61 = load i64, i64* @newstyle, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %117, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @streq(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %66
  %77 = load i64, i64* @mtflag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @fout, align 4
  %81 = call i32 (i32, i8*, ...) @f_print(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @fout, align 4
  %84 = call i32 (i32, i8*, ...) @f_print(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @fout, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, i8*, ...) @f_print(i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @fout, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @stringfix(i32 %94)
  %96 = load i64, i64* @mtflag, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %104

99:                                               ; preds = %85
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @ampr(i32 %102)
  br label %104

104:                                              ; preds = %99, %98
  %105 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %98 ], [ %103, %99 ]
  %106 = load i8*, i8** @RESULT, align 8
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %95, i8* %105, i8* %106)
  %108 = load i64, i64* @mtflag, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @fout, align 4
  %112 = call i32 (i32, i8*, ...) @f_print(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %116

113:                                              ; preds = %104
  %114 = load i32, i32* @fout, align 4
  %115 = call i32 (i32, i8*, ...) @f_print(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  br label %272

117:                                              ; preds = %66, %63, %60
  %118 = load i64, i64* @newstyle, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %191

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %191

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %3, align 8
  br label %128

128:                                              ; preds = %142, %123
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32, i32* @fout, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @f_print(i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %136, i8* %140)
  br label %142

142:                                              ; preds = %131
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %3, align 8
  br label %128

146:                                              ; preds = %128
  %147 = load i64, i64* @mtflag, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* @fout, align 4
  %151 = call i32 (i32, i8*, ...) @f_print(i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %155

152:                                              ; preds = %146
  %153 = load i32, i32* @fout, align 4
  %154 = call i32 (i32, i8*, ...) @f_print(i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* @fout, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @f_print(i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* %159, i8* %163)
  %165 = load i32, i32* @fout, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @stringfix(i32 %168)
  %170 = load i64, i64* @mtflag, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %155
  br label %178

173:                                              ; preds = %155
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @ampr(i32 %176)
  br label %178

178:                                              ; preds = %173, %172
  %179 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %172 ], [ %177, %173 ]
  %180 = load i8*, i8** @RESULT, align 8
  %181 = call i32 (i32, i8*, ...) @f_print(i32 %165, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 %169, i8* %179, i8* %180)
  %182 = load i64, i64* @mtflag, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @fout, align 4
  %186 = call i32 (i32, i8*, ...) @f_print(i32 %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %190

187:                                              ; preds = %178
  %188 = load i32, i32* @fout, align 4
  %189 = call i32 (i32, i8*, ...) @f_print(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %184
  br label %271

191:                                              ; preds = %120, %117
  %192 = load i64, i64* @mtflag, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %234, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @fout, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @stringfix(i32 %205)
  %207 = load i64, i64* @newstyle, align 8
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %211 = load i64, i64* @newstyle, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %194
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  br label %222

221:                                              ; preds = %194
  br label %222

222:                                              ; preds = %221, %213
  %223 = phi i8* [ %220, %213 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %221 ]
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @stringfix(i32 %226)
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @ampr(i32 %230)
  %232 = load i8*, i8** @RESULT, align 8
  %233 = call i32 (i32, i8*, ...) @f_print(i32 %195, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.20, i64 0, i64 0), i8* %198, i32 %206, i8* %210, i8* %223, i32 %227, i8* %231, i8* %232)
  br label %270

234:                                              ; preds = %191
  %235 = load i32, i32* @fout, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @stringfix(i32 %245)
  %247 = load i64, i64* @newstyle, align 8
  %248 = icmp ne i64 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %251 = load i64, i64* @newstyle, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %234
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  br label %262

261:                                              ; preds = %234
  br label %262

262:                                              ; preds = %261, %253
  %263 = phi i8* [ %260, %253 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %261 ]
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @stringfix(i32 %266)
  %268 = load i8*, i8** @RESULT, align 8
  %269 = call i32 (i32, i8*, ...) @f_print(i32 %235, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.23, i64 0, i64 0), i8* %238, i32 %246, i8* %250, i8* %263, i32 %267, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %268)
  br label %270

270:                                              ; preds = %262, %222
  br label %271

271:                                              ; preds = %270, %190
  br label %272

272:                                              ; preds = %271, %116
  %273 = load i64, i64* @mtflag, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %302, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* @fout, align 4
  %277 = call i32 (i32, i8*, ...) @f_print(i32 %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %278 = load i32, i32* @fout, align 4
  %279 = call i32 (i32, i8*, ...) @f_print(i32 %278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @streq(i32 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %275
  %286 = load i32, i32* @fout, align 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i8* @ampr(i32 %289)
  %291 = load i8*, i8** @RESULT, align 8
  %292 = call i32 (i32, i8*, ...) @f_print(i32 %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* %290, i8* %291)
  br label %301

293:                                              ; preds = %275
  %294 = load i32, i32* @fout, align 4
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = call i8* @ampr(i32 %297)
  %299 = load i8*, i8** @RESULT, align 8
  %300 = call i32 (i32, i8*, ...) @f_print(i32 %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* %298, i8* %299)
  br label %301

301:                                              ; preds = %293, %285
  br label %302

302:                                              ; preds = %301, %272
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i8* @ampr(i32) #1

declare dso_local i32 @stringfix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
