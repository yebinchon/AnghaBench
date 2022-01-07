; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freenfslock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freenfslock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nfslock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@lo_lckfile = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nfsrv_openpluslock = common dso_local global i32 0, align 4
@lo_lckowner = common dso_local global i32 0, align 4
@M_NFSDLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfslock*)* @nfsrv_freenfslock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_freenfslock(%struct.nfslock* %0) #0 {
  %2 = alloca %struct.nfslock*, align 8
  store %struct.nfslock* %0, %struct.nfslock** %2, align 8
  %3 = load %struct.nfslock*, %struct.nfslock** %2, align 8
  %4 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nfslock*, %struct.nfslock** %2, align 8
  %10 = load i32, i32* @lo_lckfile, align 4
  %11 = call i32 @LIST_REMOVE(%struct.nfslock* %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsstatsv1, i32 0, i32 0), align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsstatsv1, i32 0, i32 0), align 4
  %14 = load i32, i32* @nfsrv_openpluslock, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @nfsrv_openpluslock, align 4
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.nfslock*, %struct.nfslock** %2, align 8
  %18 = load i32, i32* @lo_lckowner, align 4
  %19 = call i32 @LIST_REMOVE(%struct.nfslock* %17, i32 %18)
  %20 = load %struct.nfslock*, %struct.nfslock** %2, align 8
  %21 = load i32, i32* @M_NFSDLOCK, align 4
  %22 = call i32 @free(%struct.nfslock* %20, i32 %21)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.nfslock*, i32) #1

declare dso_local i32 @free(%struct.nfslock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
