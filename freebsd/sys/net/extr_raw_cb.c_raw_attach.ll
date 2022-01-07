; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_raw_cb.c_raw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_raw_cb.c_raw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rawcb = type { %struct.TYPE_6__, %struct.socket* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"raw_attach: rp == NULL\00", align 1
@raw_sendspace = common dso_local global i32 0, align 4
@raw_recvspace = common dso_local global i32 0, align 4
@rawcb_mtx = common dso_local global i32 0, align 4
@V_rawcb_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw_attach(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rawcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.rawcb* @sotorawcb(%struct.socket* %8)
  store %struct.rawcb* %9, %struct.rawcb** %6, align 8
  %10 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %11 = icmp ne %struct.rawcb* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = load i32, i32* @raw_sendspace, align 4
  %16 = load i32, i32* @raw_recvspace, align 4
  %17 = call i32 @soreserve(%struct.socket* %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.socket*, %struct.socket** %4, align 8
  %24 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %25 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %24, i32 0, i32 1
  store %struct.socket* %23, %struct.socket** %25, align 8
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %34 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %38 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = call i32 @mtx_lock(i32* @rawcb_mtx)
  %41 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %42 = load i32, i32* @list, align 4
  %43 = call i32 @LIST_INSERT_HEAD(i32* @V_rawcb_list, %struct.rawcb* %41, i32 %42)
  %44 = call i32 @mtx_unlock(i32* @rawcb_mtx)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %22, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.rawcb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
