; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TF_OPENCLOSE = common dso_local global i32 0, align 4
@constty = common dso_local global %struct.tty* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @ttydev_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttydev_leave(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @tty_lock_assert(%struct.tty* %3, i32 %4)
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = call i64 @tty_opened(%struct.tty* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TF_OPENCLOSE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9, %1
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = call i32 @tty_unlock(%struct.tty* %17)
  br label %76

19:                                               ; preds = %9
  %20 = load i32, i32* @TF_OPENCLOSE, align 4
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.tty*, %struct.tty** @constty, align 8
  %26 = load %struct.tty*, %struct.tty** %2, align 8
  %27 = icmp eq %struct.tty* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @constty_clear()
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.tty*, %struct.tty** %2, align 8
  %32 = call i32 @tty_gone(%struct.tty* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.tty*, %struct.tty** %2, align 8
  %36 = call i32 @tty_drain(%struct.tty* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.tty*, %struct.tty** %2, align 8
  %39 = call i32 @ttydisc_close(%struct.tty* %38)
  %40 = load %struct.tty*, %struct.tty** %2, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 7
  %42 = call i32 @ttyinq_free(i32* %41)
  %43 = load %struct.tty*, %struct.tty** %2, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.tty*, %struct.tty** %2, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 5
  %47 = call i32 @ttyoutq_free(i32* %46)
  %48 = load %struct.tty*, %struct.tty** %2, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.tty*, %struct.tty** %2, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @knlist_clear(i32* %52, i32 1)
  %54 = load %struct.tty*, %struct.tty** %2, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @knlist_clear(i32* %56, i32 1)
  %58 = load %struct.tty*, %struct.tty** %2, align 8
  %59 = call i32 @tty_gone(%struct.tty* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %37
  %62 = load %struct.tty*, %struct.tty** %2, align 8
  %63 = call i32 @ttydevsw_close(%struct.tty* %62)
  br label %64

64:                                               ; preds = %61, %37
  %65 = load i32, i32* @TF_OPENCLOSE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.tty*, %struct.tty** %2, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.tty*, %struct.tty** %2, align 8
  %72 = getelementptr inbounds %struct.tty, %struct.tty* %71, i32 0, i32 1
  %73 = call i32 @cv_broadcast(i32* %72)
  %74 = load %struct.tty*, %struct.tty** %2, align 8
  %75 = call i32 @tty_rel_free(%struct.tty* %74)
  br label %76

76:                                               ; preds = %64, %16
  ret void
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @tty_opened(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @constty_clear(...) #1

declare dso_local i32 @tty_gone(%struct.tty*) #1

declare dso_local i32 @tty_drain(%struct.tty*, i32) #1

declare dso_local i32 @ttydisc_close(%struct.tty*) #1

declare dso_local i32 @ttyinq_free(i32*) #1

declare dso_local i32 @ttyoutq_free(i32*) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @ttydevsw_close(%struct.tty*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @tty_rel_free(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
