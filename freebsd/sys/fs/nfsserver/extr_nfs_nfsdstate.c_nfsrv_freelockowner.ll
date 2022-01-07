; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freelockowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freelockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsstate = type { i64 }

@ls_hash = common dso_local global i32 0, align 4
@ls_list = common dso_local global i32 0, align 4
@M_NFSDSTATE = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nfsrv_openpluslock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstate*, i32, i32, i32*)* @nfsrv_freelockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_freelockowner(%struct.nfsstate* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nfsstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.nfsstate* %0, %struct.nfsstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %10 = load i32, i32* @ls_hash, align 4
  %11 = call i32 @LIST_REMOVE(%struct.nfsstate* %9, i32 %10)
  %12 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %13 = load i32, i32* @ls_list, align 4
  %14 = call i32 @LIST_REMOVE(%struct.nfsstate* %12, i32 %13)
  %15 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @nfsrv_freeallnfslocks(%struct.nfsstate* %15, i32 %16, i32 %17, i32* %18)
  %20 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %21 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %26 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nfsrvd_derefcache(i64 %27)
  br label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %31 = load i32, i32* @M_NFSDSTATE, align 4
  %32 = call i32 @free(%struct.nfsstate* %30, i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %35 = load i32, i32* @nfsrv_openpluslock, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @nfsrv_openpluslock, align 4
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.nfsstate*, i32) #1

declare dso_local i32 @nfsrv_freeallnfslocks(%struct.nfsstate*, i32, i32, i32*) #1

declare dso_local i32 @nfsrvd_derefcache(i64) #1

declare dso_local i32 @free(%struct.nfsstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
