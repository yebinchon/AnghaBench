; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdsubs.c_nfsd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdsubs.c_nfsd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@nfsd_init.inited = internal global i32 0, align 4
@nfsrv_clienthashsize = common dso_local global i32 0, align 4
@M_NFSDCLIENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@nfsclienthash = common dso_local global i32* null, align 8
@nfsrv_lockhashsize = common dso_local global i32 0, align 4
@M_NFSDLOCKFILE = common dso_local global i32 0, align 4
@nfslockhash = common dso_local global i32* null, align 8
@nfsrv_sessionhashsize = common dso_local global i32 0, align 4
@M_NFSDSESSION = common dso_local global i32 0, align 4
@nfssessionhash = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"nfssm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@nfsrv_dontlisthead = common dso_local global i32 0, align 4
@nfsrv_recalllisthead = common dso_local global i32 0, align 4
@nfs_v2pubfh = common dso_local global i32 0, align 4
@NFSX_V2FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @nfsd_init.inited, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %91

5:                                                ; preds = %0
  store i32 1, i32* @nfsd_init.inited, align 4
  %6 = load i32, i32* @nfsrv_clienthashsize, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @M_NFSDCLIENT, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @malloc(i32 %9, i32 %10, i32 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @nfsclienthash, align 8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %26, %5
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @nfsrv_clienthashsize, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32*, i32** @nfsclienthash, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @LIST_INIT(i32* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* @nfsrv_lockhashsize, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @M_NFSDLOCKFILE, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @malloc(i32 %33, i32 %34, i32 %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @nfslockhash, align 8
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %50, %29
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @nfsrv_lockhashsize, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** @nfslockhash, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @LIST_INIT(i32* %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* @nfsrv_sessionhashsize, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @M_NFSDSESSION, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @malloc(i32 %57, i32 %58, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** @nfssessionhash, align 8
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %82, %53
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @nfsrv_sessionhashsize, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfssessionhash, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* @MTX_DEF, align 4
  %75 = call i32 @mtx_init(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfssessionhash, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @LIST_INIT(i32* %80)
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %64

85:                                               ; preds = %64
  %86 = call i32 @LIST_INIT(i32* @nfsrv_dontlisthead)
  %87 = call i32 @TAILQ_INIT(i32* @nfsrv_recalllisthead)
  %88 = load i32, i32* @nfs_v2pubfh, align 4
  %89 = load i32, i32* @NFSX_V2FH, align 4
  %90 = call i32 @NFSBZERO(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %4
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @NFSBZERO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
