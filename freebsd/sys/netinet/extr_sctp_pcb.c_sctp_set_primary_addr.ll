; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_set_primary_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_set_primary_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sctp_nets*, i32, i32* }
%struct.sockaddr = type { i32 }
%struct.sctp_nets = type { i32 }

@SCTP_ADDR_UNCONFIRMED = common dso_local global i32 0, align 4
@SCTP_ADDR_REQ_PRIMARY = common dso_local global i32 0, align 4
@SCTP_ADDR_PF = common dso_local global i32 0, align 4
@sctp_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_set_primary_addr(%struct.sctp_tcb* %0, %struct.sockaddr* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  %8 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %9 = icmp eq %struct.sctp_nets* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = icmp ne %struct.sockaddr* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = call %struct.sctp_nets* @sctp_findnet(%struct.sctp_tcb* %14, %struct.sockaddr* %15)
  store %struct.sctp_nets* %16, %struct.sctp_nets** %7, align 8
  br label %17

17:                                               ; preds = %13, %10, %3
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %19 = icmp eq %struct.sctp_nets* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %91

21:                                               ; preds = %17
  %22 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCTP_ADDR_UNCONFIRMED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @SCTP_ADDR_REQ_PRIMARY, align 4
  %30 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %91

34:                                               ; preds = %21
  %35 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %36 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %37 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.sctp_nets* %35, %struct.sctp_nets** %38, align 8
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SCTP_ADDR_PF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %34
  %46 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %47 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %53 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @sctp_free_remote_addr(i32* %55)
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %51, %45, %34
  %61 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %62 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call %struct.sctp_nets* @TAILQ_FIRST(i32* %63)
  store %struct.sctp_nets* %64, %struct.sctp_nets** %7, align 8
  %65 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %66 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %67 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.sctp_nets*, %struct.sctp_nets** %68, align 8
  %70 = icmp ne %struct.sctp_nets* %65, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %60
  %72 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %73 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %77, align 8
  %79 = load i32, i32* @sctp_next, align 4
  %80 = call i32 @TAILQ_REMOVE(i32* %74, %struct.sctp_nets* %78, i32 %79)
  %81 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %82 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %86, align 8
  %88 = load i32, i32* @sctp_next, align 4
  %89 = call i32 @TAILQ_INSERT_HEAD(i32* %83, %struct.sctp_nets* %87, i32 %88)
  br label %90

90:                                               ; preds = %71, %60
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %28, %20
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.sctp_nets* @sctp_findnet(%struct.sctp_tcb*, %struct.sockaddr*) #1

declare dso_local i32 @sctp_free_remote_addr(i32*) #1

declare dso_local %struct.sctp_nets* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.sctp_nets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
