; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i64, i32 }

@allprison_lock = common dso_local global i32 0, align 4
@PD_DEREF = common dso_local global i32 0, align 4
@PD_DEUREF = common dso_local global i32 0, align 4
@PD_LOCKED = common dso_local global i32 0, align 4
@PD_LIST_XLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @prison_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prison_complete(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.prison*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.prison*
  store %struct.prison* %7, %struct.prison** %5, align 8
  %8 = call i32 @sx_xlock(i32* @allprison_lock)
  %9 = load %struct.prison*, %struct.prison** %5, align 8
  %10 = getelementptr inbounds %struct.prison, %struct.prison* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.prison*, %struct.prison** %5, align 8
  %13 = load %struct.prison*, %struct.prison** %5, align 8
  %14 = getelementptr inbounds %struct.prison, %struct.prison* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @PD_DEREF, align 4
  %19 = load i32, i32* @PD_DEUREF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PD_LOCKED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %24 = or i32 %22, %23
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @PD_LOCKED, align 4
  %27 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %28 = or i32 %26, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i32 [ %24, %17 ], [ %28, %25 ]
  %31 = call i32 @prison_deref(%struct.prison* %12, i32 %30)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @prison_deref(%struct.prison*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
