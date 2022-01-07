; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.msgctl_args = type { i32, i32, i32 }
%struct.msqid_ds = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"call to msgctl(%d, %d, %p)\0A\00", align 1
@IPC_SET = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_msgctl(%struct.thread* %0, %struct.msgctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.msgctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msqid_ds, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.msgctl_args* %1, %struct.msgctl_args** %5, align 8
  %10 = load %struct.msgctl_args*, %struct.msgctl_args** %5, align 8
  %11 = getelementptr inbounds %struct.msgctl_args, %struct.msgctl_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.msgctl_args*, %struct.msgctl_args** %5, align 8
  %14 = getelementptr inbounds %struct.msgctl_args, %struct.msgctl_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.msgctl_args*, %struct.msgctl_args** %5, align 8
  %19 = getelementptr inbounds %struct.msgctl_args, %struct.msgctl_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DPRINTF(i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IPC_SET, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.msgctl_args*, %struct.msgctl_args** %5, align 8
  %29 = getelementptr inbounds %struct.msgctl_args, %struct.msgctl_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @copyin(i32 %30, %struct.msqid_ds* %8, i32 4)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %27, %2
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kern_msgctl(%struct.thread* %36, i32 %37, i32 %38, %struct.msqid_ds* %8)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IPC_STAT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.msgctl_args*, %struct.msgctl_args** %5, align 8
  %48 = getelementptr inbounds %struct.msgctl_args, %struct.msgctl_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @copyout(%struct.msqid_ds* %8, i32 %49, i32 4)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %43, %35
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %33
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @copyin(i32, %struct.msqid_ds*, i32) #1

declare dso_local i32 @kern_msgctl(%struct.thread*, i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @copyout(%struct.msqid_ds*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
