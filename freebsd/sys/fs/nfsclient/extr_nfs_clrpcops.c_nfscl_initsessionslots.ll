; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_initsessionslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_initsessionslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclsession = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NFSV4_CBSLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsclsession*)* @nfscl_initsessionslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_initsessionslots(%struct.nfsclsession* %0) #0 {
  %2 = alloca %struct.nfsclsession*, align 8
  %3 = alloca i32, align 4
  store %struct.nfsclsession* %0, %struct.nfsclsession** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NFSV4_CBSLOTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.nfsclsession*, %struct.nfsclsession** %2, align 8
  %10 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = load %struct.nfsclsession*, %struct.nfsclsession** %2, align 8
  %20 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @m_freem(i32* %26)
  br label %28

28:                                               ; preds = %18, %8
  %29 = load %struct.nfsclsession*, %struct.nfsclsession** %2, align 8
  %30 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = call i32 @NFSBZERO(%struct.TYPE_2__* %34, i32 4)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

39:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 64
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.nfsclsession*, %struct.nfsclsession** %2, align 8
  %45 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.nfsclsession*, %struct.nfsclsession** %2, align 8
  %55 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  ret void
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @NFSBZERO(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
