; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_ip6_getmoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_ip6_getmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_5__*, %struct.ip6_moptions* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ip6_moptions = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sockopt = type { i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@V_ip6_defmcasthlim = common dso_local global i32 0, align 4
@in6_mcast_loop = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_getmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip6_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = call i32 @INP_WLOCK(%struct.inpcb* %9)
  %11 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %12 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %11, i32 0, i32 1
  %13 = load %struct.ip6_moptions*, %struct.ip6_moptions** %12, align 8
  store %struct.ip6_moptions* %13, %struct.ip6_moptions** %6, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_DIVERT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %2
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_RAW, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %23
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SOCK_DGRAM, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33, %2
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = call i32 @INP_WUNLOCK(%struct.inpcb* %44)
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %46, i32* %3, align 4
  br label %119

47:                                               ; preds = %33, %23
  store i32 0, i32* %7, align 4
  %48 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %49 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %111 [
    i32 129, label %51
    i32 130, label %71
    i32 128, label %85
    i32 131, label %99
  ]

51:                                               ; preds = %47
  %52 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %53 = icmp eq %struct.ip6_moptions* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %56 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp eq %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %51
  store i32 0, i32* %8, align 4
  br label %66

60:                                               ; preds = %54
  %61 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %62 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %68 = call i32 @INP_WUNLOCK(%struct.inpcb* %67)
  %69 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %70 = call i32 @sooptcopyout(%struct.sockopt* %69, i32* %8, i32 4)
  store i32 %70, i32* %7, align 4
  br label %115

71:                                               ; preds = %47
  %72 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %73 = icmp eq %struct.ip6_moptions* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @V_ip6_defmcasthlim, align 4
  store i32 %75, i32* %8, align 4
  br label %80

76:                                               ; preds = %71
  %77 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %78 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %82 = call i32 @INP_WUNLOCK(%struct.inpcb* %81)
  %83 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %84 = call i32 @sooptcopyout(%struct.sockopt* %83, i32* %8, i32 4)
  store i32 %84, i32* %7, align 4
  br label %115

85:                                               ; preds = %47
  %86 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %87 = icmp eq %struct.ip6_moptions* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @in6_mcast_loop, align 4
  store i32 %89, i32* %8, align 4
  br label %94

90:                                               ; preds = %85
  %91 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %92 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %88
  %95 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %96 = call i32 @INP_WUNLOCK(%struct.inpcb* %95)
  %97 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %98 = call i32 @sooptcopyout(%struct.sockopt* %97, i32* %8, i32 4)
  store i32 %98, i32* %7, align 4
  br label %115

99:                                               ; preds = %47
  %100 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %101 = icmp eq %struct.ip6_moptions* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %103, i32* %7, align 4
  %104 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %105 = call i32 @INP_WUNLOCK(%struct.inpcb* %104)
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %108 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %109 = call i32 @in6p_get_source_filters(%struct.inpcb* %107, %struct.sockopt* %108)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %102
  br label %115

111:                                              ; preds = %47
  %112 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %113 = call i32 @INP_WUNLOCK(%struct.inpcb* %112)
  %114 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %110, %94, %80, %66
  %116 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %117 = call i32 @INP_UNLOCK_ASSERT(%struct.inpcb* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %43
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @in6p_get_source_filters(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @INP_UNLOCK_ASSERT(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
