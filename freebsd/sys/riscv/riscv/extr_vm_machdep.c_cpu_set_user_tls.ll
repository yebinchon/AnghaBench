; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_set_user_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_set_user_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TP_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_set_user_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i64, i64* @TP_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %12, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
