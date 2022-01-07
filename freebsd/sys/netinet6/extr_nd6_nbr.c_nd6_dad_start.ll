; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dadq = type { i32, i64, i64, i64, i64, i64, i64, i64, %struct.ifaddr*, i32, i32 }
%struct.epoch_tracker = type { i32 }
%struct.TYPE_7__ = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"starting DAD on non-tentative address %p\00", align 1
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@V_ip6_dad_count = common dso_local global i64 0, align 8
@ND6_IFF_NO_DAD = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@M_IP6NDP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"nd6_dad_start: memory allocation failed for %s(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: starting DAD for %s\0A\00", align 1
@curvnet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_dad_start(%struct.ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca %struct.dadq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.epoch_tracker, align 4
  %10 = alloca i32, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %12 = bitcast %struct.ifaddr* %11 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %12, %struct.in6_ifaddr** %5, align 8
  %13 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %18 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %25 = bitcast %struct.ifaddr* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %28 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %2
  %34 = load i64, i64* @V_ip6_dad_count, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %38 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call %struct.TYPE_7__* @ND_IFINFO(%struct.TYPE_6__* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ND6_IFF_NO_DAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36, %33, %2
  %47 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %50 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %10, align 4
  br label %166

53:                                               ; preds = %36
  %54 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %55 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_UP, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %53
  %63 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %64 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %62
  %72 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %73 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call %struct.TYPE_7__* @ND_IFINFO(%struct.TYPE_6__* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71, %62, %53
  store i32 1, i32* %10, align 4
  br label %166

82:                                               ; preds = %71
  %83 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %84 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %83, i32* null)
  store %struct.dadq* %84, %struct.dadq** %6, align 8
  %85 = icmp ne %struct.dadq* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.dadq*, %struct.dadq** %6, align 8
  %88 = call i32 @nd6_dad_rele(%struct.dadq* %87)
  store i32 1, i32* %10, align 4
  br label %166

89:                                               ; preds = %82
  %90 = load i32, i32* @M_IP6NDP, align 4
  %91 = load i32, i32* @M_NOWAIT, align 4
  %92 = load i32, i32* @M_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = call %struct.dadq* @malloc(i32 80, i32 %90, i32 %93)
  store %struct.dadq* %94, %struct.dadq** %6, align 8
  %95 = load %struct.dadq*, %struct.dadq** %6, align 8
  %96 = icmp eq %struct.dadq* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %89
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %100 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @ip6_sprintf(i8* %16, i32* %101)
  %103 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %104 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = icmp ne %struct.TYPE_6__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %109 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i8* @if_name(%struct.TYPE_6__* %110)
  br label %113

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %107
  %114 = phi i8* [ %111, %107 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %112 ]
  %115 = call i32 @log(i32 %98, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %102, i8* %114)
  store i32 1, i32* %10, align 4
  br label %166

116:                                              ; preds = %89
  %117 = load %struct.dadq*, %struct.dadq** %6, align 8
  %118 = getelementptr inbounds %struct.dadq, %struct.dadq* %117, i32 0, i32 10
  %119 = call i32 @callout_init(i32* %118, i32 0)
  %120 = load i32, i32* @LOG_DEBUG, align 4
  %121 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %122 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i8* @if_name(%struct.TYPE_6__* %123)
  %125 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %126 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i32 @ip6_sprintf(i8* %16, i32* %127)
  %129 = call i32 @nd6log(i32 %128)
  %130 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %131 = load %struct.dadq*, %struct.dadq** %6, align 8
  %132 = getelementptr inbounds %struct.dadq, %struct.dadq* %131, i32 0, i32 8
  store %struct.ifaddr* %130, %struct.ifaddr** %132, align 8
  %133 = load %struct.dadq*, %struct.dadq** %6, align 8
  %134 = getelementptr inbounds %struct.dadq, %struct.dadq* %133, i32 0, i32 8
  %135 = load %struct.ifaddr*, %struct.ifaddr** %134, align 8
  %136 = call i32 @ifa_ref(%struct.ifaddr* %135)
  %137 = load i64, i64* @V_ip6_dad_count, align 8
  %138 = load %struct.dadq*, %struct.dadq** %6, align 8
  %139 = getelementptr inbounds %struct.dadq, %struct.dadq* %138, i32 0, i32 7
  store i64 %137, i64* %139, align 8
  %140 = load %struct.dadq*, %struct.dadq** %6, align 8
  %141 = getelementptr inbounds %struct.dadq, %struct.dadq* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.dadq*, %struct.dadq** %6, align 8
  %143 = getelementptr inbounds %struct.dadq, %struct.dadq* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load %struct.dadq*, %struct.dadq** %6, align 8
  %145 = getelementptr inbounds %struct.dadq, %struct.dadq* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load %struct.dadq*, %struct.dadq** %6, align 8
  %147 = getelementptr inbounds %struct.dadq, %struct.dadq* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load %struct.dadq*, %struct.dadq** %6, align 8
  %149 = getelementptr inbounds %struct.dadq, %struct.dadq* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.dadq*, %struct.dadq** %6, align 8
  %151 = getelementptr inbounds %struct.dadq, %struct.dadq* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.dadq*, %struct.dadq** %6, align 8
  %153 = getelementptr inbounds %struct.dadq, %struct.dadq* %152, i32 0, i32 0
  %154 = call i32 @refcount_init(i32* %153, i32 1)
  %155 = load %struct.dadq*, %struct.dadq** %6, align 8
  %156 = call i32 @nd6_dad_add(%struct.dadq* %155)
  %157 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %9, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @NET_EPOCH_ENTER(i32 %158)
  %160 = load %struct.dadq*, %struct.dadq** %6, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @nd6_dad_starttimer(%struct.dadq* %160, i32 %161, i32 0)
  %163 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %9, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @NET_EPOCH_EXIT(i32 %164)
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %116, %113, %86, %81, %46
  %167 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %10, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local %struct.TYPE_7__* @ND_IFINFO(%struct.TYPE_6__*) #2

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, i32*) #2

declare dso_local i32 @nd6_dad_rele(%struct.dadq*) #2

declare dso_local %struct.dadq* @malloc(i32, i32, i32) #2

declare dso_local i32 @log(i32, i8*, i32, i8*) #2

declare dso_local i32 @ip6_sprintf(i8*, i32*) #2

declare dso_local i8* @if_name(%struct.TYPE_6__*) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i32 @nd6log(i32) #2

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #2

declare dso_local i32 @refcount_init(i32*, i32) #2

declare dso_local i32 @nd6_dad_add(%struct.dadq*) #2

declare dso_local i32 @NET_EPOCH_ENTER(i32) #2

declare dso_local i32 @nd6_dad_starttimer(%struct.dadq*, i32, i32) #2

declare dso_local i32 @NET_EPOCH_EXIT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
