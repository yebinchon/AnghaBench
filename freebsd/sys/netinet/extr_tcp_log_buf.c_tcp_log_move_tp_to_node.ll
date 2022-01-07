; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_move_tp_to_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_move_tp_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tcp_log_id_node = type { i32, i64, i32, i32, i32 }

@INC_ISIPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_log_id_node*)* @tcp_log_move_tp_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_log_move_tp_to_node(%struct.tcpcb* %0, %struct.tcp_log_id_node* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_log_id_node*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_log_id_node* %1, %struct.tcp_log_id_node** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__* %7)
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INC_ISIPV6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %33 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %44 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tcp_log_id_node*, %struct.tcp_log_id_node** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_log_id_node, %struct.tcp_log_id_node* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 1
  %52 = call i32 @STAILQ_INIT(i32* %51)
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
