; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freedeleg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freedeleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsstate = type { i32, %struct.nfslockfile* }
%struct.nfslockfile = type { i64, i32, i32, i32, i32, i32, i32 }

@ls_hash = common dso_local global i32 0, align 4
@ls_list = common dso_local global i32 0, align 4
@ls_file = common dso_local global i32 0, align 4
@NFSLCK_DELEGWRITE = common dso_local global i32 0, align 4
@nfsrv_writedelegcnt = common dso_local global i32 0, align 4
@M_NFSDSTATE = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nfsrv_openpluslock = common dso_local global i32 0, align 4
@nfsrv_delegatecnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstate*)* @nfsrv_freedeleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_freedeleg(%struct.nfsstate* %0) #0 {
  %2 = alloca %struct.nfsstate*, align 8
  %3 = alloca %struct.nfslockfile*, align 8
  store %struct.nfsstate* %0, %struct.nfsstate** %2, align 8
  %4 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %5 = load i32, i32* @ls_hash, align 4
  %6 = call i32 @LIST_REMOVE(%struct.nfsstate* %4, i32 %5)
  %7 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %8 = load i32, i32* @ls_list, align 4
  %9 = call i32 @LIST_REMOVE(%struct.nfsstate* %7, i32 %8)
  %10 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %11 = load i32, i32* @ls_file, align 4
  %12 = call i32 @LIST_REMOVE(%struct.nfsstate* %10, i32 %11)
  %13 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %14 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NFSLCK_DELEGWRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @nfsrv_writedelegcnt, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @nfsrv_writedelegcnt, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %24 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %23, i32 0, i32 1
  %25 = load %struct.nfslockfile*, %struct.nfslockfile** %24, align 8
  store %struct.nfslockfile* %25, %struct.nfslockfile** %3, align 8
  %26 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %27 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %26, i32 0, i32 6
  %28 = call i64 @LIST_EMPTY(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %22
  %31 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %32 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %31, i32 0, i32 5
  %33 = call i64 @LIST_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %37 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %36, i32 0, i32 4
  %38 = call i64 @LIST_EMPTY(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %42 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %41, i32 0, i32 3
  %43 = call i64 @LIST_EMPTY(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %47 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %46, i32 0, i32 2
  %48 = call i64 @LIST_EMPTY(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %52 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %57 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %56, i32 0, i32 1
  %58 = call i64 @nfsv4_testlock(i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.nfslockfile*, %struct.nfslockfile** %3, align 8
  %62 = call i32 @nfsrv_freenfslockfile(%struct.nfslockfile* %61)
  br label %63

63:                                               ; preds = %60, %55, %50, %45, %40, %35, %30, %22
  %64 = load %struct.nfsstate*, %struct.nfsstate** %2, align 8
  %65 = load i32, i32* @M_NFSDSTATE, align 4
  %66 = call i32 @free(%struct.nfsstate* %64, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %69 = load i32, i32* @nfsrv_openpluslock, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @nfsrv_openpluslock, align 4
  %71 = load i32, i32* @nfsrv_delegatecnt, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* @nfsrv_delegatecnt, align 4
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.nfsstate*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i64 @nfsv4_testlock(i32*) #1

declare dso_local i32 @nfsrv_freenfslockfile(%struct.nfslockfile*) #1

declare dso_local i32 @free(%struct.nfsstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
