; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_rpcbaddrlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_rpcbaddrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8*, i8*, i64, i8* }
%struct.timeval = type { i32, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.rpcent = type { i8* }
%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i32* }
%struct.netbuf = type { %struct.netbuf* }
%struct.netconfig = type { i32 }

@RPCBVERS4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rpcinfo: invalid transport\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rpcinfo: can't contact rpcbind\00", align 1
@nullstring = common dso_local global i8* null, align 8
@RPCBPROC_GETADDRLIST = common dso_local global i32 0, align 4
@xdr_rpcb = common dso_local global i64 0, align 8
@xdr_rpcb_entry_list_ptr = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"rpcinfo: can't contact rpcbind: \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"No remote programs registered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"   program vers  tp_family/name/class    address\09\09  service\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%10u%3u    \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/%s/%s \00", align 1
@NC_TPI_CLTS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"clts\00", align 1
@NC_TPI_COTS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"cots\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cots_ord\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%-24s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" %-13s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**)* @rpcbaddrlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcbaddrlist(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.rpcent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.netbuf*, align 8
  %14 = alloca %struct.netconfig*, align 8
  %15 = alloca %struct.netconfig*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* @RPCBVERS4, align 4
  %31 = call %struct.TYPE_13__* @clnt_rpcbind_create(i8* %29, i32 %30, %struct.netbuf** %13)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %9, align 8
  br label %51

32:                                               ; preds = %22
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct.netconfig* @getnetconfigent(i8* %33)
  store %struct.netconfig* %34, %struct.netconfig** %14, align 8
  %35 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %36 = icmp eq %struct.netconfig* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @nc_perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %32
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %43 = load i32, i32* @RPCBVERS4, align 4
  %44 = call %struct.TYPE_13__* @getclnthandle(i8* %41, %struct.netconfig* %42, i32 %43, %struct.netbuf** %13)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %9, align 8
  %45 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %46 = icmp ne %struct.netconfig* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %49 = call i32 @freenetconfigent(%struct.netconfig* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = icmp eq %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 60, i32* %58, align 8
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @getprognum(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @getvers(i8* %67)
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load %struct.netbuf*, %struct.netbuf** %13, align 8
  %75 = icmp eq %struct.netbuf* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = load i8*, i8** @nullstring, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32* %78, i32** %79, align 8
  br label %113

80:                                               ; preds = %57
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call %struct.netconfig* @getnetconfigent(i8* %83)
  store %struct.netconfig* %84, %struct.netconfig** %15, align 8
  %85 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %86 = icmp ne %struct.netconfig* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %89 = load %struct.netbuf*, %struct.netbuf** %13, align 8
  %90 = call i32* @taddr2uaddr(%struct.netconfig* %88, %struct.netbuf* %89)
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32* %90, i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i8*, i8** @nullstring, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32* %97, i32** %98, align 8
  br label %99

99:                                               ; preds = %95, %87
  %100 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %101 = call i32 @freenetconfigent(%struct.netconfig* %100)
  br label %106

102:                                              ; preds = %80
  %103 = load i8*, i8** @nullstring, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32* %104, i32** %105, align 8
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.netbuf*, %struct.netbuf** %13, align 8
  %108 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %107, i32 0, i32 0
  %109 = load %struct.netbuf*, %struct.netbuf** %108, align 8
  %110 = call i32 @free(%struct.netbuf* %109)
  %111 = load %struct.netbuf*, %struct.netbuf** %13, align 8
  %112 = call i32 @free(%struct.netbuf* %111)
  br label %113

113:                                              ; preds = %106, %76
  %114 = load i8*, i8** @nullstring, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  store i8* %114, i8** %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = load i32, i32* @RPCBPROC_GETADDRLIST, align 4
  %118 = load i64, i64* @xdr_rpcb, align 8
  %119 = trunc i64 %118 to i32
  %120 = bitcast %struct.TYPE_12__* %12 to i8*
  %121 = load i64, i64* @xdr_rpcb_entry_list_ptr, align 8
  %122 = trunc i64 %121 to i32
  %123 = bitcast %struct.TYPE_10__** %7 to i8*
  %124 = call i64 @CLNT_CALL(%struct.TYPE_13__* %116, i32 %117, i32 %119, i8* %120, i32 %122, i8* %123, %struct.timeval* byval(%struct.timeval) align 8 %8)
  %125 = load i64, i64* @RPC_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = call i32 @clnt_perror(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %113
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = icmp eq %struct.TYPE_10__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %198

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %193, %136
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %197

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %147)
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NC_TPI_CLTS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %141
  br label %170

162:                                              ; preds = %141
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @NC_TPI_COTS, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  br label %170

170:                                              ; preds = %162, %161
  %171 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %161 ], [ %169, %162 ]
  %172 = call i32 @sprintf(i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %152, i8* %155, i8* %171)
  %173 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %177)
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call %struct.rpcent* @getrpcbynumber(i32 %180)
  store %struct.rpcent* %181, %struct.rpcent** %10, align 8
  %182 = load %struct.rpcent*, %struct.rpcent** %10, align 8
  %183 = icmp ne %struct.rpcent* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %170
  %185 = load %struct.rpcent*, %struct.rpcent** %10, align 8
  %186 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %187)
  br label %191

189:                                              ; preds = %170
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %184
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %7, align 8
  br label %138

197:                                              ; preds = %138
  br label %198

198:                                              ; preds = %197, %134
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %200 = call i32 @clnt_destroy(%struct.TYPE_13__* %199)
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local %struct.TYPE_13__* @clnt_rpcbind_create(i8*, i32, %struct.netbuf**) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i32 @nc_perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_13__* @getclnthandle(i8*, %struct.netconfig*, i32, %struct.netbuf**) #1

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #1

declare dso_local i32 @clnt_pcreateerror(i8*) #1

declare dso_local i32 @getprognum(i8*) #1

declare dso_local i32 @getvers(i8*) #1

declare dso_local i32* @taddr2uaddr(%struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

declare dso_local i64 @CLNT_CALL(%struct.TYPE_13__*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.rpcent* @getrpcbynumber(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
