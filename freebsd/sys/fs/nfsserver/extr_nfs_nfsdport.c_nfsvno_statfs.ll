; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.statfs = type { i64, i32, i32, i32, i32 }

@nfsrv_devidcnt = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_statfs(%struct.vnode* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  store %struct.statfs* null, %struct.statfs** %5, align 8
  %7 = load i64, i64* @nfsrv_devidcnt, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i32, i32* @M_TEMP, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.statfs* @malloc(i32 24, i32 %10, i32 %13)
  store %struct.statfs* %14, %struct.statfs** %5, align 8
  %15 = load %struct.statfs*, %struct.statfs** %5, align 8
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nfsrv_pnfsstatfs(%struct.statfs* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load %struct.statfs*, %struct.statfs** %5, align 8
  %24 = load i32, i32* @M_TEMP, align 4
  %25 = call i32 @free(%struct.statfs* %23, i32 %24)
  store %struct.statfs* null, %struct.statfs** %5, align 8
  br label %26

26:                                               ; preds = %22, %9
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.statfs*, %struct.statfs** %4, align 8
  %32 = call i32 @VFS_STATFS(i32 %30, %struct.statfs* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %27
  %36 = load %struct.statfs*, %struct.statfs** %5, align 8
  %37 = icmp ne %struct.statfs* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.statfs*, %struct.statfs** %5, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.statfs*, %struct.statfs** %4, align 8
  %43 = getelementptr inbounds %struct.statfs, %struct.statfs* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.statfs*, %struct.statfs** %5, align 8
  %45 = getelementptr inbounds %struct.statfs, %struct.statfs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.statfs*, %struct.statfs** %4, align 8
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.statfs*, %struct.statfs** %5, align 8
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.statfs*, %struct.statfs** %4, align 8
  %53 = getelementptr inbounds %struct.statfs, %struct.statfs* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.statfs*, %struct.statfs** %5, align 8
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.statfs*, %struct.statfs** %4, align 8
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %38, %35
  %60 = load %struct.statfs*, %struct.statfs** %4, align 8
  %61 = getelementptr inbounds %struct.statfs, %struct.statfs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.statfs*, %struct.statfs** %4, align 8
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.statfs*, %struct.statfs** %4, align 8
  %69 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.statfs*, %struct.statfs** %4, align 8
  %74 = getelementptr inbounds %struct.statfs, %struct.statfs* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %27
  %77 = load %struct.statfs*, %struct.statfs** %5, align 8
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = call i32 @free(%struct.statfs* %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @NFSEXITCODE(i32 %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfsrv_pnfsstatfs(%struct.statfs*, i32) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

declare dso_local i32 @VFS_STATFS(i32, %struct.statfs*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
