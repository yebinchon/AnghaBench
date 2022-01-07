; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32* }

@nfsd_modevent.loaded = internal global i32 0, align 4
@NFSRVCACHE_HASHSIZE = common dso_local global i32 0, align 4
@nfsrchash_table = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"nfsrtc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@nfsrcahash_table = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"nfsrtca\00", align 1
@nfsrc_udpmtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nfsuc\00", align 1
@nfs_v4root_mutex = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nfs4rt\00", align 1
@nfsv4root_mnt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"nfs4mnt\00", align 1
@nfsrv_dontlistlock_mtx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"nfs4dnl\00", align 1
@nfsrv_recalllock_mtx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"nfs4rec\00", align 1
@PVFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"explock\00", align 1
@nfsrv_servertimer = common dso_local global i32* null, align 8
@nfsd_call_servertimer = common dso_local global i32* null, align 8
@nfssvc_nfsd = common dso_local global i32* null, align 8
@nfsd_call_nfsd = common dso_local global i32* null, align 8
@newnfs_numnfsd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@nfsrvd_pool = common dso_local global i32* null, align 8
@nfsrv_sessionhashsize = common dso_local global i32 0, align 4
@nfssessionhash = common dso_local global %struct.TYPE_12__* null, align 8
@nfslayouthash = common dso_local global %struct.TYPE_12__* null, align 8
@nfsrv_layouthashsize = common dso_local global i32 0, align 4
@M_NFSDSESSION = common dso_local global i32 0, align 4
@nfsclienthash = common dso_local global %struct.TYPE_12__* null, align 8
@M_NFSDCLIENT = common dso_local global i32 0, align 4
@nfslockhash = common dso_local global %struct.TYPE_12__* null, align 8
@M_NFSDLOCKFILE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nfsd_disabledelegation = common dso_local global i32* null, align 8
@nfsd_recalldelegation = common dso_local global i32* null, align 8
@vn_deleg_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @nfsd_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %147 [
    i32 129, label %10
    i32 128, label %59
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @nfsd_modevent.loaded, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %150

14:                                               ; preds = %10
  %15 = call i32 (...) @newnfs_portinit()
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %35, %14
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NFSRVCACHE_HASHSIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nfsrchash_table, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nfsrcahash_table, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* @MTX_DEF, align 4
  %34 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* @MTX_DEF, align 4
  %40 = call i32 @mtx_init(i32* @nfsrc_udpmtx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %39)
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* @nfs_v4root_mutex, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %41)
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsv4root_mnt, i32 0, i32 1), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %43)
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* @nfsrv_dontlistlock_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %45)
  %47 = load i32, i32* @MTX_DEF, align 4
  %48 = call i32 @mtx_init(i32* @nfsrv_recalllock_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %47)
  %49 = load i32, i32* @PVFS, align 4
  %50 = call i32 @lockinit(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsv4root_mnt, i32 0, i32 0), i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %51 = call i32 (...) @nfsrvd_initcache()
  %52 = call i32 (...) @nfsd_init()
  %53 = call i32 (...) @NFSD_LOCK()
  %54 = call i32 @nfsrvd_init(i32 0)
  %55 = call i32 (...) @NFSD_UNLOCK()
  %56 = call i32 (...) @nfsd_mntinit()
  %57 = load i32*, i32** @nfsrv_servertimer, align 8
  store i32* %57, i32** @nfsd_call_servertimer, align 8
  %58 = load i32*, i32** @nfssvc_nfsd, align 8
  store i32* %58, i32** @nfsd_call_nfsd, align 8
  store i32 1, i32* @nfsd_modevent.loaded, align 4
  br label %149

59:                                               ; preds = %3
  %60 = load i32, i32* @newnfs_numnfsd, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @EBUSY, align 4
  store i32 %63, i32* %7, align 4
  br label %149

64:                                               ; preds = %59
  store i32* null, i32** @nfsd_call_servertimer, align 8
  store i32* null, i32** @nfsd_call_nfsd, align 8
  %65 = load i32, i32* @curthread, align 4
  %66 = call i32 @nfsrv_throwawayallstate(i32 %65)
  %67 = call i32 (...) @nfsrvd_cleancache()
  %68 = load i32*, i32** @nfsrvd_pool, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** @nfsrvd_pool, align 8
  %72 = call i32 @svcpool_destroy(i32* %71)
  br label %73

73:                                               ; preds = %70, %64
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @NFSRVCACHE_HASHSIZE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nfsrchash_table, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i32 @mtx_destroy(i32* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @nfsrcahash_table, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = call i32 @mtx_destroy(i32* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %74

94:                                               ; preds = %74
  %95 = call i32 @mtx_destroy(i32* @nfsrc_udpmtx)
  %96 = call i32 @mtx_destroy(i32* @nfs_v4root_mutex)
  %97 = call i32 @mtx_destroy(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsv4root_mnt, i32 0, i32 1))
  %98 = call i32 @mtx_destroy(i32* @nfsrv_dontlistlock_mtx)
  %99 = call i32 @mtx_destroy(i32* @nfsrv_recalllock_mtx)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %111, %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @nfsrv_sessionhashsize, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfssessionhash, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = call i32 @mtx_destroy(i32* %109)
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfslayouthash, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @nfsrv_layouthashsize, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfslayouthash, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = call i32 @mtx_destroy(i32* %127)
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %118

132:                                              ; preds = %118
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfslayouthash, align 8
  %134 = load i32, i32* @M_NFSDSESSION, align 4
  %135 = call i32 @free(%struct.TYPE_12__* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %114
  %137 = call i32 @lockdestroy(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsv4root_mnt, i32 0, i32 0))
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfsclienthash, align 8
  %139 = load i32, i32* @M_NFSDCLIENT, align 4
  %140 = call i32 @free(%struct.TYPE_12__* %138, i32 %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfslockhash, align 8
  %142 = load i32, i32* @M_NFSDLOCKFILE, align 4
  %143 = call i32 @free(%struct.TYPE_12__* %141, i32 %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @nfssessionhash, align 8
  %145 = load i32, i32* @M_NFSDSESSION, align 4
  %146 = call i32 @free(%struct.TYPE_12__* %144, i32 %145)
  store i32 0, i32* @nfsd_modevent.loaded, align 4
  br label %149

147:                                              ; preds = %3
  %148 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %147, %136, %62, %38
  br label %150

150:                                              ; preds = %149, %13
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @NFSEXITCODE(i32 %151)
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @newnfs_portinit(...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @lockinit(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @nfsrvd_initcache(...) #1

declare dso_local i32 @nfsd_init(...) #1

declare dso_local i32 @NFSD_LOCK(...) #1

declare dso_local i32 @nfsrvd_init(i32) #1

declare dso_local i32 @NFSD_UNLOCK(...) #1

declare dso_local i32 @nfsd_mntinit(...) #1

declare dso_local i32 @nfsrv_throwawayallstate(i32) #1

declare dso_local i32 @nfsrvd_cleancache(...) #1

declare dso_local i32 @svcpool_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
