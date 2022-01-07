; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_linux_proc_write_fpxregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_linux_proc_write_fpxregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.linux_pt_fpxreg = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i64 0, align 8
@P_INMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_pt_fpxreg*)* @linux_proc_write_fpxregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_proc_write_fpxregs(%struct.thread* %0, %struct.linux_pt_fpxreg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_pt_fpxreg*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_pt_fpxreg* %1, %struct.linux_pt_fpxreg** %5, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.TYPE_4__* %8, i32 %9)
  %11 = load i64, i64* @cpu_fxsr, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @P_INMEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.linux_pt_fpxreg*, %struct.linux_pt_fpxreg** %5, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call %struct.TYPE_3__* @get_pcb_user_save_td(%struct.thread* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @bcopy(%struct.linux_pt_fpxreg* %25, i32* %28, i32 4)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcopy(%struct.linux_pt_fpxreg*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @get_pcb_user_save_td(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
