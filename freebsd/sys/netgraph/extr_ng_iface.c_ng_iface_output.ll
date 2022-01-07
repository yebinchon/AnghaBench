; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)*, i32 }
%struct.mbuf = type { i64 }
%struct.sockaddr = type { i64, i32 }
%struct.route = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NGM_IFACE_COOKIE = common dso_local global i32 0, align 4
@V_ng_iface_max_nest = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@IFCOUNTER_OQDROPS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* @ng_iface_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_output(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.route* %3, %struct.route** %9, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18, %4
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  %28 = load i32, i32* @ENETDOWN, align 4
  store i32 %28, i32* %5, align 4
  br label %95

29:                                               ; preds = %18
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = load i32, i32* @NGM_IFACE_COOKIE, align 4
  %33 = load i32, i32* @V_ng_iface_max_nest, align 4
  %34 = call i32 @if_tunnel_check_nesting(%struct.ifnet* %30, %struct.mbuf* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %95

41:                                               ; preds = %29
  %42 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_UNSPEC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bcopy(i32 %50, i64* %10, i32 8)
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @ng_iface_bpftap(%struct.ifnet* %57, %struct.mbuf* %58, i64 %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 3
  %63 = call i64 @ALTQ_IS_ENABLED(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %67 = load i32, i32* @M_NOWAIT, align 4
  %68 = call i32 @M_PREPEND(%struct.mbuf* %66, i32 8, i32 %67)
  %69 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %70 = icmp eq %struct.mbuf* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = load i32, i32* @IFCOUNTER_OQDROPS, align 4
  %74 = call i32 @if_inc_counter(%struct.ifnet* %72, i32 %73, i32 1)
  %75 = load i32, i32* @ENOBUFS, align 4
  store i32 %75, i32* %5, align 4
  br label %95

76:                                               ; preds = %65
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  store i64 %77, i64* %81, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 2
  %84 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %83, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %87 = call i32 %84(%struct.ifnet* %85, %struct.mbuf* %86)
  store i32 %87, i32* %11, align 4
  br label %93

88:                                               ; preds = %56
  %89 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @ng_iface_send(%struct.ifnet* %89, %struct.mbuf* %90, i64 %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %76
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %71, %37, %25
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_tunnel_check_nesting(%struct.ifnet*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i64*, i32) #1

declare dso_local i32 @ng_iface_bpftap(%struct.ifnet*, %struct.mbuf*, i64) #1

declare dso_local i64 @ALTQ_IS_ENABLED(i32*) #1

declare dso_local i32 @M_PREPEND(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ng_iface_send(%struct.ifnet*, %struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
