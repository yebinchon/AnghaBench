; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thread = type { i32 }

@NFSSTA_TIMEO = common dso_local global i32 0, align 4
@VQ_NOTRESP = common dso_local global i32 0, align 4
@NFSSTA_LOCKTIMEO = common dso_local global i32 0, align 4
@VQ_NOTRESPLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsmount*, %struct.thread*, i8*, i32, i32)* @nfs_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_up(%struct.nfsmount* %0, %struct.thread* %1, i8* %2, i32 %3, i32 %4) #0 {
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
  br label %99

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %20 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @nfs_msg(%struct.thread* %18, i32 %24, i8* %25, i32 0)
  br label %27

27:                                               ; preds = %17, %14
  %28 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 1
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NFSSTA_TIMEO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFSSTA_TIMEO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load i32, i32* @NFSSTA_TIMEO, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %46 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 1
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* @VQ_NOTRESP, align 4
  %58 = call i32 @vfs_event_signal(i32* %56, i32 %57, i32 1)
  br label %63

59:                                               ; preds = %35, %27
  %60 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %61 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %60, i32 0, i32 1
  %62 = call i32 @mtx_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %42
  %64 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %65 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %64, i32 0, i32 1
  %66 = call i32 @mtx_lock(i32* %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %73 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 1
  %87 = call i32 @mtx_unlock(i32* %86)
  %88 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %89 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* @VQ_NOTRESPLOCK, align 4
  %94 = call i32 @vfs_event_signal(i32* %92, i32 %93, i32 1)
  br label %99

95:                                               ; preds = %71, %63
  %96 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %97 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %96, i32 0, i32 1
  %98 = call i32 @mtx_unlock(i32* %97)
  br label %99

99:                                               ; preds = %13, %95, %78
  ret void
}

declare dso_local i32 @nfs_msg(%struct.thread*, i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_event_signal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
