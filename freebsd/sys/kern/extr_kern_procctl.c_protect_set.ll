; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPROT_DESCEND = common dso_local global i32 0, align 4
@PPROT_INHERIT = common dso_local global i32 0, align 4
@PRIV_VM_MADV_PROTECT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @protect_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protect_set(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @PPROT_OP(i32 %10)
  switch i32 %11, label %13 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %3, %3
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %55

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PPROT_FLAGS(i32 %16)
  %18 = load i32, i32* @PPROT_DESCEND, align 4
  %19 = load i32, i32* @PPROT_INHERIT, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %15
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = load i32, i32* @PRIV_VM_MADV_PROTECT, align 4
  %29 = call i32 @priv_check(%struct.thread* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PPROT_DESCEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = load %struct.proc*, %struct.proc** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @protect_setchildren(%struct.thread* %40, %struct.proc* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.thread*, %struct.thread** %5, align 8
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @protect_setchild(%struct.thread* %45, %struct.proc* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @EPERM, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %32, %24, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @PPROT_OP(i32) #1

declare dso_local i32 @PPROT_FLAGS(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @protect_setchildren(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @protect_setchild(%struct.thread*, %struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
