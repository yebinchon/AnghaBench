; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfssockreq = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newnfs_disconnect(%struct.nfssockreq* %0) #0 {
  %2 = alloca %struct.nfssockreq*, align 8
  %3 = alloca i32*, align 8
  store %struct.nfssockreq* %0, %struct.nfssockreq** %2, align 8
  %4 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %5 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %8 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %13 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %3, align 8
  %15 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %16 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %18 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @rpc_gss_secpurge_call(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @CLNT_CLOSE(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @CLNT_RELEASE(i32* %24)
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.nfssockreq*, %struct.nfssockreq** %2, align 8
  %28 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  br label %30

30:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rpc_gss_secpurge_call(i32*) #1

declare dso_local i32 @CLNT_CLOSE(i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
