; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_start_nfscl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_start_nfscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclclient = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @start_nfscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_nfscl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfsclclient*, align 8
  %4 = alloca %struct.thread*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfsclclient*
  store %struct.nfsclclient* %6, %struct.nfsclclient** %3, align 8
  %7 = load %struct.nfsclclient*, %struct.nfsclclient** %3, align 8
  %8 = getelementptr inbounds %struct.nfsclclient, %struct.nfsclclient* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call %struct.thread* @TAILQ_FIRST(i32* %10)
  store %struct.thread* %11, %struct.thread** %4, align 8
  %12 = load %struct.nfsclclient*, %struct.nfsclclient** %3, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = call i32 @nfscl_renewthread(%struct.nfsclclient* %12, %struct.thread* %13)
  %15 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local %struct.thread* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nfscl_renewthread(%struct.nfsclclient*, %struct.thread*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
