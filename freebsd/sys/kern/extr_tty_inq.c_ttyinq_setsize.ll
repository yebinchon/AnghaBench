; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i64, i64 }
%struct.tty = type { i32 }
%struct.ttyinq_block = type { i32 }

@TTYINQ_DATASIZE = common dso_local global i32 0, align 4
@ttyinq_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyinq_setsize(%struct.ttyinq* %0, %struct.tty* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttyinq*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ttyinq_block*, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %5, align 8
  store %struct.tty* %1, %struct.tty** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i32, i32* @TTYINQ_DATASIZE, align 4
  %11 = call i64 @howmany(i64 %9, i32 %10)
  %12 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %13 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %14

14:                                               ; preds = %38, %3
  %15 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %16 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %19 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = load %struct.tty*, %struct.tty** %6, align 8
  %24 = call i32 @tty_unlock(%struct.tty* %23)
  %25 = load i32, i32* @ttyinq_zone, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call %struct.ttyinq_block* @uma_zalloc(i32 %25, i32 %26)
  store %struct.ttyinq_block* %27, %struct.ttyinq_block** %8, align 8
  %28 = load %struct.tty*, %struct.tty** %6, align 8
  %29 = call i32 @tty_lock(%struct.tty* %28)
  %30 = load %struct.tty*, %struct.tty** %6, align 8
  %31 = call i64 @tty_gone(%struct.tty* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @ttyinq_zone, align 4
  %35 = load %struct.ttyinq_block*, %struct.ttyinq_block** %8, align 8
  %36 = call i32 @uma_zfree(i32 %34, %struct.ttyinq_block* %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %40 = load %struct.ttyinq_block*, %struct.ttyinq_block** %8, align 8
  %41 = call i32 @TTYINQ_INSERT_TAIL(%struct.ttyinq* %39, %struct.ttyinq_block* %40)
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @howmany(i64, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local %struct.ttyinq_block* @uma_zalloc(i32, i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @uma_zfree(i32, %struct.ttyinq_block*) #1

declare dso_local i32 @TTYINQ_INSERT_TAIL(%struct.ttyinq*, %struct.ttyinq_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
