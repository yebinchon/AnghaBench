; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_imsg_event_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_imsg_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgev = type { i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imsg_event_add(%struct.imsgev* %0) #0 {
  %2 = alloca %struct.imsgev*, align 8
  store %struct.imsgev* %0, %struct.imsgev** %2, align 8
  %3 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %4 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %9 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %8, i32 0, i32 4
  %10 = call i32 @imsg_flush(%struct.TYPE_4__* %9)
  br label %50

11:                                               ; preds = %1
  %12 = load i32, i32* @EV_READ, align 4
  %13 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %14 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %16 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* @EV_WRITE, align 4
  %23 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %24 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %11
  %28 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %29 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %28, i32 0, i32 0
  %30 = call i32 @event_del(i32* %29)
  %31 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %32 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %31, i32 0, i32 0
  %33 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %34 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %38 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %41 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %44 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @event_set(i32* %32, i32 %36, i32 %39, i32* %42, i32 %45)
  %47 = load %struct.imsgev*, %struct.imsgev** %2, align 8
  %48 = getelementptr inbounds %struct.imsgev, %struct.imsgev* %47, i32 0, i32 0
  %49 = call i32 @event_add(i32* %48, i32* null)
  br label %50

50:                                               ; preds = %27, %7
  ret void
}

declare dso_local i32 @imsg_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
