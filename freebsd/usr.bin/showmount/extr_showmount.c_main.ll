; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/showmount/extr_showmount.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/showmount/extr_showmount.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportslist = type { i8*, %struct.exportslist*, %struct.grouplist* }
%struct.grouplist = type { i8*, %struct.grouplist* }

@MNTPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"adEe13\00", align 1
@type = common dso_local global i32 0, align 4
@DODUMP = common dso_local global i32 0, align 4
@DOPARSABLEEXPORTS = common dso_local global i32 0, align 4
@DOEXPORTS = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"-E cannot be used with -e\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"-E cannot be used with -a or -d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@MOUNTPROG = common dso_local global i32 0, align 4
@MOUNTPROC_DUMP = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_mntdump = common dso_local global i64 0, align 8
@mntdump = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"can't do mountdump rpc\00", align 1
@MOUNTPROC_EXPORT = common dso_local global i32 0, align 4
@xdr_exportslist = common dso_local global i64 0, align 8
@exportslist = common dso_local global %struct.exportslist* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"can't do exports rpc\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"All mount points on %s:\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Directories on %s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Hosts on %s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Exports list on %s:\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%-34s \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Everyone\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VIS_GLOB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"\22'$\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"strsnvis\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.exportslist*, align 8
  %9 = alloca %struct.grouplist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @MNTPATHLEN, align 4
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %22

22:                                               ; preds = %62, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %60 [
    i32 97, label %29
    i32 100, label %39
    i32 69, label %49
    i32 101, label %53
    i32 49, label %57
    i32 51, label %58
    i32 63, label %59
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @type, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  store i32 129, i32* @type, align 4
  %33 = load i32, i32* @DODUMP, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %38

36:                                               ; preds = %29
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %32
  br label %62

39:                                               ; preds = %27
  %40 = load i32, i32* @type, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  store i32 128, i32* @type, align 4
  %43 = load i32, i32* @DODUMP, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %48

46:                                               ; preds = %39
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %42
  br label %62

49:                                               ; preds = %27
  %50 = load i32, i32* @DOPARSABLEEXPORTS, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %62

53:                                               ; preds = %27
  %54 = load i32, i32* @DOEXPORTS, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %62

58:                                               ; preds = %27
  store i32 3, i32* %11, align 4
  br label %62

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %27, %59
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %58, %57, %53, %49, %48, %38
  br label %22

63:                                               ; preds = %22
  %64 = load i64, i64* @optind, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @optind, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DOPARSABLEEXPORTS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DOEXPORTS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @DODUMP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i32, i32* %4, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %12, align 8
  br label %98

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @DODUMP, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @DODUMP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* @MOUNTPROG, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @MOUNTPROC_DUMP, align 4
  %113 = load i64, i64* @xdr_void, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* @xdr_mntdump, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @tcp_callrpc(i8* %109, i32 %110, i32 %111, i32 %112, i32 %114, i8* null, i32 %116, i8* bitcast (i32* @mntdump to i8*))
  store i32 %117, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @clnt_perrno(i32 %120)
  %122 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %108
  br label %124

124:                                              ; preds = %123, %103
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @DOEXPORTS, align 4
  %127 = load i32, i32* @DOPARSABLEEXPORTS, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %124
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* @MOUNTPROG, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @MOUNTPROC_EXPORT, align 4
  %136 = load i64, i64* @xdr_void, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i64, i64* @xdr_exportslist, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @tcp_callrpc(i8* %132, i32 %133, i32 %134, i32 %135, i32 %137, i8* null, i32 %139, i8* bitcast (%struct.exportslist** @exportslist to i8*))
  store i32 %140, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @clnt_perrno(i32 %143)
  %145 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %131
  br label %147

147:                                              ; preds = %146, %124
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @DODUMP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %147
  %153 = load i32, i32* @type, align 4
  switch i32 %153, label %160 [
    i32 129, label %154
    i32 128, label %157
  ]

154:                                              ; preds = %152
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %155)
  br label %163

157:                                              ; preds = %152
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %158)
  br label %163

160:                                              ; preds = %152
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %160, %157, %154
  %164 = load i32, i32* @mntdump, align 4
  %165 = call i32 @print_dump(i32 %164)
  br label %166

166:                                              ; preds = %163, %147
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @DOEXPORTS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %209

171:                                              ; preds = %166
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = load %struct.exportslist*, %struct.exportslist** @exportslist, align 8
  store %struct.exportslist* %174, %struct.exportslist** %8, align 8
  br label %175

175:                                              ; preds = %204, %171
  %176 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %177 = icmp ne %struct.exportslist* %176, null
  br i1 %177, label %178, label %208

178:                                              ; preds = %175
  %179 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %180 = getelementptr inbounds %struct.exportslist, %struct.exportslist* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %181)
  %183 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %184 = getelementptr inbounds %struct.exportslist, %struct.exportslist* %183, i32 0, i32 2
  %185 = load %struct.grouplist*, %struct.grouplist** %184, align 8
  store %struct.grouplist* %185, %struct.grouplist** %9, align 8
  %186 = load %struct.grouplist*, %struct.grouplist** %9, align 8
  %187 = icmp eq %struct.grouplist* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %204

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %194, %190
  %192 = load %struct.grouplist*, %struct.grouplist** %9, align 8
  %193 = icmp ne %struct.grouplist* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load %struct.grouplist*, %struct.grouplist** %9, align 8
  %196 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %197)
  %199 = load %struct.grouplist*, %struct.grouplist** %9, align 8
  %200 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %199, i32 0, i32 1
  %201 = load %struct.grouplist*, %struct.grouplist** %200, align 8
  store %struct.grouplist* %201, %struct.grouplist** %9, align 8
  br label %191

202:                                              ; preds = %191
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %188
  %205 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %206 = getelementptr inbounds %struct.exportslist, %struct.exportslist* %205, i32 0, i32 1
  %207 = load %struct.exportslist*, %struct.exportslist** %206, align 8
  store %struct.exportslist* %207, %struct.exportslist** %8, align 8
  br label %175

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %208, %166
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @DOPARSABLEEXPORTS, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %209
  %215 = load %struct.exportslist*, %struct.exportslist** @exportslist, align 8
  store %struct.exportslist* %215, %struct.exportslist** %8, align 8
  br label %216

216:                                              ; preds = %232, %214
  %217 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %218 = icmp ne %struct.exportslist* %217, null
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = trunc i64 %19 to i32
  %221 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %222 = getelementptr inbounds %struct.exportslist, %struct.exportslist* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* @VIS_GLOB, align 4
  %225 = load i32, i32* @VIS_NL, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @strsnvis(i8* %21, i32 %220, i8* %223, i32 %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32 %227, i32* %15, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %232

230:                                              ; preds = %219
  %231 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %219
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %21)
  %234 = load %struct.exportslist*, %struct.exportslist** %8, align 8
  %235 = getelementptr inbounds %struct.exportslist, %struct.exportslist* %234, i32 0, i32 1
  %236 = load %struct.exportslist*, %struct.exportslist** %235, align 8
  store %struct.exportslist* %236, %struct.exportslist** %8, align 8
  br label %216

237:                                              ; preds = %216
  br label %238

238:                                              ; preds = %237, %209
  %239 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @tcp_callrpc(i8*, i32, i32, i32, i32, i8*, i32, i8*) #2

declare dso_local i32 @clnt_perrno(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @print_dump(i32) #2

declare dso_local i32 @strsnvis(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
