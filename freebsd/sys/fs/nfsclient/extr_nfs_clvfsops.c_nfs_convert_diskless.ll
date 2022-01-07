; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_convert_diskless.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_convert_diskless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32, i32*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@nfs_diskless = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@nfsv3_diskless = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSX_MYFH = common dso_local global i32 0, align 4
@NFSX_V2FH = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@nfs_diskless_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfs_convert_diskless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_convert_diskless() #0 {
  %1 = call i32 @bcopy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 7), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 8), i32 4)
  %2 = call i32 @bcopy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 6), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 7), i32 4)
  %3 = call i32 @nfs_convert_oargs(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 6), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 5))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 6, i32 0), align 8
  %5 = load i32, i32* @NFSMNT_NFSV3, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @NFSX_MYFH, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 0), align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 4), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 5), align 8
  %12 = load i32, i32* @NFSX_MYFH, align 4
  %13 = call i32 @bcopy(i32* %10, i32* %11, i32 %12)
  br label %20

14:                                               ; preds = %0
  %15 = load i32, i32* @NFSX_V2FH, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 0), align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 4), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 5), align 8
  %18 = load i32, i32* @NFSX_V2FH, align 4
  %19 = call i32 @bcopy(i32* %16, i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = call i32 @bcopy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 4), i32 4)
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 2), align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 3), align 8
  %24 = load i32, i32* @MNAMELEN, align 4
  %25 = call i32 @bcopy(i32* %22, i32* %23, i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 1), align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 2), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_diskless, i32 0, i32 0), align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsv3_diskless, i32 0, i32 1), align 8
  %29 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %30 = call i32 @bcopy(i32* %27, i32* %28, i32 %29)
  store i32 3, i32* @nfs_diskless_valid, align 4
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @nfs_convert_oargs(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
