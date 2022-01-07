; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_build_readq_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_build_readq_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_queued_to_read = type { i32, i32, i32, i32, %struct.sctp_tcb*, %struct.mbuf*, %struct.sctp_nets*, i32, i8*, i32, i8*, i8*, i8*, i8*, i32 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_queued_to_read* @sctp_build_readq_entry(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7, %struct.mbuf* %8) #0 {
  %10 = alloca %struct.sctp_tcb*, align 8
  %11 = alloca %struct.sctp_nets*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca %struct.sctp_queued_to_read*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %10, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.mbuf* %8, %struct.mbuf** %18, align 8
  store %struct.sctp_queued_to_read* null, %struct.sctp_queued_to_read** %19, align 8
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %21 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %22 = call i32 @sctp_alloc_a_readq(%struct.sctp_tcb* %20, %struct.sctp_queued_to_read* %21)
  %23 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %24 = icmp eq %struct.sctp_queued_to_read* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  br label %79

26:                                               ; preds = %9
  %27 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %28 = call i32 @memset(%struct.sctp_queued_to_read* %27, i32 0, i32 104)
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %31 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = shl i32 %32, 8
  %34 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %35 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %38 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %41 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %40, i32 0, i32 12
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %44 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %47 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %46, i32 0, i32 10
  store i8* %45, i8** %47, align 8
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %49 = call i32 @sctp_get_associd(%struct.sctp_tcb* %48)
  %50 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %51 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %54 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %56 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %55, i32 0, i32 2
  store i32 -1, i32* %56, align 8
  %57 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %58 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %60 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %59, i32 0, i32 7
  %61 = call i32 @TAILQ_INIT(i32* %60)
  %62 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %63 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %64 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %63, i32 0, i32 6
  store %struct.sctp_nets* %62, %struct.sctp_nets** %64, align 8
  %65 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %66 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %65, i32 0, i32 0
  %67 = call i32 @atomic_add_int(i32* %66, i32 1)
  %68 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %69 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %70 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %69, i32 0, i32 5
  store %struct.mbuf* %68, %struct.mbuf** %70, align 8
  %71 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %72 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %73 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %72, i32 0, i32 4
  store %struct.sctp_tcb* %71, %struct.sctp_tcb** %73, align 8
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  %75 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  %78 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %26, %25
  %80 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %19, align 8
  ret %struct.sctp_queued_to_read* %80
}

declare dso_local i32 @sctp_alloc_a_readq(%struct.sctp_tcb*, %struct.sctp_queued_to_read*) #1

declare dso_local i32 @memset(%struct.sctp_queued_to_read*, i32, i32) #1

declare dso_local i32 @sctp_get_associd(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
