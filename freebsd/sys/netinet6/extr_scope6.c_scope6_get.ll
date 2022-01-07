; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_scope6_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.scope6_id = type { i32 }
%struct.epoch_tracker = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.scope6_id*)* @scope6_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scope6_get(%struct.ifnet* %0, %struct.scope6_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.scope6_id*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca %struct.scope6_id*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.scope6_id* %1, %struct.scope6_id** %5, align 8
  %8 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NET_EPOCH_ENTER(i32 %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.scope6_id* @SID(%struct.ifnet* %11)
  store %struct.scope6_id* %12, %struct.scope6_id** %7, align 8
  %13 = load %struct.scope6_id*, %struct.scope6_id** %7, align 8
  %14 = icmp eq %struct.scope6_id* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @NET_EPOCH_EXIT(i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.scope6_id*, %struct.scope6_id** %5, align 8
  %22 = load %struct.scope6_id*, %struct.scope6_id** %7, align 8
  %23 = bitcast %struct.scope6_id* %21 to i8*
  %24 = bitcast %struct.scope6_id* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NET_EPOCH_EXIT(i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
