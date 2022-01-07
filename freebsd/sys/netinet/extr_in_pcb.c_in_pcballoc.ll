; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcballoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32, i64, i32, i32 }
%struct.socket = type { i64, i32, i32 }
%struct.inpcb = type { i32, %struct.TYPE_4__, i32, i64, i32, i32, %struct.TYPE_3__, %struct.socket*, %struct.inpcbinfo*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@inp_zero_size = common dso_local global i32 0, align 4
@inp_list = common dso_local global i32 0, align 4
@RT_LLE_CACHE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IN6P_AUTOFLOWLABEL = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INP_IPV6PROTO = common dso_local global i32 0, align 4
@M_NODOM = common dso_local global i32 0, align 4
@V_ip6_auto_flowlabel = common dso_local global i64 0, align 8
@V_ip6_v6only = common dso_local global i64 0, align 8
@V_tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_pcballoc(%struct.socket* %0, %struct.inpcbinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.inpcbinfo*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.inpcbinfo* %1, %struct.inpcbinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %9 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call %struct.inpcb* @uma_zalloc(i32 %10, i32 %11)
  store %struct.inpcb* %12, %struct.inpcb** %6, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %14 = icmp eq %struct.inpcb* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOBUFS, align 4
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %19 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %18, i32 0, i32 10
  %20 = load i32, i32* @inp_zero_size, align 4
  %21 = call i32 @bzero(i32* %19, i32 %20)
  %22 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 8
  store %struct.inpcbinfo* %22, %struct.inpcbinfo** %24, align 8
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 7
  store %struct.socket* %25, %struct.socket** %27, align 8
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crhold(i32 %30)
  %32 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %41 = call i32 @INP_WLOCK(%struct.inpcb* %40)
  %42 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %43 = call i32 @INP_LIST_WLOCK(%struct.inpcbinfo* %42)
  %44 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %45 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %48 = load i32, i32* @inp_list, align 4
  %49 = call i32 @CK_LIST_INSERT_HEAD(i32 %46, %struct.inpcb* %47, i32 %48)
  %50 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %51 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %55 = ptrtoint %struct.inpcb* %54 to i64
  %56 = load %struct.socket*, %struct.socket** %4, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %59 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 2
  %66 = call i32 @refcount_init(i32* %65, i32 1)
  %67 = load i32, i32* @RT_LLE_CACHE, align 4
  %68 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %69 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %72 = call i32 @INP_LIST_WUNLOCK(%struct.inpcbinfo* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %17, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.inpcb* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_LIST_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @CK_LIST_INSERT_HEAD(i32, %struct.inpcb*, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @INP_LIST_WUNLOCK(%struct.inpcbinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
