; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_mountopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_mountopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_args = type { i32, i32, i8*, i8*, i32 }

@NFS_ARGSVERSION = common dso_local global i32 0, align 4
@BOOTP_BLOCKSIZE = common dso_local global i8* null, align 8
@NFSMNT_RSIZE = common dso_local global i32 0, align 4
@NFSMNT_WSIZE = common dso_local global i32 0, align 4
@NFSMNT_RESVPORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_args*, i8*)* @mountopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mountopts(%struct.nfs_args* %0, i8* %1) #0 {
  %3 = alloca %struct.nfs_args*, align 8
  %4 = alloca i8*, align 8
  store %struct.nfs_args* %0, %struct.nfs_args** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @NFS_ARGSVERSION, align 4
  %6 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load i8*, i8** @BOOTP_BLOCKSIZE, align 8
  %9 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @BOOTP_BLOCKSIZE, align 8
  %12 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @NFSMNT_RSIZE, align 4
  %15 = load i32, i32* @NFSMNT_WSIZE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NFSMNT_RESVPORT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.nfs_args*, %struct.nfs_args** %3, align 8
  %29 = call i32 @nfs_parse_options(i8* %27, %struct.nfs_args* %28)
  br label %30

30:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @nfs_parse_options(i8*, %struct.nfs_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
