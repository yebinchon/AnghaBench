; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_if_simloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_if_simloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }

@V_loif = common dso_local global %struct.ifnet* null, align 8
@M_MCAST = common dso_local global i32 0, align 4
@vm_offset_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"if_simloop: hlen too small\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"if_simloop: can't handle af=%d\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@M_LOOP = common dso_local global i32 0, align 4
@NETISR_IP = common dso_local global i32 0, align 4
@NETISR_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_simloop(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = call i32 @m_tag_delete_nonpersistent(%struct.mbuf* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.ifnet* %15, %struct.ifnet** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @bpf_peers_present(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = call i32 @bpf_mtap(i32 %30, %struct.mbuf* %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %60

34:                                               ; preds = %4
  %35 = load %struct.ifnet*, %struct.ifnet** @V_loif, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @bpf_peers_present(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @M_MCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.ifnet*, %struct.ifnet** @V_loif, align 8
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = icmp eq %struct.ifnet* %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ifnet*, %struct.ifnet** @V_loif, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = call i32 @bpf_mtap2(i32 %55, i32* %10, i32 4, %struct.mbuf* %56)
  br label %58

58:                                               ; preds = %51, %47
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @m_adj(%struct.mbuf* %64, i32 %65)
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = load i32, i32* @vm_offset_t, align 4
  %69 = call i32 @mtod(%struct.mbuf* %67, i32 %68)
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 3
  %75 = zext i1 %74 to i32
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %81 = load i32, i32* @vm_offset_t, align 4
  %82 = call i32 @mtod(%struct.mbuf* %80, i32 %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %84 = load i32, i32* @vm_offset_t, align 4
  %85 = call i32 @mtod(%struct.mbuf* %83, i32 %84)
  %86 = and i32 %85, 3
  %87 = sub nsw i32 %82, %86
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bcopy(i32 %79, i8* %89, i32 %92)
  %94 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %95 = load i32, i32* @vm_offset_t, align 4
  %96 = call i32 @mtod(%struct.mbuf* %94, i32 %95)
  %97 = and i32 %96, 3
  %98 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %72, %63
  br label %103

103:                                              ; preds = %102, %60
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %105 [
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %109 = call i32 @m_freem(%struct.mbuf* %108)
  %110 = load i32, i32* @EAFNOSUPPORT, align 4
  ret i32 %110
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @m_tag_delete_nonpersistent(%struct.mbuf*) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local i32 @bpf_mtap(i32, %struct.mbuf*) #1

declare dso_local i32 @bpf_mtap2(i32, i32*, i32, %struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
