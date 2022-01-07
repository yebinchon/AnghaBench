; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_nfsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_nfsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.nfsd_nfsd_args = type { i32, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@newnfs_numnfsd = common dso_local global i64 0, align 8
@time_second = common dso_local global i32 0, align 4
@nfsdev_time = common dso_local global i32 0, align 4
@P2_AST_SU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"kerberosv5\00", align 1
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nfsd: can't register svc name\0A\00", align 1
@nfsrvd_pool = common dso_local global %struct.TYPE_4__* null, align 8
@nfsrv_devidcnt = common dso_local global i64 0, align 8
@nfsrv_writerpc = common dso_local global i32* null, align 8
@NFSPROC_GETATTR = common dso_local global i64 0, align 8
@nfsv4_opflag = common dso_local global %struct.TYPE_5__* null, align 8
@NFSV4OP_GETATTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrvd_nfsd(%struct.thread* %0, %struct.nfsd_nfsd_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.nfsd_nfsd_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.nfsd_nfsd_args* %1, %struct.nfsd_nfsd_args** %4, align 8
  %12 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %13 = add nsw i32 %12, 5
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = trunc i64 %14 to i32
  %21 = call i32 @copyinstr(i32 %19, i8* %16, i32 %20, i32* null)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %143

25:                                               ; preds = %2
  %26 = call i32 (...) @NFSD_LOCK()
  %27 = load i64, i64* @newnfs_numnfsd, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %141

29:                                               ; preds = %25
  %30 = load i32, i32* @time_second, align 4
  store i32 %30, i32* @nfsdev_time, align 4
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load %struct.proc*, %struct.proc** %32, align 8
  store %struct.proc* %33, %struct.proc** %7, align 8
  %34 = load %struct.proc*, %struct.proc** %7, align 8
  %35 = call i32 @PROC_LOCK(%struct.proc* %34)
  %36 = load i32, i32* @P2_AST_SU, align 4
  %37 = load %struct.proc*, %struct.proc** %7, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.proc*, %struct.proc** %7, align 8
  %42 = call i32 @PROC_UNLOCK(%struct.proc* %41)
  %43 = load i64, i64* @newnfs_numnfsd, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @newnfs_numnfsd, align 8
  %45 = call i32 (...) @NFSD_UNLOCK()
  %46 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %47 = load %struct.thread*, %struct.thread** %3, align 8
  %48 = call i32 @nfsrv_createdevids(%struct.nfsd_nfsd_args* %46, %struct.thread* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %126

51:                                               ; preds = %29
  %52 = getelementptr inbounds i8, i8* %16, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %58 = load i32, i32* @NFS_PROG, align 4
  %59 = load i32, i32* @NFS_VER2, align 4
  %60 = call i32 @rpc_gss_set_svc_name_call(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %62 = load i32, i32* @NFS_PROG, align 4
  %63 = load i32, i32* @NFS_VER3, align 4
  %64 = call i32 @rpc_gss_set_svc_name_call(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %66 = load i32, i32* @NFS_PROG, align 4
  %67 = load i32, i32* @NFS_VER4, align 4
  %68 = call i32 @rpc_gss_set_svc_name_call(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74, %71, %56
  %78 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %82 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %87 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @nfsrv_devidcnt, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %80
  %94 = load i32*, i32** @nfsrv_writerpc, align 8
  %95 = load i64, i64* @NFSPROC_GETATTR, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsv4_opflag, align 8
  %98 = load i64, i64* @NFSV4OP_GETATTR, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %80
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %103 = call i32 @svc_run(%struct.TYPE_4__* %102)
  %104 = load i32*, i32** @nfsrv_writerpc, align 8
  %105 = load i64, i64* @NFSPROC_GETATTR, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsv4_opflag, align 8
  %108 = load i64, i64* @NFSV4OP_GETATTR, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds i8, i8* %16, i64 0
  %112 = load i8, i8* %111, align 16
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %101
  %116 = load i32, i32* @NFS_PROG, align 4
  %117 = load i32, i32* @NFS_VER2, align 4
  %118 = call i32 @rpc_gss_clear_svc_name_call(i32 %116, i32 %117)
  %119 = load i32, i32* @NFS_PROG, align 4
  %120 = load i32, i32* @NFS_VER3, align 4
  %121 = call i32 @rpc_gss_clear_svc_name_call(i32 %119, i32 %120)
  %122 = load i32, i32* @NFS_PROG, align 4
  %123 = load i32, i32* @NFS_VER4, align 4
  %124 = call i32 @rpc_gss_clear_svc_name_call(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %115, %101
  br label %126

126:                                              ; preds = %125, %29
  %127 = call i32 (...) @NFSD_LOCK()
  %128 = load i64, i64* @newnfs_numnfsd, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* @newnfs_numnfsd, align 8
  %130 = call i32 @nfsrvd_init(i32 1)
  %131 = load %struct.proc*, %struct.proc** %7, align 8
  %132 = call i32 @PROC_LOCK(%struct.proc* %131)
  %133 = load i32, i32* @P2_AST_SU, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.proc*, %struct.proc** %7, align 8
  %136 = getelementptr inbounds %struct.proc, %struct.proc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.proc*, %struct.proc** %7, align 8
  %140 = call i32 @PROC_UNLOCK(%struct.proc* %139)
  br label %141

141:                                              ; preds = %126, %25
  %142 = call i32 (...) @NFSD_UNLOCK()
  br label %143

143:                                              ; preds = %141, %24
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @NFSEXITCODE(i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %147)
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i32 @NFSD_LOCK(...) #2

declare dso_local i32 @PROC_LOCK(%struct.proc*) #2

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #2

declare dso_local i32 @NFSD_UNLOCK(...) #2

declare dso_local i32 @nfsrv_createdevids(%struct.nfsd_nfsd_args*, %struct.thread*) #2

declare dso_local i32 @rpc_gss_set_svc_name_call(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @svc_run(%struct.TYPE_4__*) #2

declare dso_local i32 @rpc_gss_clear_svc_name_call(i32, i32) #2

declare dso_local i32 @nfsrvd_init(i32) #2

declare dso_local i32 @NFSEXITCODE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
