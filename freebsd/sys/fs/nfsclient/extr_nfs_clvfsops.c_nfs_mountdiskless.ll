; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_mountdiskless.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_mountdiskless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.nfs_args = type { i32 }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.sockaddr = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@NFS_DEFAULT_NAMETIMEO = common dso_local global i32 0, align 4
@NFS_DEFAULT_NEGNAMETIMEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfs_mountroot: mount %s on /: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_in*, %struct.nfs_args*, %struct.thread*, %struct.vnode**, %struct.mount*)* @nfs_mountdiskless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_mountdiskless(i8* %0, %struct.sockaddr_in* %1, %struct.nfs_args* %2, %struct.thread* %3, %struct.vnode** %4, %struct.mount* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.nfs_args*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vnode**, align 8
  %13 = alloca %struct.mount*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %9, align 8
  store %struct.nfs_args* %2, %struct.nfs_args** %10, align 8
  store %struct.thread* %3, %struct.thread** %11, align 8
  store %struct.vnode** %4, %struct.vnode*** %12, align 8
  store %struct.mount* %5, %struct.mount** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %17, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i8*, i8** %17, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %17, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %15, align 4
  br label %27

26:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %29 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr*
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %29, i32 %30)
  store %struct.sockaddr* %31, %struct.sockaddr** %14, align 8
  %32 = load %struct.nfs_args*, %struct.nfs_args** %10, align 8
  %33 = load %struct.mount*, %struct.mount** %13, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.vnode**, %struct.vnode*** %12, align 8
  %39 = load %struct.thread*, %struct.thread** %11, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.thread*, %struct.thread** %11, align 8
  %43 = load i32, i32* @NFS_DEFAULT_NAMETIMEO, align 4
  %44 = load i32, i32* @NFS_DEFAULT_NEGNAMETIMEO, align 4
  %45 = call i32 @mountnfs(%struct.nfs_args* %32, %struct.mount* %33, %struct.sockaddr* %34, i8* %35, i32* null, i32 0, i8* %36, i32 %37, i32* null, i32 0, %struct.vnode** %38, i32 %41, %struct.thread* %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %27
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49)
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

declare dso_local i32 @mountnfs(%struct.nfs_args*, %struct.mount*, %struct.sockaddr*, i8*, i32*, i32, i8*, i32, i32*, i32, %struct.vnode**, i32, %struct.thread*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
