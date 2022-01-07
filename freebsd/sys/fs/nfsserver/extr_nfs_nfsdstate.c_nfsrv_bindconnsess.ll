; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_bindconnsess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_bindconnsess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.nfssessionhash = type { i32 }
%struct.nfsdsession = type { i32, %struct.TYPE_7__, i32, %struct.nfsclient* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.nfsclient = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.__rpc_client* }
%struct.__rpc_client = type { i32 }

@NFSCDFC4_BACK = common dso_local global i32 0, align 4
@NFSCDFC4_BACK_OR_BOTH = common dso_local global i32 0, align 4
@NFSCDFC4_FORE_OR_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"nfsrv_bindconnsess: acquire backchannel\0A\00", align 1
@NFSV4_CBVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nfsrv_bindconnsess: set up backchannel\0A\00", align 1
@NFSV4CRSESS_CONNBACKCHAN = common dso_local global i32 0, align 4
@LCL_DONEBINDCONN = common dso_local global i32 0, align 4
@NFSCDFS4_BACK = common dso_local global i32 0, align 4
@NFSCDFS4_BOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"nfsrv_bindconnsess: can't set up backchannel\0A\00", align 1
@NFSCDFS4_FORE = common dso_local global i32 0, align 4
@NFSERR_NOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"nfsrv_bindconnsess: Can't add backchannel\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nfsrv_bindconnsess: Set forechannel\0A\00", align 1
@NFSERR_BADSESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_bindconnsess(%struct.nfsrv_descript* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfssessionhash*, align 8
  %8 = alloca %struct.nfsdsession*, align 8
  %9 = alloca %struct.nfsclient*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.nfssessionhash* @NFSSESSIONHASH(i32* %12)
  store %struct.nfssessionhash* %13, %struct.nfssessionhash** %7, align 8
  %14 = call i32 (...) @NFSLOCKSTATE()
  %15 = load %struct.nfssessionhash*, %struct.nfssessionhash** %7, align 8
  %16 = call i32 @NFSLOCKSESSION(%struct.nfssessionhash* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.nfsdsession* @nfsrv_findsession(i32* %17)
  store %struct.nfsdsession* %18, %struct.nfsdsession** %8, align 8
  %19 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %20 = icmp ne %struct.nfsdsession* %19, null
  br i1 %20, label %21, label %159

21:                                               ; preds = %3
  %22 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %23 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %22, i32 0, i32 3
  %24 = load %struct.nfsclient*, %struct.nfsclient** %23, align 8
  store %struct.nfsclient* %24, %struct.nfsclient** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFSCDFC4_BACK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NFSCDFC4_BACK_OR_BOTH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFSCDFC4_FORE_OR_BOTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %149

39:                                               ; preds = %34, %29, %21
  %40 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %41 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.__rpc_client*, %struct.__rpc_client** %42, align 8
  %44 = icmp eq %struct.__rpc_client* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = call i32 @NFSD_DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %48 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %53 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFSV4_CBVERS, align 4
  %56 = call i64 @clnt_bck_create(i32 %51, i32 %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.__rpc_client*
  %58 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %59 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.__rpc_client* %57, %struct.__rpc_client** %60, align 8
  br label %61

61:                                               ; preds = %45, %39
  %62 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %63 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.__rpc_client*, %struct.__rpc_client** %64, align 8
  %66 = icmp ne %struct.__rpc_client* %65, null
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = call i32 @NFSD_DEBUG(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %70 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %10, align 8
  %73 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %74 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @SVC_ACQUIRE(%struct.TYPE_8__* %75)
  %77 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %78 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.__rpc_client*, %struct.__rpc_client** %79, align 8
  %81 = getelementptr inbounds %struct.__rpc_client, %struct.__rpc_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %84 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %88 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %92 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %95 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = icmp ne %struct.TYPE_8__* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %67
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = call i32 @SVC_RELEASE(%struct.TYPE_8__* %100)
  br label %102

102:                                              ; preds = %99, %67
  %103 = load i32, i32* @NFSV4CRSESS_CONNBACKCHAN, align 4
  %104 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %105 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @LCL_DONEBINDCONN, align 4
  %109 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %110 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NFSCDFS4_BACK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %102
  %118 = load i32, i32* @NFSCDFS4_BACK, align 4
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  br label %123

120:                                              ; preds = %102
  %121 = load i32, i32* @NFSCDFS4_BOTH, align 4
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %148

124:                                              ; preds = %61
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @NFSCDFC4_BACK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = call i32 @NFSD_DEBUG(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @NFSV4CRSESS_CONNBACKCHAN, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.nfsdsession*, %struct.nfsdsession** %8, align 8
  %134 = getelementptr inbounds %struct.nfsdsession, %struct.nfsdsession* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @LCL_DONEBINDCONN, align 4
  %138 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %139 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @NFSCDFS4_FORE, align 4
  %143 = load i32*, i32** %6, align 8
  store i32 %142, i32* %143, align 4
  br label %147

144:                                              ; preds = %124
  %145 = load i32, i32* @NFSERR_NOTSUPP, align 4
  store i32 %145, i32* %11, align 4
  %146 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %129
  br label %148

148:                                              ; preds = %147, %123
  br label %158

149:                                              ; preds = %34
  %150 = call i32 @NFSD_DEBUG(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @LCL_DONEBINDCONN, align 4
  %152 = load %struct.nfsclient*, %struct.nfsclient** %9, align 8
  %153 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @NFSCDFS4_FORE, align 4
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %148
  br label %161

159:                                              ; preds = %3
  %160 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %159, %158
  %162 = load %struct.nfssessionhash*, %struct.nfssessionhash** %7, align 8
  %163 = call i32 @NFSUNLOCKSESSION(%struct.nfssessionhash* %162)
  %164 = call i32 (...) @NFSUNLOCKSTATE()
  %165 = load i32, i32* %11, align 4
  ret i32 %165
}

declare dso_local %struct.nfssessionhash* @NFSSESSIONHASH(i32*) #1

declare dso_local i32 @NFSLOCKSTATE(...) #1

declare dso_local i32 @NFSLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local %struct.nfsdsession* @nfsrv_findsession(i32*) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*) #1

declare dso_local i64 @clnt_bck_create(i32, i32, i32) #1

declare dso_local i32 @SVC_ACQUIRE(%struct.TYPE_8__*) #1

declare dso_local i32 @SVC_RELEASE(%struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @NFSUNLOCKSESSION(%struct.nfssessionhash*) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
