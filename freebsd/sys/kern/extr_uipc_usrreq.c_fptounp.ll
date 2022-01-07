; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_fptounp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_fptounp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { i32 }
%struct.file = type { i64, %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@DTYPE_SOCKET = common dso_local global i64 0, align 8
@localdomain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unpcb* (%struct.file*)* @fptounp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unpcb* @fptounp(%struct.file* %0) #0 {
  %2 = alloca %struct.unpcb*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DTYPE_SOCKET, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.unpcb* null, %struct.unpcb** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %4, align 8
  %15 = icmp eq %struct.socket* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.unpcb* null, %struct.unpcb** %2, align 8
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, @localdomain
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.unpcb* null, %struct.unpcb** %2, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = call %struct.unpcb* @sotounpcb(%struct.socket* %26)
  store %struct.unpcb* %27, %struct.unpcb** %2, align 8
  br label %28

28:                                               ; preds = %25, %24, %16, %10
  %29 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  ret %struct.unpcb* %29
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
