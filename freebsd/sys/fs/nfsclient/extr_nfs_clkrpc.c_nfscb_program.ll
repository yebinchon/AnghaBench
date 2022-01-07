; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscb_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscb_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.nfsrv_descript = type { i64, i32, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i32 }

@NFSPROC_NULL = common dso_local global i64 0, align 8
@NFSV4PROC_CBCOMPOUND = common dso_local global i64 0, align 8
@ND_NFSCB = common dso_local global i32 0, align 4
@ND_NFSV4 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cbproc=%d\0A\00", align 1
@RC_REPLY = common dso_local global i32 0, align 4
@RC_DROPIT = common dso_local global i32 0, align 4
@NFSERR_AUTHERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cbrep sent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @nfscb_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscb_program(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsrv_descript, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @memset(%struct.nfsrv_descript* %5, i32 0, i32 64)
  %9 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %10 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFSPROC_NULL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %16 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFSV4PROC_CBCOMPOUND, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %22 = call i32 @svcerr_noproc(%struct.svc_req* %21)
  %23 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %24 = call i32 @svc_freereq(%struct.svc_req* %23)
  br label %170

25:                                               ; preds = %14, %2
  %26 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %27 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @ND_NFSCB, align 4
  %31 = load i32, i32* @ND_NFSV4, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %35 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %39 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %38, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %39, align 8
  %40 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i32 @newnfs_realign(%struct.TYPE_6__** %40, i32 %41)
  %43 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  %46 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* @caddr_t, align 4
  %49 = call i32 @mtod(%struct.TYPE_6__* %47, i32 %48)
  %50 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 9
  store i32 %49, i32* %50, align 8
  %51 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %52 = call i32 @svc_getrpccaller(%struct.svc_req* %51)
  %53 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 7
  store i32 %52, i32* %53, align 4
  %54 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %55 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %58, align 8
  %59 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NFSPROC_NULL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %25
  %68 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %69 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %70 = call i32 @svc_getcred(%struct.svc_req* %68, i32** %69, i32* %7)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %74 = call i32 @svcerr_weakauth(%struct.svc_req* %73)
  %75 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %76 = call i32 @svc_freereq(%struct.svc_req* %75)
  %77 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @m_freem(%struct.TYPE_6__* %78)
  br label %170

80:                                               ; preds = %67
  %81 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %82 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @nfs_cbproc(%struct.nfsrv_descript* %5, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %93

85:                                               ; preds = %25
  %86 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @NFSMGET(%struct.TYPE_6__* %87)
  %89 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @RC_REPLY, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 5
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @m_freem(%struct.TYPE_6__* %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @crfree(i32* %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @RC_DROPIT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = icmp ne %struct.TYPE_6__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = call i32 @m_freem(%struct.TYPE_6__* %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %123 = call i32 @svc_freereq(%struct.svc_req* %122)
  br label %170

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = icmp eq %struct.TYPE_6__* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %130 = call i32 @svcerr_decode(%struct.svc_req* %129)
  %131 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %132 = call i32 @svc_freereq(%struct.svc_req* %131)
  br label %170

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NFSERR_AUTHERR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %141 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NFSERR_AUTHERR, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = call i32 @svcerr_auth(%struct.svc_req* %140, i32 %145)
  %147 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = icmp ne %struct.TYPE_6__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i32 @m_freem(%struct.TYPE_6__* %152)
  br label %154

154:                                              ; preds = %150, %139
  br label %167

155:                                              ; preds = %133
  %156 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %157 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %5, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = call i32 @svc_sendreply_mbuf(%struct.svc_req* %156, %struct.TYPE_6__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %163 = call i32 @svcerr_systemerr(%struct.svc_req* %162)
  br label %166

164:                                              ; preds = %155
  %165 = call i32 (i32, i8*, ...) @NFSCL_DEBUG(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  br label %167

167:                                              ; preds = %166, %154
  %168 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %169 = call i32 @svc_freereq(%struct.svc_req* %168)
  br label %170

170:                                              ; preds = %167, %128, %121, %72, %20
  ret void
}

declare dso_local i32 @memset(%struct.nfsrv_descript*, i32, i32) #1

declare dso_local i32 @svcerr_noproc(%struct.svc_req*) #1

declare dso_local i32 @svc_freereq(%struct.svc_req*) #1

declare dso_local i32 @newnfs_realign(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @mtod(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @svc_getrpccaller(%struct.svc_req*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @svc_getcred(%struct.svc_req*, i32**, i32*) #1

declare dso_local i32 @svcerr_weakauth(%struct.svc_req*) #1

declare dso_local i32 @m_freem(%struct.TYPE_6__*) #1

declare dso_local i32 @nfs_cbproc(%struct.nfsrv_descript*, i32) #1

declare dso_local i32 @NFSMGET(%struct.TYPE_6__*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @svcerr_decode(%struct.svc_req*) #1

declare dso_local i32 @svcerr_auth(%struct.svc_req*, i32) #1

declare dso_local i32 @svc_sendreply_mbuf(%struct.svc_req*, %struct.TYPE_6__*) #1

declare dso_local i32 @svcerr_systemerr(%struct.svc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
