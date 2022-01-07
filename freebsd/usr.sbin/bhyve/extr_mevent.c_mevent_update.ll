; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mevent = type { i32, i32 }

@EV_DELETE = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_DISABLE = common dso_local global i32 0, align 4
@me_list = common dso_local global i32 0, align 4
@change_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mevent*, i32)* @mevent_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mevent_update(%struct.mevent* %0, i32 %1) #0 {
  %3 = alloca %struct.mevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mevent* %0, %struct.mevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @mevent_qlock()
  %7 = load %struct.mevent*, %struct.mevent** %3, align 8
  %8 = getelementptr inbounds %struct.mevent, %struct.mevent* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EV_DELETE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.mevent*, %struct.mevent** %3, align 8
  %16 = getelementptr inbounds %struct.mevent, %struct.mevent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @EV_ENABLE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @EV_DISABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @EV_DISABLE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EV_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.mevent*, %struct.mevent** %3, align 8
  %38 = getelementptr inbounds %struct.mevent, %struct.mevent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mevent*, %struct.mevent** %3, align 8
  %45 = getelementptr inbounds %struct.mevent, %struct.mevent* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mevent*, %struct.mevent** %3, align 8
  %47 = getelementptr inbounds %struct.mevent, %struct.mevent* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.mevent*, %struct.mevent** %3, align 8
  %52 = getelementptr inbounds %struct.mevent, %struct.mevent* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.mevent*, %struct.mevent** %3, align 8
  %54 = load i32, i32* @me_list, align 4
  %55 = call i32 @LIST_REMOVE(%struct.mevent* %53, i32 %54)
  %56 = load %struct.mevent*, %struct.mevent** %3, align 8
  %57 = load i32, i32* @me_list, align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* @change_head, %struct.mevent* %56, i32 %57)
  %59 = call i32 (...) @mevent_notify()
  br label %60

60:                                               ; preds = %50, %42
  br label %61

61:                                               ; preds = %60, %36
  %62 = call i32 (...) @mevent_qunlock()
  ret i32 0
}

declare dso_local i32 @mevent_qlock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.mevent*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.mevent*, i32) #1

declare dso_local i32 @mevent_notify(...) #1

declare dso_local i32 @mevent_qunlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
