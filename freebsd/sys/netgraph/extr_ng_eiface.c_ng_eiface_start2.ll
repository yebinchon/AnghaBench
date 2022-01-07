; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_start2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_start2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_MONITOR = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @ng_eiface_start2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_eiface_start2(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.ifnet*
  store %struct.ifnet* %14, %struct.ifnet** %9, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %4
  br label %88

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %80, %55, %34
  %36 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 2
  %38 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %39 = call i32 @IF_DEQUEUE(i32* %37, %struct.mbuf* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %41 = icmp eq %struct.mbuf* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %81

43:                                               ; preds = %35
  %44 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %45 = call i32 @m_tag_delete_chain(%struct.mbuf* %44, i32* null)
  %46 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %48 = call i32 @BPF_MTAP(%struct.ifnet* %46, %struct.mbuf* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_MONITOR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %57 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %58 = call i32 @if_inc_counter(%struct.ifnet* %56, i32 %57, i32 1)
  %59 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %60 = call i32 @m_freem(%struct.mbuf* %59)
  br label %35

61:                                               ; preds = %43
  %62 = call i32 (...) @NG_OUTBOUND_THREAD_REF()
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %68 = call i32 @NG_SEND_DATA_ONLY(i32 %63, i32 %66, %struct.mbuf* %67)
  %69 = call i32 (...) @NG_OUTBOUND_THREAD_UNREF()
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %74 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %75 = call i32 @if_inc_counter(%struct.ifnet* %73, i32 %74, i32 1)
  br label %80

76:                                               ; preds = %61
  %77 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %78 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %79 = call i32 @if_inc_counter(%struct.ifnet* %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %76, %72
  br label %35

81:                                               ; preds = %42
  %82 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %33
  ret void
}

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_tag_delete_chain(%struct.mbuf*, i32*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @NG_OUTBOUND_THREAD_REF(...) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @NG_OUTBOUND_THREAD_UNREF(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
