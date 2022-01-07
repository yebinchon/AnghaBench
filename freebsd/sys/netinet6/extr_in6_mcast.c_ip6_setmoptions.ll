; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_ip6_setmoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_ip6_setmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sockopt = type { i32, i32 }
%struct.ip6_moptions = type { i32, i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V_ip6_defmcasthlim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_setmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip6_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPPROTO_DIVERT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_RAW, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %31 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_DGRAM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29, %2
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %40, i32* %3, align 4
  br label %134

41:                                               ; preds = %29, %19
  %42 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %128 [
    i32 135, label %45
    i32 136, label %49
    i32 134, label %85
    i32 139, label %112
    i32 132, label %112
    i32 131, label %112
    i32 138, label %116
    i32 130, label %116
    i32 129, label %116
    i32 133, label %120
    i32 128, label %120
    i32 137, label %124
  ]

45:                                               ; preds = %41
  %46 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %47 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %48 = call i32 @in6p_set_multicast_if(%struct.inpcb* %46, %struct.sockopt* %47)
  store i32 %48, i32* %7, align 4
  br label %130

49:                                               ; preds = %41
  %50 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %51 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %7, align 4
  br label %130

57:                                               ; preds = %49
  %58 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %59 = call i32 @sooptcopyin(%struct.sockopt* %58, i32* %8, i32 4, i32 4)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %130

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, -1
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 255
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %7, align 4
  br label %130

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @V_ip6_defmcasthlim, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %71
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %79 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %78)
  store %struct.ip6_moptions* %79, %struct.ip6_moptions** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %82 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %84 = call i32 @INP_WUNLOCK(%struct.inpcb* %83)
  br label %130

85:                                               ; preds = %41
  %86 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %87 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %7, align 4
  br label %130

93:                                               ; preds = %85
  %94 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %95 = call i32 @sooptcopyin(%struct.sockopt* %94, i32* %9, i32 4, i32 4)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %130

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %7, align 4
  br label %130

104:                                              ; preds = %99
  %105 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %106 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %105)
  store %struct.ip6_moptions* %106, %struct.ip6_moptions** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %109 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %111 = call i32 @INP_WUNLOCK(%struct.inpcb* %110)
  br label %130

112:                                              ; preds = %41, %41, %41
  %113 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %114 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %115 = call i32 @in6p_join_group(%struct.inpcb* %113, %struct.sockopt* %114)
  store i32 %115, i32* %7, align 4
  br label %130

116:                                              ; preds = %41, %41, %41
  %117 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %118 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %119 = call i32 @in6p_leave_group(%struct.inpcb* %117, %struct.sockopt* %118)
  store i32 %119, i32* %7, align 4
  br label %130

120:                                              ; preds = %41, %41
  %121 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %122 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %123 = call i32 @in6p_block_unblock_source(%struct.inpcb* %121, %struct.sockopt* %122)
  store i32 %123, i32* %7, align 4
  br label %130

124:                                              ; preds = %41
  %125 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %126 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %127 = call i32 @in6p_set_source_filters(%struct.inpcb* %125, %struct.sockopt* %126)
  store i32 %127, i32* %7, align 4
  br label %130

128:                                              ; preds = %41
  %129 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %124, %120, %116, %112, %104, %102, %98, %91, %77, %69, %62, %55, %45
  %131 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %132 = call i32 @INP_UNLOCK_ASSERT(%struct.inpcb* %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %39
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @in6p_set_multicast_if(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @in6p_join_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_leave_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_block_unblock_source(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_set_source_filters(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @INP_UNLOCK_ASSERT(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
