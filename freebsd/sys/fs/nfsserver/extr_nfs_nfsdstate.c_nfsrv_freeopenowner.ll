; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freeopenowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freeopenowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsstate = type { i64, i32 }

@ls_list = common dso_local global i32 0, align 4
@M_NFSDSTATE = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nfsrv_openpluslock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstate*, i32, i32*)* @nfsrv_freeopenowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_freeopenowner(%struct.nfsstate* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nfsstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsstate*, align 8
  %8 = alloca %struct.nfsstate*, align 8
  store %struct.nfsstate* %0, %struct.nfsstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %10 = load i32, i32* @ls_list, align 4
  %11 = call i32 @LIST_REMOVE(%struct.nfsstate* %9, i32 %10)
  %12 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %13 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %12, i32 0, i32 1
  %14 = call %struct.nfsstate* @LIST_FIRST(i32* %13)
  store %struct.nfsstate* %14, %struct.nfsstate** %7, align 8
  br label %15

15:                                               ; preds = %21, %3
  %16 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %17 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %18 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %17, i32 0, i32 1
  %19 = call %struct.nfsstate* @LIST_END(i32* %18)
  %20 = icmp ne %struct.nfsstate* %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  store %struct.nfsstate* %22, %struct.nfsstate** %8, align 8
  %23 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %24 = load i32, i32* @ls_list, align 4
  %25 = call %struct.nfsstate* @LIST_NEXT(%struct.nfsstate* %23, i32 %24)
  store %struct.nfsstate* %25, %struct.nfsstate** %7, align 8
  %26 = load %struct.nfsstate*, %struct.nfsstate** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @nfsrv_freeopen(%struct.nfsstate* %26, i32* null, i32 %27, i32* %28)
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %32 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %37 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @nfsrvd_derefcache(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.nfsstate*, %struct.nfsstate** %4, align 8
  %42 = load i32, i32* @M_NFSDSTATE, align 4
  %43 = call i32 @free(%struct.nfsstate* %41, i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %46 = load i32, i32* @nfsrv_openpluslock, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* @nfsrv_openpluslock, align 4
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.nfsstate*, i32) #1

declare dso_local %struct.nfsstate* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfsstate* @LIST_END(i32*) #1

declare dso_local %struct.nfsstate* @LIST_NEXT(%struct.nfsstate*, i32) #1

declare dso_local i32 @nfsrv_freeopen(%struct.nfsstate*, i32*, i32, i32*) #1

declare dso_local i32 @nfsrvd_derefcache(i64) #1

declare dso_local i32 @free(%struct.nfsstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
