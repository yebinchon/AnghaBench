; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_send_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_send_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_2__, i32, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }
%struct.ccnode = type { %struct.mbuf*, %struct.mbuf*, i32* }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdata*, i8*, i8*)* @send_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_dump(%struct.ccdata* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ccnode*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ccnode*
  store %struct.ccnode* %11, %struct.ccnode** %9, align 8
  %12 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %13 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = load i32, i32* @M_PKTHDR, align 4
  %20 = call %struct.mbuf* @m_getcl(i32 %17, i32 %18, i32 %19)
  store %struct.mbuf* %20, %struct.mbuf** %8, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = icmp eq %struct.mbuf* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOBUFS, align 4
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %16
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %28 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %27, i32 0, i32 1
  store %struct.mbuf* %26, %struct.mbuf** %28, align 8
  %29 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %30 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %29, i32 0, i32 0
  store %struct.mbuf* %26, %struct.mbuf** %30, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %55

34:                                               ; preds = %3
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = load i32, i32* @MT_DATA, align 4
  %37 = call %struct.mbuf* @m_getcl(i32 %35, i32 %36, i32 0)
  store %struct.mbuf* %37, %struct.mbuf** %8, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = icmp eq %struct.mbuf* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %42 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %41, i32 0, i32 0
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  %44 = call i32 @m_freem(%struct.mbuf* %43)
  %45 = load i32, i32* @ENOBUFS, align 4
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %34
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %49 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %48, i32 0, i32 1
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 3
  store %struct.mbuf* %47, %struct.mbuf** %51, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %54 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %53, i32 0, i32 1
  store %struct.mbuf* %52, %struct.mbuf** %54, align 8
  br label %55

55:                                               ; preds = %46, %25
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strcpy(i32 %58, i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ccnode*, %struct.ccnode** %9, align 8
  %66 = getelementptr inbounds %struct.ccnode, %struct.ccnode* %65, i32 0, i32 0
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %62
  store i64 %71, i64* %69, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %55, %40, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
