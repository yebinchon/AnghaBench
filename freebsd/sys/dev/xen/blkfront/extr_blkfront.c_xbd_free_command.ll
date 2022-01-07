; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_command = type { i32, i32, i32*, i32* }

@XBDCF_Q_MASK = common dso_local global i32 0, align 4
@XBD_Q_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Freeing command that is still on queue %d.\00", align 1
@XBDCF_INITIALIZER = common dso_local global i32 0, align 4
@XBD_Q_FREE = common dso_local global i32 0, align 4
@XBDF_CM_SHORTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_command*)* @xbd_free_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_free_command(%struct.xbd_command* %0) #0 {
  %2 = alloca %struct.xbd_command*, align 8
  store %struct.xbd_command* %0, %struct.xbd_command** %2, align 8
  %3 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %4 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @XBDCF_Q_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @XBD_Q_NONE, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %12 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XBDCF_Q_MASK, align 4
  %15 = and i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %10, i8* %17)
  %19 = load i32, i32* @XBDCF_INITIALIZER, align 4
  %20 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %21 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %23 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %25 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %27 = load i32, i32* @XBD_Q_FREE, align 4
  %28 = call i32 @xbd_enqueue_cm(%struct.xbd_command* %26, i32 %27)
  %29 = load %struct.xbd_command*, %struct.xbd_command** %2, align 8
  %30 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XBDF_CM_SHORTAGE, align 4
  %33 = call i32 @xbd_thaw(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @xbd_enqueue_cm(%struct.xbd_command*, i32) #1

declare dso_local i32 @xbd_thaw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
