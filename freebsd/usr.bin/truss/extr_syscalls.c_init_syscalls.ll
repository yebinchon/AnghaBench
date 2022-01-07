; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_init_syscalls.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_init_syscalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { i32* }

@syscalls = common dso_local global i32 0, align 4
@decoded_syscalls = common dso_local global %struct.syscall* null, align 8
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_syscalls() #0 {
  %1 = alloca %struct.syscall*, align 8
  %2 = call i32 @STAILQ_INIT(i32* @syscalls)
  %3 = load %struct.syscall*, %struct.syscall** @decoded_syscalls, align 8
  store %struct.syscall* %3, %struct.syscall** %1, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.syscall*, %struct.syscall** %1, align 8
  %6 = getelementptr inbounds %struct.syscall, %struct.syscall* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load %struct.syscall*, %struct.syscall** %1, align 8
  %11 = load i32, i32* @entries, align 4
  %12 = call i32 @STAILQ_INSERT_HEAD(i32* @syscalls, %struct.syscall* %10, i32 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load %struct.syscall*, %struct.syscall** %1, align 8
  %15 = getelementptr inbounds %struct.syscall, %struct.syscall* %14, i32 1
  store %struct.syscall* %15, %struct.syscall** %1, align 8
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.syscall*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
