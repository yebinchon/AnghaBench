; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_sys_jail_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_sys_jail_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.jail_attach_args = type { i32 }
%struct.prison = type { i64, i32 }

@PRIV_JAIL_ATTACH = common dso_local global i32 0, align 4
@allprison_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_jail_attach(%struct.thread* %0, %struct.jail_attach_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.jail_attach_args*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.jail_attach_args* %1, %struct.jail_attach_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load i32, i32* @PRIV_JAIL_ATTACH, align 4
  %10 = call i32 @priv_check(%struct.thread* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = call i32 @sx_xlock(i32* @allprison_lock)
  %17 = call i32 @sx_downgrade(i32* @allprison_lock)
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jail_attach_args*, %struct.jail_attach_args** %5, align 8
  %24 = getelementptr inbounds %struct.jail_attach_args, %struct.jail_attach_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.prison* @prison_find_child(i32 %22, i32 %25)
  store %struct.prison* %26, %struct.prison** %6, align 8
  %27 = load %struct.prison*, %struct.prison** %6, align 8
  %28 = icmp eq %struct.prison* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = call i32 @sx_sunlock(i32* @allprison_lock)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %15
  %33 = load %struct.prison*, %struct.prison** %6, align 8
  %34 = getelementptr inbounds %struct.prison, %struct.prison* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.prison*, %struct.prison** %6, align 8
  %39 = getelementptr inbounds %struct.prison, %struct.prison* %38, i32 0, i32 1
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = call i32 @sx_sunlock(i32* @allprison_lock)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %32
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = load %struct.prison*, %struct.prison** %6, align 8
  %46 = call i32 @do_jail_attach(%struct.thread* %44, %struct.prison* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %37, %29, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_downgrade(i32*) #1

declare dso_local %struct.prison* @prison_find_child(i32, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @do_jail_attach(%struct.thread*, %struct.prison*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
