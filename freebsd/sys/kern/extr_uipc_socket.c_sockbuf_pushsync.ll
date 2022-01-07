; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sockbuf_pushsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sockbuf_pushsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf*, %struct.mbuf*, i32* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockbuf*, %struct.mbuf*)* @sockbuf_pushsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sockbuf_pushsync(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %6 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %5)
  %7 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %8 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %7, i32 0, i32 0
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  store %struct.mbuf* %12, %struct.mbuf** %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %20 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %19, i32 0, i32 0
  store %struct.mbuf* %18, %struct.mbuf** %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %23 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %22, i32 0, i32 0
  %24 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %28 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %30 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %29, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %30, align 8
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 0
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  %42 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %43 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %42, i32 0, i32 1
  store %struct.mbuf* %41, %struct.mbuf** %43, align 8
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %26
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
