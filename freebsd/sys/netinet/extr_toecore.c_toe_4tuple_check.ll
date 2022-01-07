; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_4tuple_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_toecore.c_toe_4tuple_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcphdr = type { i32 }
%struct.ifnet = type { i32 }
%struct.inpcb = type { i32 }

@INC_ISIPV6 = common dso_local global i32 0, align 4
@V_tcbinfo = common dso_local global i32 0, align 4
@INPLOOKUP_WLOCKPCB = common dso_local global i32 0, align 4
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toe_4tuple_check(%struct.in_conninfo* %0, %struct.tcphdr* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_conninfo*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.inpcb*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %9 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %10 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INC_ISIPV6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %17 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %16, i32 0, i32 6
  %18 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %19 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %22 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %21, i32 0, i32 5
  %23 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %24 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @INPLOOKUP_WLOCKPCB, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %28 = call %struct.inpcb* @in6_pcblookup(i32* @V_tcbinfo, i32* %17, i32 %20, i32* %22, i32 %25, i32 %26, %struct.ifnet* %27)
  store %struct.inpcb* %28, %struct.inpcb** %8, align 8
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %31 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %34 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %37 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.in_conninfo*, %struct.in_conninfo** %5, align 8
  %40 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INPLOOKUP_WLOCKPCB, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %44 = call %struct.inpcb* @in_pcblookup(i32* @V_tcbinfo, i32 %32, i32 %35, i32 %38, i32 %41, i32 %42, %struct.ifnet* %43)
  store %struct.inpcb* %44, %struct.inpcb** %8, align 8
  br label %45

45:                                               ; preds = %29, %15
  %46 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %47 = icmp ne %struct.inpcb* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %50 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %49)
  %51 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @INP_TIMEWAIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %59 = icmp ne %struct.tcphdr* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %62 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %63 = call i32 @tcp_twcheck(%struct.inpcb* %61, i32* null, %struct.tcphdr* %62, i32* null, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EADDRINUSE, align 4
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %57, %48
  %69 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %70 = call i32 @INP_WUNLOCK(%struct.inpcb* %69)
  %71 = load i32, i32* @EADDRINUSE, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %45
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %68, %65
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.inpcb* @in6_pcblookup(i32*, i32*, i32, i32*, i32, i32, %struct.ifnet*) #1

declare dso_local %struct.inpcb* @in_pcblookup(i32*, i32, i32, i32, i32, i32, %struct.ifnet*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @tcp_twcheck(%struct.inpcb*, i32*, %struct.tcphdr*, i32*, i32) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
