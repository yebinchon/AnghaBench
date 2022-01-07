; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpcbopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpcbopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.ip6_pktopts* }
%struct.ip6_pktopts = type { i32, i32, i32, i32, i32 }
%struct.sockopt = type { i32 }
%struct.in6_pktinfo = type { i32 }

@IP6PO_MINMTU_MCASTONLY = common dso_local global i32 0, align 4
@IP6PO_TEMPADDR_SYSTEM = common dso_local global i32 0, align 4
@ip6po_hbh = common dso_local global i32 0, align 4
@ip6po_rthdr = common dso_local global i32 0, align 4
@ip6po_dest1 = common dso_local global i32 0, align 4
@ip6po_dest2 = common dso_local global i32 0, align 4
@ip6po_nexthop = common dso_local global i32 0, align 4
@IP6PO_DONTFRAG = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, i32, %struct.sockopt*)* @ip6_getpcbopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_getpcbopt(%struct.inpcb* %0, i32 %1, %struct.sockopt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockopt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in6_pktinfo, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip6_pktopts*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockopt* %2, %struct.sockopt** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @IP6PO_MINMTU_MCASTONLY, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @IP6PO_TEMPADDR_SYSTEM, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %21 = call i32 @INP_RLOCK(%struct.inpcb* %20)
  %22 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 0
  %24 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %23, align 8
  store %struct.ip6_pktopts* %24, %struct.ip6_pktopts** %17, align 8
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %106 [
    i32 133, label %26
    i32 129, label %45
    i32 135, label %59
    i32 131, label %62
    i32 130, label %65
    i32 136, label %68
    i32 134, label %71
    i32 128, label %74
    i32 137, label %83
    i32 132, label %97
  ]

26:                                               ; preds = %3
  %27 = bitcast %struct.in6_pktinfo* %12 to i8*
  store i8* %27, i8** %8, align 8
  %28 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %29 = icmp ne %struct.ip6_pktopts* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %32 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %37 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bcopy(i32 %38, %struct.in6_pktinfo* %12, i32 4)
  %40 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %12, i32 0, i32 0
  %41 = call i32 @in6_clearscope(i32* %40)
  br label %44

42:                                               ; preds = %30, %26
  %43 = call i32 @bzero(%struct.in6_pktinfo* %12, i32 4)
  br label %44

44:                                               ; preds = %42, %35
  store i32 4, i32* %10, align 4
  br label %110

45:                                               ; preds = %3
  %46 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %47 = icmp ne %struct.ip6_pktopts* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %50 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %55 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %48, %45
  %58 = bitcast i32* %13 to i8*
  store i8* %58, i8** %8, align 8
  store i32 4, i32* %10, align 4
  br label %110

59:                                               ; preds = %3
  %60 = load i32, i32* @ip6po_hbh, align 4
  %61 = call i32 @GET_PKTOPT_EXT_HDR(i32 %60)
  br label %110

62:                                               ; preds = %3
  %63 = load i32, i32* @ip6po_rthdr, align 4
  %64 = call i32 @GET_PKTOPT_EXT_HDR(i32 %63)
  br label %110

65:                                               ; preds = %3
  %66 = load i32, i32* @ip6po_dest1, align 4
  %67 = call i32 @GET_PKTOPT_EXT_HDR(i32 %66)
  br label %110

68:                                               ; preds = %3
  %69 = load i32, i32* @ip6po_dest2, align 4
  %70 = call i32 @GET_PKTOPT_EXT_HDR(i32 %69)
  br label %110

71:                                               ; preds = %3
  %72 = load i32, i32* @ip6po_nexthop, align 4
  %73 = call i32 @GET_PKTOPT_SOCKADDR(i32 %72)
  br label %110

74:                                               ; preds = %3
  %75 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %76 = icmp ne %struct.ip6_pktopts* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %79 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = bitcast i32* %15 to i8*
  store i8* %82, i8** %8, align 8
  store i32 4, i32* %10, align 4
  br label %110

83:                                               ; preds = %3
  %84 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %85 = icmp ne %struct.ip6_pktopts* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %88 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IP6PO_DONTFRAG, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %14, align 4
  br label %95

94:                                               ; preds = %86, %83
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = bitcast i32* %14 to i8*
  store i8* %96, i8** %8, align 8
  store i32 4, i32* %10, align 4
  br label %110

97:                                               ; preds = %3
  %98 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %99 = icmp ne %struct.ip6_pktopts* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %17, align 8
  %102 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %100, %97
  %105 = bitcast i32* %16 to i8*
  store i8* %105, i8** %8, align 8
  store i32 4, i32* %10, align 4
  br label %110

106:                                              ; preds = %3
  %107 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %108 = call i32 @INP_RUNLOCK(%struct.inpcb* %107)
  %109 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %109, i32* %4, align 4
  br label %125

110:                                              ; preds = %104, %95, %81, %71, %68, %65, %62, %59, %57, %44
  %111 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %112 = call i32 @INP_RUNLOCK(%struct.inpcb* %111)
  %113 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @sooptcopyout(%struct.sockopt* %113, i8* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @M_TEMP, align 4
  %122 = call i32 @free(i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %110
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %106
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @bcopy(i32, %struct.in6_pktinfo*, i32) #1

declare dso_local i32 @in6_clearscope(i32*) #1

declare dso_local i32 @bzero(%struct.in6_pktinfo*, i32) #1

declare dso_local i32 @GET_PKTOPT_EXT_HDR(i32) #1

declare dso_local i32 @GET_PKTOPT_SOCKADDR(i32) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
