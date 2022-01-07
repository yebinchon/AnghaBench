; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arptimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arptimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_3__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.epoch_tracker = type { i32 }

@LLE_STATIC = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@V_arpt_rexmit = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@LLE_DELETED = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@LLENTRY_EXPIRED = common dso_local global i32 0, align 4
@LLENTRY_TIMEDOUT = common dso_local global i32 0, align 4
@lle_event = common dso_local global i32 0, align 4
@LLE_LINKED = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@timeouts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @arptimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arptimer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.llentry*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.llentry*
  store %struct.llentry* %11, %struct.llentry** %3, align 8
  %12 = load %struct.llentry*, %struct.llentry** %3, align 8
  %13 = getelementptr inbounds %struct.llentry, %struct.llentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LLE_STATIC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %178

19:                                               ; preds = %1
  %20 = load %struct.llentry*, %struct.llentry** %3, align 8
  %21 = call i32 @LLE_WLOCK(%struct.llentry* %20)
  %22 = load %struct.llentry*, %struct.llentry** %3, align 8
  %23 = getelementptr inbounds %struct.llentry, %struct.llentry* %22, i32 0, i32 4
  %24 = call i64 @callout_pending(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.llentry*, %struct.llentry** %3, align 8
  %28 = call i32 @LLE_WUNLOCK(%struct.llentry* %27)
  br label %178

29:                                               ; preds = %19
  %30 = load %struct.llentry*, %struct.llentry** %3, align 8
  %31 = getelementptr inbounds %struct.llentry, %struct.llentry* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  store %struct.ifnet* %34, %struct.ifnet** %4, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CURVNET_SET(i32 %37)
  %39 = load %struct.llentry*, %struct.llentry** %3, align 8
  %40 = getelementptr inbounds %struct.llentry, %struct.llentry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %120 [
    i32 129, label %42
    i32 128, label %60
    i32 130, label %119
    i32 131, label %119
  ]

42:                                               ; preds = %29
  %43 = load %struct.llentry*, %struct.llentry** %3, align 8
  %44 = call i32 @LLE_REQ_LOCK(%struct.llentry* %43)
  %45 = load %struct.llentry*, %struct.llentry** %3, align 8
  %46 = getelementptr inbounds %struct.llentry, %struct.llentry* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.llentry*, %struct.llentry** %3, align 8
  %48 = call i32 @LLE_REQ_UNLOCK(%struct.llentry* %47)
  %49 = load %struct.llentry*, %struct.llentry** %3, align 8
  %50 = getelementptr inbounds %struct.llentry, %struct.llentry* %49, i32 0, i32 1
  store i32 128, i32* %50, align 4
  %51 = load %struct.llentry*, %struct.llentry** %3, align 8
  %52 = getelementptr inbounds %struct.llentry, %struct.llentry* %51, i32 0, i32 4
  %53 = load i32, i32* @hz, align 4
  %54 = load i32, i32* @V_arpt_rexmit, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @callout_schedule(i32* %52, i32 %55)
  %57 = load %struct.llentry*, %struct.llentry** %3, align 8
  %58 = call i32 @LLE_WUNLOCK(%struct.llentry* %57)
  %59 = call i32 (...) @CURVNET_RESTORE()
  br label %178

60:                                               ; preds = %29
  %61 = load %struct.llentry*, %struct.llentry** %3, align 8
  %62 = call i32 @LLE_REQ_LOCK(%struct.llentry* %61)
  %63 = load %struct.llentry*, %struct.llentry** %3, align 8
  %64 = getelementptr inbounds %struct.llentry, %struct.llentry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  %66 = load %struct.llentry*, %struct.llentry** %3, align 8
  %67 = call i32 @LLE_REQ_UNLOCK(%struct.llentry* %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %60
  %71 = load %struct.llentry*, %struct.llentry** %3, align 8
  %72 = getelementptr inbounds %struct.llentry, %struct.llentry* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %70
  %76 = load %struct.llentry*, %struct.llentry** %3, align 8
  %77 = getelementptr inbounds %struct.llentry, %struct.llentry* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = bitcast %struct.in_addr* %7 to i8*
  %80 = bitcast %struct.in_addr* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = load %struct.llentry*, %struct.llentry** %3, align 8
  %82 = getelementptr inbounds %struct.llentry, %struct.llentry* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.llentry*, %struct.llentry** %3, align 8
  %86 = getelementptr inbounds %struct.llentry, %struct.llentry* %85, i32 0, i32 4
  %87 = load i32, i32* @hz, align 4
  %88 = load i32, i32* @V_arpt_rexmit, align 4
  %89 = mul nsw i32 %87, %88
  %90 = call i32 @callout_schedule(i32* %86, i32 %89)
  %91 = load %struct.llentry*, %struct.llentry** %3, align 8
  %92 = call i32 @LLE_WUNLOCK(%struct.llentry* %91)
  %93 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @NET_EPOCH_ENTER(i32 %94)
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = call i32 @arprequest(%struct.ifnet* %96, i32* null, %struct.in_addr* %7, i32* null)
  %98 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @NET_EPOCH_EXIT(i32 %99)
  %101 = call i32 (...) @CURVNET_RESTORE()
  br label %178

102:                                              ; preds = %70, %60
  %103 = load %struct.llentry*, %struct.llentry** %3, align 8
  %104 = getelementptr inbounds %struct.llentry, %struct.llentry* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @time_uptime, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.llentry*, %struct.llentry** %3, align 8
  %110 = getelementptr inbounds %struct.llentry, %struct.llentry* %109, i32 0, i32 4
  %111 = load i32, i32* @hz, align 4
  %112 = load i32, i32* @V_arpt_rexmit, align 4
  %113 = mul nsw i32 %111, %112
  %114 = call i32 @callout_schedule(i32* %110, i32 %113)
  %115 = load %struct.llentry*, %struct.llentry** %3, align 8
  %116 = call i32 @LLE_WUNLOCK(%struct.llentry* %115)
  %117 = call i32 (...) @CURVNET_RESTORE()
  br label %178

118:                                              ; preds = %102
  br label %120

119:                                              ; preds = %29, %29
  br label %120

120:                                              ; preds = %29, %119, %118
  %121 = load %struct.llentry*, %struct.llentry** %3, align 8
  %122 = getelementptr inbounds %struct.llentry, %struct.llentry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LLE_DELETED, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load %struct.llentry*, %struct.llentry** %3, align 8
  %129 = getelementptr inbounds %struct.llentry, %struct.llentry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @LLE_VALID, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @LLENTRY_EXPIRED, align 4
  store i32 %135, i32* %8, align 4
  br label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @LLENTRY_TIMEDOUT, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = load i32, i32* @lle_event, align 4
  %140 = load %struct.llentry*, %struct.llentry** %3, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @EVENTHANDLER_INVOKE(i32 %139, %struct.llentry* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %120
  %144 = load %struct.llentry*, %struct.llentry** %3, align 8
  %145 = getelementptr inbounds %struct.llentry, %struct.llentry* %144, i32 0, i32 4
  %146 = call i32 @callout_stop(i32* %145)
  %147 = load %struct.llentry*, %struct.llentry** %3, align 8
  %148 = call i32 @LLE_WUNLOCK(%struct.llentry* %147)
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = call i32 @IF_AFDATA_LOCK(%struct.ifnet* %149)
  %151 = load %struct.llentry*, %struct.llentry** %3, align 8
  %152 = call i32 @LLE_WLOCK(%struct.llentry* %151)
  %153 = load %struct.llentry*, %struct.llentry** %3, align 8
  %154 = getelementptr inbounds %struct.llentry, %struct.llentry* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @LLE_LINKED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %143
  %160 = load %struct.llentry*, %struct.llentry** %3, align 8
  %161 = call i32 @LLE_REMREF(%struct.llentry* %160)
  %162 = load %struct.llentry*, %struct.llentry** %3, align 8
  %163 = getelementptr inbounds %struct.llentry, %struct.llentry* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load %struct.llentry*, %struct.llentry** %3, align 8
  %166 = call i32 @lltable_unlink_entry(%struct.TYPE_4__* %164, %struct.llentry* %165)
  br label %167

167:                                              ; preds = %159, %143
  %168 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %169 = call i32 @IF_AFDATA_UNLOCK(%struct.ifnet* %168)
  %170 = load %struct.llentry*, %struct.llentry** %3, align 8
  %171 = call i64 @llentry_free(%struct.llentry* %170)
  store i64 %171, i64* %9, align 8
  %172 = load i32, i32* @dropped, align 4
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @ARPSTAT_ADD(i32 %172, i64 %173)
  %175 = load i32, i32* @timeouts, align 4
  %176 = call i32 @ARPSTAT_INC(i32 %175)
  %177 = call i32 (...) @CURVNET_RESTORE()
  br label %178

178:                                              ; preds = %167, %108, %75, %42, %26, %18
  ret void
}

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @LLE_REQ_LOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_REQ_UNLOCK(%struct.llentry*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @arprequest(%struct.ifnet*, i32*, %struct.in_addr*, i32*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.llentry*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @IF_AFDATA_LOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_REMREF(%struct.llentry*) #1

declare dso_local i32 @lltable_unlink_entry(%struct.TYPE_4__*, %struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_UNLOCK(%struct.ifnet*) #1

declare dso_local i64 @llentry_free(%struct.llentry*) #1

declare dso_local i32 @ARPSTAT_ADD(i32, i64) #1

declare dso_local i32 @ARPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
