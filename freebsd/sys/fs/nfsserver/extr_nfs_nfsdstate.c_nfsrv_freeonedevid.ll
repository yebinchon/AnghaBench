; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freeonedevid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_freeonedevid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsdevice = type { %struct.nfsdevice*, %struct.nfsdevice*, %struct.nfsdevice*, i32**, i32* }

@nfsrv_devidcnt = common dso_local global i32 0, align 4
@nfsrv_dsdirsize = common dso_local global i32 0, align 4
@M_NFSDSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrv_freeonedevid(%struct.nfsdevice* %0) #0 {
  %2 = alloca %struct.nfsdevice*, align 8
  %3 = alloca i32, align 4
  store %struct.nfsdevice* %0, %struct.nfsdevice** %2, align 8
  %4 = call i32 @atomic_add_int(i32* @nfsrv_devidcnt, i32 -1)
  %5 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %6 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @vrele(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @nfsrv_dsdirsize, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %15 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %14, i32 0, i32 3
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %24 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @vrele(i32* %29)
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %37 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %36, i32 0, i32 2
  %38 = load %struct.nfsdevice*, %struct.nfsdevice** %37, align 8
  %39 = load i32, i32* @M_NFSDSTATE, align 4
  %40 = call i32 @free(%struct.nfsdevice* %38, i32 %39)
  %41 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %42 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %41, i32 0, i32 1
  %43 = load %struct.nfsdevice*, %struct.nfsdevice** %42, align 8
  %44 = load i32, i32* @M_NFSDSTATE, align 4
  %45 = call i32 @free(%struct.nfsdevice* %43, i32 %44)
  %46 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %47 = getelementptr inbounds %struct.nfsdevice, %struct.nfsdevice* %46, i32 0, i32 0
  %48 = load %struct.nfsdevice*, %struct.nfsdevice** %47, align 8
  %49 = load i32, i32* @M_NFSDSTATE, align 4
  %50 = call i32 @free(%struct.nfsdevice* %48, i32 %49)
  %51 = load %struct.nfsdevice*, %struct.nfsdevice** %2, align 8
  %52 = load i32, i32* @M_NFSDSTATE, align 4
  %53 = call i32 @free(%struct.nfsdevice* %51, i32 %52)
  ret void
}

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @vrele(i32*) #1

declare dso_local i32 @free(%struct.nfsdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
