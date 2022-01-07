; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_pmapdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_pmapdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.pmaplist = type { %struct.TYPE_7__, %struct.pmaplist* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.rpcent = type { i8* }
%struct.rpc_err = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@PMAPPORT = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i64 0, align 8
@rpc_createerr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RPC_TLIERROR = common dso_local global i64 0, align 8
@RPC_PMAPFAILURE = common dso_local global i64 0, align 8
@RPC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rpcinfo: can't contact portmapper\00", align 1
@PMAPPROC_DUMP = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_pmaplist_ptr = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s does not support portmapper.Try rpcinfo %s instead\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"local host does not support portmapper.  Try 'rpcinfo' instead\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"No remote programs registered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"   program vers proto   port  service\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%10ld%5ld\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IPPROTO_ST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%6ld\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%7ld\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @pmapdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmapdump(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.pmaplist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rpcent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_err, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.pmaplist* null, %struct.pmaplist** %6, align 8
  %14 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %14, i32* %7, align 4
  store i8* null, i8** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @get_inet_address(%struct.sockaddr_in* %5, i8* %26)
  %28 = load i32, i32* @PMAPPORT, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @PMAPPROG, align 4
  %32 = load i64, i64* @PMAPVERS, align 8
  %33 = call i32* @clnttcp_create(%struct.sockaddr_in* %5, i32 %31, i64 %32, i32* %7, i32 50, i32 500)
  store i32* %33, i32** %9, align 8
  br label %38

34:                                               ; preds = %19
  %35 = load i32, i32* @PMAPPROG, align 4
  %36 = load i64, i64* @PMAPVERS, align 8
  %37 = call i32* @local_rpcb(i32 %35, i64 %36)
  store i32* %37, i32** %9, align 8
  br label %38

38:                                               ; preds = %34, %22
  %39 = load i32*, i32** %9, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 0), align 8
  %43 = load i64, i64* @RPC_TLIERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* @RPC_PMAPFAILURE, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 0), align 8
  %47 = load i32, i32* @RPC_FAILED, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rpc_createerr, i32 0, i32 1, i32 0), align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 60, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @PMAPPROC_DUMP, align 4
  %56 = load i64, i64* @xdr_void, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* @xdr_pmaplist_ptr, align 8
  %59 = trunc i64 %58 to i32
  %60 = bitcast %struct.pmaplist** %6 to i8*
  %61 = call i32 @CLNT_CALL(i32* %54, i32 %55, i32 %57, i32* null, i32 %59, i8* %60, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @RPC_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69, %65
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @CLNT_GETERR(i32* %74, %struct.rpc_err* %12)
  %76 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %12, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PMAPVERS, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86)
  br label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  br label %91

91:                                               ; preds = %90, %73
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %69
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @clnt_perror(i32* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %51
  %98 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %99 = icmp eq %struct.pmaplist* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %177

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %172, %102
  %105 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %106 = icmp ne %struct.pmaplist* %105, null
  br i1 %106, label %107, label %176

107:                                              ; preds = %104
  %108 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %109 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %113 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %115)
  %117 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %118 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IPPROTO_UDP, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %151

125:                                              ; preds = %107
  %126 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %127 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IPPROTO_TCP, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %150

134:                                              ; preds = %125
  %135 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %136 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IPPROTO_ST, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %149

143:                                              ; preds = %134
  %144 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %145 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %143, %141
  br label %150

150:                                              ; preds = %149, %132
  br label %151

151:                                              ; preds = %150, %123
  %152 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %153 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %155)
  %157 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %158 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.rpcent* @getrpcbynumber(i32 %160)
  store %struct.rpcent* %161, %struct.rpcent** %10, align 8
  %162 = load %struct.rpcent*, %struct.rpcent** %10, align 8
  %163 = icmp ne %struct.rpcent* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load %struct.rpcent*, %struct.rpcent** %10, align 8
  %166 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  br label %171

169:                                              ; preds = %151
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %164
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.pmaplist*, %struct.pmaplist** %6, align 8
  %174 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %173, i32 0, i32 1
  %175 = load %struct.pmaplist*, %struct.pmaplist** %174, align 8
  store %struct.pmaplist* %175, %struct.pmaplist** %6, align 8
  br label %104

176:                                              ; preds = %104
  br label %177

177:                                              ; preds = %176, %100
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @get_inet_address(%struct.sockaddr_in*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i64, i32*, i32, i32) #1

declare dso_local i32* @local_rpcb(i32, i64) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i32*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @CLNT_GETERR(i32*, %struct.rpc_err*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.rpcent* @getrpcbynumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
