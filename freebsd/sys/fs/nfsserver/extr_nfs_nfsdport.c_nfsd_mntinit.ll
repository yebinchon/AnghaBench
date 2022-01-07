; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_mntinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_mntinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32*, i32*, i32, i32 }

@nfsd_mntinit.inited = internal global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_EXPORTED = common dso_local global i32 0, align 4
@nfsv4root_mnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nfsv4root_opt = common dso_local global i32 0, align 4
@nfsv4root_newopt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_mntinit() #0 {
  %1 = load i32, i32* @nfsd_mntinit.inited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %12

4:                                                ; preds = %0
  store i32 1, i32* @nfsd_mntinit.inited, align 4
  %5 = load i32, i32* @MNT_RDONLY, align 4
  %6 = load i32, i32* @MNT_EXPORTED, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 0), align 8
  %8 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 7))
  %9 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 6))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 5), align 8
  %10 = call i32 @TAILQ_INIT(i32* @nfsv4root_opt)
  %11 = call i32 @TAILQ_INIT(i32* @nfsv4root_newopt)
  store i32* @nfsv4root_opt, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 4), align 8
  store i32* @nfsv4root_newopt, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsv4root_mnt, i32 0, i32 1), align 8
  br label %12

12:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
