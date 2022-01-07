; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thread = type { i32 }

@NFSSTA_TIMEO = common dso_local global i32 0, align 4
@VQ_NOTRESP = common dso_local global i32 0, align 4
@NFSSTA_LOCKTIMEO = common dso_local global i32 0, align 4
@VQ_NOTRESPLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsmount*, %struct.thread*, i8*, i32, i32)* @nfs_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_down(%struct.nfsmount* %0, %struct.thread* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %6, align 8
  store %struct.thread* %1, %struct.thread** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %12 = icmp eq %struct.nfsmount* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %95

14:                                               ; preds = %5
  %15 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @NFSSTA_TIMEO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NFSSTA_TIMEO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @NFSSTA_TIMEO, align 4
  %31 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 2
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* @VQ_NOTRESP, align 4
  %44 = call i32 @vfs_event_signal(i32* %42, i32 %43, i32 0)
  br label %49

45:                                               ; preds = %22, %14
  %46 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 2
  %48 = call i32 @mtx_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %29
  %50 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %51 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %50, i32 0, i32 2
  %52 = call i32 @mtx_lock(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %59 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %66 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %71 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %70, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %74 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* @VQ_NOTRESPLOCK, align 4
  %79 = call i32 @vfs_event_signal(i32* %77, i32 %78, i32 0)
  br label %84

80:                                               ; preds = %57, %49
  %81 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 2
  %83 = call i32 @mtx_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %64
  %85 = load %struct.thread*, %struct.thread** %7, align 8
  %86 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %87 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @nfs_msg(%struct.thread* %85, i32 %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %84, %13
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_event_signal(i32*, i32, i32) #1

declare dso_local i32 @nfs_msg(%struct.thread*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
