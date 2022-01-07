; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_prelist_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_prelist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefixctl = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nd_defrouter = type { i32 }
%struct.nd_prefix = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.epoch_tracker = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@M_IP6NDP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@V_nd_prefix = common dso_local global i32 0, align 4
@ndpr_entry = common dso_local global i32 0, align 4
@V_nd6_list_genid = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"nd6_prelist_add: failed to make the prefix %s/%d on-link on %s (errno=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_prelist_add(%struct.nd_prefixctl* %0, %struct.nd_defrouter* %1, %struct.nd_prefix** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_prefixctl*, align 8
  %6 = alloca %struct.nd_defrouter*, align 8
  %7 = alloca %struct.nd_prefix**, align 8
  %8 = alloca %struct.nd_prefix*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.epoch_tracker, align 4
  store %struct.nd_prefixctl* %0, %struct.nd_prefixctl** %5, align 8
  store %struct.nd_defrouter* %1, %struct.nd_defrouter** %6, align 8
  store %struct.nd_prefix** %2, %struct.nd_prefix*** %7, align 8
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @M_IP6NDP, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.nd_prefix* @malloc(i32 48, i32 %18, i32 %21)
  store %struct.nd_prefix* %22, %struct.nd_prefix** %8, align 8
  %23 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %24 = icmp eq %struct.nd_prefix* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %29 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %28, i32 0, i32 10
  %30 = load %struct.nd_prefix**, %struct.nd_prefix*** %7, align 8
  %31 = icmp ne %struct.nd_prefix** %30, null
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 1
  %34 = call i32 @refcount_init(i32* %29, i32 %33)
  %35 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %36 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %39 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %41 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %40, i32 0, i32 2
  %42 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %43 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %42, i32 0, i32 2
  %44 = bitcast %struct.TYPE_2__* %41 to i8*
  %45 = bitcast %struct.TYPE_2__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %47 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %50 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %52 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %55 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %57 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %60 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %62 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %65 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %67 = call i32 @in6_init_prefix_ltimes(%struct.nd_prefix* %66)
  store i32 %67, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %27
  %70 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %71 = load i32, i32* @M_IP6NDP, align 4
  %72 = call i32 @free(%struct.nd_prefix* %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %146

74:                                               ; preds = %27
  %75 = load i32, i32* @time_uptime, align 4
  %76 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %77 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %79 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %78, i32 0, i32 4
  %80 = call i32 @LIST_INIT(i32* %79)
  %81 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %82 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %81, i32 0, i32 1
  %83 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %84 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @in6_prefixlen2mask(i32* %82, i32 %85)
  %87 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %88 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %91 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %90, i32 0, i32 1
  %92 = call i32 @IN6_MASK_ADDR(i32* %89, i32* %91)
  %93 = call i32 (...) @ND6_WLOCK()
  %94 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %95 = load i32, i32* @ndpr_entry, align 4
  %96 = call i32 @LIST_INSERT_HEAD(i32* @V_nd_prefix, %struct.nd_prefix* %94, i32 %95)
  %97 = load i32, i32* @V_nd6_list_genid, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @V_nd6_list_genid, align 4
  %99 = call i32 (...) @ND6_WUNLOCK()
  %100 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %101 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %74
  %105 = call i32 (...) @ND6_ONLINK_LOCK()
  %106 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @NET_EPOCH_ENTER(i32 %107)
  %109 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %110 = call i32 @nd6_prefix_onlink(%struct.nd_prefix* %109)
  store i32 %110, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %104
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %115 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @ip6_sprintf(i8* %17, i32* %116)
  %118 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %119 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %5, align 8
  %122 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @if_name(i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @nd6log(i32 %125)
  br label %127

127:                                              ; preds = %112, %104
  %128 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @NET_EPOCH_EXIT(i32 %129)
  %131 = call i32 (...) @ND6_ONLINK_UNLOCK()
  br label %132

132:                                              ; preds = %127, %74
  %133 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %134 = icmp ne %struct.nd_defrouter* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %137 = load %struct.nd_defrouter*, %struct.nd_defrouter** %6, align 8
  %138 = call i32 @pfxrtr_add(%struct.nd_prefix* %136, %struct.nd_defrouter* %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = load %struct.nd_prefix**, %struct.nd_prefix*** %7, align 8
  %141 = icmp ne %struct.nd_prefix** %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.nd_prefix*, %struct.nd_prefix** %8, align 8
  %144 = load %struct.nd_prefix**, %struct.nd_prefix*** %7, align 8
  store %struct.nd_prefix* %143, %struct.nd_prefix** %144, align 8
  br label %145

145:                                              ; preds = %142, %139
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %69, %25
  %147 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nd_prefix* @malloc(i32, i32, i32) #2

declare dso_local i32 @refcount_init(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @in6_init_prefix_ltimes(%struct.nd_prefix*) #2

declare dso_local i32 @free(%struct.nd_prefix*, i32) #2

declare dso_local i32 @LIST_INIT(i32*) #2

declare dso_local i32 @in6_prefixlen2mask(i32*, i32) #2

declare dso_local i32 @IN6_MASK_ADDR(i32*, i32*) #2

declare dso_local i32 @ND6_WLOCK(...) #2

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nd_prefix*, i32) #2

declare dso_local i32 @ND6_WUNLOCK(...) #2

declare dso_local i32 @ND6_ONLINK_LOCK(...) #2

declare dso_local i32 @NET_EPOCH_ENTER(i32) #2

declare dso_local i32 @nd6_prefix_onlink(%struct.nd_prefix*) #2

declare dso_local i32 @nd6log(i32) #2

declare dso_local i32 @ip6_sprintf(i8*, i32*) #2

declare dso_local i32 @if_name(i32) #2

declare dso_local i32 @NET_EPOCH_EXIT(i32) #2

declare dso_local i32 @ND6_ONLINK_UNLOCK(...) #2

declare dso_local i32 @pfxrtr_add(%struct.nd_prefix*, %struct.nd_defrouter*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
