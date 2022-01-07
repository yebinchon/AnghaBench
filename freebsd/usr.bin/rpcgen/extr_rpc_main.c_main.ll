; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commandline = type { i32, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"-DRPC_XDR\00", align 1
@DONT_EXTEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"-DRPC_HDR\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"-DRPC_CLNT\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-DRPC_SVC\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-DRPC_TBL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"-DRPC_SERVER\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"-DRPC_CLIENT\00", align 1
@EXTEND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"_xdr.c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_clnt.c\00", align 1
@inetdflag = common dso_local global i64 0, align 8
@tirpcflag = common dso_local global i32 0, align 4
@allc = common dso_local global i32 0, align 4
@allv = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"_svc.c\00", align 1
@allnc = common dso_local global i32 0, align 4
@allnv = common dso_local global i8** null, align 8
@tblflag = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"_tbl.i\00", align 1
@allfiles = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"_server.c\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_client.c\00", align 1
@nonfatalerrors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.commandline, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = bitcast %struct.commandline* %6 to i8*
  %8 = call i32 @memset(i8* %7, i32 0, i32 96)
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @parseargs(i32 %9, i8** %10, %struct.commandline* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %19, %15
  %28 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @checkfiles(i32 %29, i8* %31)
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @checkfiles(i32 %35, i8* null)
  br label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DONT_EXTEND, align 4
  %45 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @c_output(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %46)
  br label %222

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DONT_EXTEND, align 4
  %56 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @h_output(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %57, i64 %59)
  br label %221

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DONT_EXTEND, align 4
  %69 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @l_output(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %70)
  br label %220

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80, %76, %72
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DONT_EXTEND, align 4
  %90 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @s_output(i32 %85, i8** %86, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %89, i8* %91, i64 %93, i64 %95)
  br label %219

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DONT_EXTEND, align 4
  %105 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @t_output(i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %104, i8* %106)
  br label %218

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DONT_EXTEND, align 4
  %116 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @svc_output(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %115, i8* %117)
  br label %217

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DONT_EXTEND, align 4
  %127 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @clnt_output(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %126, i8* %128)
  br label %216

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @mkfile_output(%struct.commandline* %6)
  br label %215

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @EXTEND, align 4
  %140 = call i32 @c_output(i32 %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %141 = call i32 (...) @reinitialize()
  %142 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @EXTEND, align 4
  %145 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @h_output(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 %146)
  %148 = call i32 (...) @reinitialize()
  %149 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @EXTEND, align 4
  %152 = call i32 @l_output(i32 %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %153 = call i32 (...) @reinitialize()
  %154 = load i64, i64* @inetdflag, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %136
  %157 = load i32, i32* @tirpcflag, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %156, %136
  %160 = load i32, i32* @allc, align 4
  %161 = load i8**, i8*** @allv, align 8
  %162 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @EXTEND, align 4
  %165 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @s_output(i32 %160, i8** %161, i32 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %166, i64 %168)
  br label %181

170:                                              ; preds = %156
  %171 = load i32, i32* @allnc, align 4
  %172 = load i8**, i8*** @allnv, align 8
  %173 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @EXTEND, align 4
  %176 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @s_output(i32 %171, i8** %172, i32 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %177, i64 %179)
  br label %181

181:                                              ; preds = %170, %159
  %182 = load i64, i64* @tblflag, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = call i32 (...) @reinitialize()
  %186 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @EXTEND, align 4
  %189 = call i32 @t_output(i32 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %190

190:                                              ; preds = %184, %181
  %191 = load i64, i64* @allfiles, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = call i32 (...) @reinitialize()
  %195 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @EXTEND, align 4
  %198 = call i32 @svc_output(i32 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %199 = call i32 (...) @reinitialize()
  %200 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @EXTEND, align 4
  %203 = call i32 @clnt_output(i32 %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %202, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %204

204:                                              ; preds = %193, %190
  %205 = load i64, i64* @allfiles, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.commandline, %struct.commandline* %6, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %214

211:                                              ; preds = %207, %204
  %212 = call i32 (...) @reinitialize()
  %213 = call i32 @mkfile_output(%struct.commandline* %6)
  br label %214

214:                                              ; preds = %211, %207
  br label %215

215:                                              ; preds = %214, %134
  br label %216

216:                                              ; preds = %215, %123
  br label %217

217:                                              ; preds = %216, %112
  br label %218

218:                                              ; preds = %217, %101
  br label %219

219:                                              ; preds = %218, %84
  br label %220

220:                                              ; preds = %219, %65
  br label %221

221:                                              ; preds = %220, %52
  br label %222

222:                                              ; preds = %221, %41
  %223 = load i32, i32* @nonfatalerrors, align 4
  %224 = call i32 @exit(i32 %223) #3
  unreachable
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @parseargs(i32, i8**, %struct.commandline*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @checkfiles(i32, i8*) #1

declare dso_local i32 @c_output(i32, i8*, i32, i8*) #1

declare dso_local i32 @h_output(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @l_output(i32, i8*, i32, i8*) #1

declare dso_local i32 @s_output(i32, i8**, i32, i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @t_output(i32, i8*, i32, i8*) #1

declare dso_local i32 @svc_output(i32, i8*, i32, i8*) #1

declare dso_local i32 @clnt_output(i32, i8*, i32, i8*) #1

declare dso_local i32 @mkfile_output(%struct.commandline*) #1

declare dso_local i32 @reinitialize(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
