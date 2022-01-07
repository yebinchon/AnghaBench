; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgrcv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_sys_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.msgrcv_args = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"call to msgrcv(%d, %p, %zu, %ld, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error %d copying the message type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_msgrcv(%struct.thread* %0, %struct.msgrcv_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.msgrcv_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.msgrcv_args* %1, %struct.msgrcv_args** %5, align 8
  %8 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %9 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %12 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %15 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %18 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %21 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DPRINTF(i8* %24)
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %28 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %31 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %36 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %39 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %42 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kern_msgrcv(%struct.thread* %26, i32 %29, i8* %34, i32 %37, i32 %40, i32 %43, i64* %7)
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %2
  %49 = load %struct.msgrcv_args*, %struct.msgrcv_args** %5, align 8
  %50 = getelementptr inbounds %struct.msgrcv_args, %struct.msgrcv_args* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @copyout(i64* %7, i64 %51, i32 8)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @DPRINTF(i8* %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %46
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @kern_msgrcv(%struct.thread*, i32, i8*, i32, i32, i32, i64*) #1

declare dso_local i32 @copyout(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
