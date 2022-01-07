; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_nconf2socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_nconf2socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }
%struct.netconfig = type { i32 }
%struct.__rpc_sockinfo = type { i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @__rpc_nconf2socket(%struct.netconfig* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.netconfig*, align 8
  %4 = alloca %struct.__rpc_sockinfo, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %3, align 8
  %7 = load %struct.netconfig*, %struct.netconfig** %3, align 8
  %8 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %7, %struct.__rpc_sockinfo* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.socket* null, %struct.socket** %2, align 8
  br label %28

11:                                               ; preds = %1
  store %struct.socket* null, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %22 = call i32 @socreate(i32 %13, %struct.socket** %5, i32 %15, i32 %17, i32 %20, %struct.TYPE_3__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store %struct.socket* null, %struct.socket** %2, align 8
  br label %28

26:                                               ; preds = %11
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %27, %struct.socket** %2, align 8
  br label %28

28:                                               ; preds = %26, %25, %10
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  ret %struct.socket* %29
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @socreate(i32, %struct.socket**, i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
