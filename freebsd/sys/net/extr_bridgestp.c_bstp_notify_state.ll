; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_notify_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_notify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, %struct.bstp_state* }
%struct.bstp_state = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bstp_notify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_notify_state(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_port*, align 8
  %6 = alloca %struct.bstp_state*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bstp_port*
  store %struct.bstp_port* %8, %struct.bstp_port** %5, align 8
  %9 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 3
  %11 = load %struct.bstp_state*, %struct.bstp_state** %10, align 8
  store %struct.bstp_state* %11, %struct.bstp_state** %6, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %18 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %23 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %26 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bstp_port*, %struct.bstp_port** %5, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %24(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %21, %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
