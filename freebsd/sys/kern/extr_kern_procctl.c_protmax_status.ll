; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protmax_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protmax_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@PROC_ASLR_NOFORCE = common dso_local global i32 0, align 4
@PROC_PROTMAX_FORCE_ENABLE = common dso_local global i32 0, align 4
@PROC_PROTMAX_FORCE_DISABLE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i64 0, align 8
@PROC_PROTMAX_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32*)* @protmax_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protmax_status(%struct.thread* %0, %struct.proc* %1, i32* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.proc*, %struct.proc** %5, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 129
  switch i32 %11, label %18 [
    i32 0, label %12
    i32 128, label %14
    i32 129, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @PROC_ASLR_NOFORCE, align 4
  store i32 %13, i32* %7, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @PROC_PROTMAX_FORCE_ENABLE, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PROC_PROTMAX_FORCE_DISABLE, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %3, %16, %14, %12
  %19 = load %struct.proc*, %struct.proc** %5, align 8
  %20 = load i64, i64* @PROT_READ, align 8
  %21 = call i64 @kern_mmap_maxprot(%struct.proc* %19, i64 %20)
  %22 = load i64, i64* @PROT_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @PROC_PROTMAX_ACTIVE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  ret i32 0
}

declare dso_local i64 @kern_mmap_maxprot(%struct.proc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
