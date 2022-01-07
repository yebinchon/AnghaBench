; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_setchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_protect_setchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_SYSTEM = common dso_local global i32 0, align 4
@PPROT_SET = common dso_local global i32 0, align 4
@P_PROTECTED = common dso_local global i32 0, align 4
@PPROT_INHERIT = common dso_local global i32 0, align 4
@P2_INHERIT_PROTECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @protect_setchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protect_setchild(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.proc*, %struct.proc** %6, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.proc*, %struct.proc** %6, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @P_SYSTEM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = load %struct.proc*, %struct.proc** %6, align 8
  %20 = call i64 @p_cansched(%struct.thread* %18, %struct.proc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PPROT_SET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32, i32* @P_PROTECTED, align 4
  %30 = load %struct.proc*, %struct.proc** %6, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PPROT_INHERIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @P2_INHERIT_PROTECTED, align 4
  %40 = load %struct.proc*, %struct.proc** %6, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %28
  br label %58

45:                                               ; preds = %23
  %46 = load i32, i32* @P_PROTECTED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.proc*, %struct.proc** %6, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @P2_INHERIT_PROTECTED, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45, %44
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i64 @p_cansched(%struct.thread*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
