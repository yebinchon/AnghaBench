; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_proc_used_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_proc_used_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kinfo_proc*)* @proc_used_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_used_cpu(%struct.kinfo_proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %5 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %6 = call %struct.kinfo_proc* @get_old_proc(%struct.kinfo_proc* %5)
  store %struct.kinfo_proc* %6, %struct.kinfo_proc** %4, align 8
  %7 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %8 = icmp eq %struct.kinfo_proc* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %11 = call i64 @PCTCPU(%struct.kinfo_proc* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %16 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %19 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %14
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %24 = call %struct.TYPE_2__* @RU(%struct.kinfo_proc* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %28 = call %struct.TYPE_2__* @RU(%struct.kinfo_proc* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %34 = call %struct.TYPE_2__* @RU(%struct.kinfo_proc* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %38 = call %struct.TYPE_2__* @RU(%struct.kinfo_proc* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br label %42

42:                                               ; preds = %32, %22, %14
  %43 = phi i1 [ true, %22 ], [ true, %14 ], [ %41, %32 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.kinfo_proc* @get_old_proc(%struct.kinfo_proc*) #1

declare dso_local i64 @PCTCPU(%struct.kinfo_proc*) #1

declare dso_local %struct.TYPE_2__* @RU(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
