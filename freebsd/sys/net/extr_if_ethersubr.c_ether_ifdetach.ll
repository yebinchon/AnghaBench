; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_ifdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_ifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ng_ether_detach_p is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ether_ifdetach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sockaddr_dl*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %9, %struct.sockaddr_dl** %3, align 8
  %10 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %3, align 8
  %11 = call i32 @LLADDR(%struct.sockaddr_dl* %10)
  %12 = call i32 @uuid_ether_del(i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @KASSERT(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = call i32 @ng_ether_detach_p(%struct.ifnet* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = call i32 @bpfdetach(%struct.ifnet* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %25 = call i32 @if_detach(%struct.ifnet* %24)
  ret void
}

declare dso_local i32 @uuid_ether_del(i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ng_ether_detach_p(%struct.ifnet*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
