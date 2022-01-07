; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_freedeleg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_freedeleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfscldeleghead = type { i32 }
%struct.nfscldeleg = type { i32 }

@nfsdl_list = common dso_local global i32 0, align 4
@nfsdl_hash = common dso_local global i32 0, align 4
@M_NFSCLDELEG = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nfscl_delegcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfscldeleghead*, %struct.nfscldeleg*)* @nfscl_freedeleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_freedeleg(%struct.nfscldeleghead* %0, %struct.nfscldeleg* %1) #0 {
  %3 = alloca %struct.nfscldeleghead*, align 8
  %4 = alloca %struct.nfscldeleg*, align 8
  store %struct.nfscldeleghead* %0, %struct.nfscldeleghead** %3, align 8
  store %struct.nfscldeleg* %1, %struct.nfscldeleg** %4, align 8
  %5 = load %struct.nfscldeleghead*, %struct.nfscldeleghead** %3, align 8
  %6 = load %struct.nfscldeleg*, %struct.nfscldeleg** %4, align 8
  %7 = load i32, i32* @nfsdl_list, align 4
  %8 = call i32 @TAILQ_REMOVE(%struct.nfscldeleghead* %5, %struct.nfscldeleg* %6, i32 %7)
  %9 = load %struct.nfscldeleg*, %struct.nfscldeleg** %4, align 8
  %10 = load i32, i32* @nfsdl_hash, align 4
  %11 = call i32 @LIST_REMOVE(%struct.nfscldeleg* %9, i32 %10)
  %12 = load %struct.nfscldeleg*, %struct.nfscldeleg** %4, align 8
  %13 = load i32, i32* @M_NFSCLDELEG, align 4
  %14 = call i32 @free(%struct.nfscldeleg* %12, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %17 = load i32, i32* @nfscl_delegcnt, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @nfscl_delegcnt, align 4
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(%struct.nfscldeleghead*, %struct.nfscldeleg*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfscldeleg*, i32) #1

declare dso_local i32 @free(%struct.nfscldeleg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
