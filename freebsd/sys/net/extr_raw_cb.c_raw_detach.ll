; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_raw_cb.c_raw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_raw_cb.c_raw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawcb = type { %struct.socket* }
%struct.socket = type { %struct.rawcb* }

@.str = private unnamed_addr constant [25 x i8] c"raw_detach: so_pcb != rp\00", align 1
@rawcb_mtx = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_detach(%struct.rawcb* %0) #0 {
  %2 = alloca %struct.rawcb*, align 8
  %3 = alloca %struct.socket*, align 8
  store %struct.rawcb* %0, %struct.rawcb** %2, align 8
  %4 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %5 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %4, i32 0, i32 0
  %6 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.rawcb*, %struct.rawcb** %8, align 8
  %10 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %11 = icmp eq %struct.rawcb* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  store %struct.rawcb* null, %struct.rawcb** %15, align 8
  %16 = call i32 @mtx_lock(i32* @rawcb_mtx)
  %17 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %18 = load i32, i32* @list, align 4
  %19 = call i32 @LIST_REMOVE(%struct.rawcb* %17, i32 %18)
  %20 = call i32 @mtx_unlock(i32* @rawcb_mtx)
  %21 = load %struct.rawcb*, %struct.rawcb** %2, align 8
  %22 = ptrtoint %struct.rawcb* %21 to i32
  %23 = load i32, i32* @M_PCB, align 4
  %24 = call i32 @free(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.rawcb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
