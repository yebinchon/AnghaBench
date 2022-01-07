; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_raw_ip6.c_rip6_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i64, i32 }
%struct.inpcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_SETFIB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rip6_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %8 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %9 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %16 = call i32 @icmp6_ctloutput(%struct.socket* %14, %struct.sockopt* %15)
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_IPV6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %25 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOL_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SO_SETFIB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %4, align 8
  %37 = call %struct.inpcb* @sotoinpcb(%struct.socket* %36)
  store %struct.inpcb* %37, %struct.inpcb** %6, align 8
  %38 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %39 = call i32 @INP_WLOCK(%struct.inpcb* %38)
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %47 = call i32 @INP_WUNLOCK(%struct.inpcb* %46)
  store i32 0, i32* %3, align 4
  br label %101

48:                                               ; preds = %29, %23
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %101

50:                                               ; preds = %17
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  %52 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %53 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %99 [
    i32 129, label %55
    i32 128, label %77
  ]

55:                                               ; preds = %51
  %56 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %57 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  switch i64 %58, label %72 [
    i64 131, label %59
    i64 132, label %59
    i64 135, label %59
    i64 133, label %59
    i64 136, label %59
    i64 134, label %59
    i64 130, label %59
    i64 137, label %68
  ]

59:                                               ; preds = %55, %55, %55, %55, %55, %55, %55
  br i1 true, label %60, label %64

60:                                               ; preds = %59
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %63 = call i32 @ip6_mrouter_get(%struct.socket* %61, %struct.sockopt* %62)
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 4
  br label %76

68:                                               ; preds = %55
  %69 = load %struct.socket*, %struct.socket** %4, align 8
  %70 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %71 = call i32 @ip6_raw_ctloutput(%struct.socket* %69, %struct.sockopt* %70)
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %55
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %75 = call i32 @ip6_ctloutput(%struct.socket* %73, %struct.sockopt* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %68, %66
  br label %99

77:                                               ; preds = %51
  %78 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %79 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  switch i64 %80, label %94 [
    i64 131, label %81
    i64 132, label %81
    i64 135, label %81
    i64 133, label %81
    i64 136, label %81
    i64 134, label %81
    i64 130, label %81
    i64 137, label %90
  ]

81:                                               ; preds = %77, %77, %77, %77, %77, %77, %77
  br i1 true, label %82, label %86

82:                                               ; preds = %81
  %83 = load %struct.socket*, %struct.socket** %4, align 8
  %84 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %85 = call i32 @ip6_mrouter_set(%struct.socket* %83, %struct.sockopt* %84)
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %85, %82 ], [ %87, %86 ]
  store i32 %89, i32* %7, align 4
  br label %98

90:                                               ; preds = %77
  %91 = load %struct.socket*, %struct.socket** %4, align 8
  %92 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %93 = call i32 @ip6_raw_ctloutput(%struct.socket* %91, %struct.sockopt* %92)
  store i32 %93, i32* %7, align 4
  br label %98

94:                                               ; preds = %77
  %95 = load %struct.socket*, %struct.socket** %4, align 8
  %96 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %97 = call i32 @ip6_ctloutput(%struct.socket* %95, %struct.sockopt* %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %90, %88
  br label %99

99:                                               ; preds = %51, %98, %76
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %48, %35, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @icmp6_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @ip6_mrouter_get(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_raw_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_mrouter_set(%struct.socket*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
