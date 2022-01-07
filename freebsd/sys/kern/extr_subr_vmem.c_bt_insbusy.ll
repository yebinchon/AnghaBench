; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_bt_insbusy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_bt_insbusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.vmem_hashlist = type { i32 }

@BT_TYPE_BUSY = common dso_local global i64 0, align 8
@bt_hashlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*)* @bt_insbusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_insbusy(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.vmem_hashlist*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BT_TYPE_BUSY, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vmem_hashlist* @bt_hashhead(%struct.TYPE_8__* %15, i32 %18)
  store %struct.vmem_hashlist* %19, %struct.vmem_hashlist** %5, align 8
  %20 = load %struct.vmem_hashlist*, %struct.vmem_hashlist** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* @bt_hashlist, align 4
  %23 = call i32 @LIST_INSERT_HEAD(%struct.vmem_hashlist* %20, %struct.TYPE_9__* %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  ret void
}

declare dso_local i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_8__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.vmem_hashlist* @bt_hashhead(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.vmem_hashlist*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
