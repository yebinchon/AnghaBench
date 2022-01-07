; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_incoming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.TYPE_3__ = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@NG_WAITOK = common dso_local global i32 0, align 4
@NG_QUEUE = common dso_local global i32 0, align 4
@ng_ksocket_incoming2 = common dso_local global i32 0, align 4
@SU_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i32)* @ng_ksocket_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ksocket_incoming(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i8* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @NG_WAITOK, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* @NG_QUEUE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i64 @atomic_cmpset_int(i32* %25, i32 0, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @ng_send_fn1(i8* %29, i32* null, i32* @ng_ksocket_incoming2, %struct.socket* %30, i32 0, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @atomic_store_rel_int(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %34, %28, %20
  %39 = load i32, i32* @SU_OK, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i8*) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i64 @ng_send_fn1(i8*, i32*, i32*, %struct.socket*, i32, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
