; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fifofs/extr_fifo_vnops.c_fifo_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fifofs/extr_fifo_vnops.c_fifo_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.fifoinfo* }
%struct.fifoinfo = type { i64, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"fifo_cleanup\00", align 1
@M_VNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*)* @fifo_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_cleanup(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.fifoinfo*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.vnode*, %struct.vnode** %2, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  %8 = load %struct.fifoinfo*, %struct.fifoinfo** %7, align 8
  store %struct.fifoinfo* %8, %struct.fifoinfo** %3, align 8
  %9 = load %struct.fifoinfo*, %struct.fifoinfo** %3, align 8
  %10 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.fifoinfo*, %struct.fifoinfo** %3, align 8
  %15 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.vnode*, %struct.vnode** %2, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  store %struct.fifoinfo* null, %struct.fifoinfo** %20, align 8
  %21 = load %struct.fifoinfo*, %struct.fifoinfo** %3, align 8
  %22 = getelementptr inbounds %struct.fifoinfo, %struct.fifoinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pipe_dtor(i32 %23)
  %25 = load %struct.fifoinfo*, %struct.fifoinfo** %3, align 8
  %26 = load i32, i32* @M_VNODE, align 4
  %27 = call i32 @free(%struct.fifoinfo* %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @pipe_dtor(i32) #1

declare dso_local i32 @free(%struct.fifoinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
