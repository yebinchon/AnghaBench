; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_progping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_progping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.rpc_err = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.netconfig = type { i32 }

@MIN_VERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"could not find %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NETPATH\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rpcinfo\00", align 1
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@MAX_VERS = common dso_local global i64 0, align 8
@CLSET_VERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**)* @progping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @progping(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rpc_err, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.netconfig*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %3
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @getprognum(i8* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @MIN_VERS, align 8
  store i64 %35, i64* %11, align 8
  br label %41

36:                                               ; preds = %27
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @getvers(i8* %39)
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %36, %34
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call %struct.netconfig* @getnetconfigent(i8* %45)
  store %struct.netconfig* %46, %struct.netconfig** %16, align 8
  %47 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %48 = icmp eq %struct.netconfig* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %59 = call i32* @clnt_tp_create(i8* %55, i64 %56, i64 %57, %struct.netconfig* %58)
  store i32* %59, i32** %7, align 8
  br label %67

60:                                               ; preds = %41
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32* @clnt_create(i8* %63, i64 %64, i64 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %60, %52
  %68 = load i32*, i32** %7, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10, i32* %74, align 8
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @NULLPROC, align 4
  %78 = load i64, i64* @xdr_void, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* @xdr_void, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @CLNT_CALL(i32* %76, i32 %77, i32 %79, i8* null, i32 %81, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %100

85:                                               ; preds = %73
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @pstatus(i32* %86, i64 %87, i64 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @CLNT_DESTROY(i32* %93)
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %92
  br label %198

100:                                              ; preds = %73
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @clnt_geterr(i32* %105, %struct.rpc_err* %14)
  %107 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %14, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %12, align 8
  %110 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %14, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %13, align 8
  br label %162

113:                                              ; preds = %100
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @RPC_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %156

117:                                              ; preds = %113
  %118 = load i64, i64* @MAX_VERS, align 8
  store i64 %118, i64* %11, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @CLSET_VERS, align 4
  %121 = bitcast i64* %11 to i8*
  %122 = call i32 @CLNT_CONTROL(i32* %119, i32 %120, i8* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* @NULLPROC, align 4
  %125 = load i64, i64* @xdr_void, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i64, i64* @xdr_void, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @CLNT_CALL(i32* %123, i32 %124, i32 %126, i8* null, i32 %128, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %117
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @clnt_geterr(i32* %134, %struct.rpc_err* %14)
  %136 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %14, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %12, align 8
  %139 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %14, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %13, align 8
  br label %155

142:                                              ; preds = %117
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @RPC_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  store i64 0, i64* %12, align 8
  %147 = load i64, i64* @MAX_VERS, align 8
  store i64 %147, i64* %13, align 8
  br label %154

148:                                              ; preds = %142
  %149 = load i32*, i32** %7, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @MAX_VERS, align 8
  %152 = call i64 @pstatus(i32* %149, i64 %150, i64 %151)
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %133
  br label %161

156:                                              ; preds = %113
  %157 = load i32*, i32** %7, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i64 @pstatus(i32* %157, i64 %158, i64 0)
  %160 = call i32 @exit(i32 1) #3
  unreachable

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %104
  %163 = load i64, i64* %12, align 8
  store i64 %163, i64* %11, align 8
  br label %164

164:                                              ; preds = %187, %162
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp sle i64 %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %164
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* @CLSET_VERS, align 4
  %171 = bitcast i64* %11 to i8*
  %172 = call i32 @CLNT_CONTROL(i32* %169, i32 %170, i8* %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* @NULLPROC, align 4
  %175 = load i64, i64* @xdr_void, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i64, i64* @xdr_void, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @CLNT_CALL(i32* %173, i32 %174, i32 %176, i8* null, i32 %178, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %179, i32* %9, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %11, align 8
  %183 = call i64 @pstatus(i32* %180, i64 %181, i64 %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %168
  store i32 1, i32* %15, align 4
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %11, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %11, align 8
  br label %164

190:                                              ; preds = %164
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @CLNT_DESTROY(i32* %191)
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 @exit(i32 1) #3
  unreachable

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197, %99
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @getprognum(i8*) #1

declare dso_local i64 @getvers(i8*) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32* @clnt_tp_create(i8*, i64, i64, %struct.netconfig*) #1

declare dso_local i32* @clnt_create(i8*, i64, i64, i8*) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i64 @pstatus(i32*, i64, i64) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @clnt_geterr(i32*, %struct.rpc_err*) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
