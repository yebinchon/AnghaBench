; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfsfifo_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfsfifo_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vop_write_args*)* }
%struct.vop_write_args = type { i32 }
%struct.nfsnode = type { i32, i32 }

@NUPD = common dso_local global i32 0, align 4
@fifo_specops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_write_args*)* @nfsfifo_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsfifo_write(%struct.vop_write_args* %0) #0 {
  %2 = alloca %struct.vop_write_args*, align 8
  %3 = alloca %struct.nfsnode*, align 8
  store %struct.vop_write_args* %0, %struct.vop_write_args** %2, align 8
  %4 = load %struct.vop_write_args*, %struct.vop_write_args** %2, align 8
  %5 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.nfsnode* @VTONFS(i32 %6)
  store %struct.nfsnode* %7, %struct.nfsnode** %3, align 8
  %8 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %9 = call i32 @NFSLOCKNODE(%struct.nfsnode* %8)
  %10 = load i32, i32* @NUPD, align 4
  %11 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %12 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %16 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %15, i32 0, i32 0
  %17 = call i32 @vfs_timestamp(i32* %16)
  %18 = load %struct.nfsnode*, %struct.nfsnode** %3, align 8
  %19 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %18)
  %20 = load i32 (%struct.vop_write_args*)*, i32 (%struct.vop_write_args*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fifo_specops, i32 0, i32 0), align 8
  %21 = load %struct.vop_write_args*, %struct.vop_write_args** %2, align 8
  %22 = call i32 %20(%struct.vop_write_args* %21)
  ret i32 %22
}

declare dso_local %struct.nfsnode* @VTONFS(i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
