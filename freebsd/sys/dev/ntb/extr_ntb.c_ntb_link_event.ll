; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, i32, %struct.TYPE_2__*, %struct.ntb_child* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.rm_priotracker = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Link is up (PCIe %d.x / x%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_link_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_child**, align 8
  %4 = alloca %struct.ntb_child*, align 8
  %5 = alloca %struct.rm_priotracker, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ntb_child** @device_get_softc(i32 %8)
  store %struct.ntb_child** %9, %struct.ntb_child*** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @NTB_LINK_IS_UP(i32 %10, i32* %6, i32* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.ntb_child**, %struct.ntb_child*** %3, align 8
  %23 = load %struct.ntb_child*, %struct.ntb_child** %22, align 8
  store %struct.ntb_child* %23, %struct.ntb_child** %4, align 8
  br label %24

24:                                               ; preds = %56, %21
  %25 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %26 = icmp ne %struct.ntb_child* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %28, i32 0, i32 0
  %30 = call i32 @rm_rlock(i32* %29, %struct.rm_priotracker* %5)
  %31 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %32 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %37 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = icmp ne i32 (i32)* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %44 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %49 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(i32 %50)
  br label %52

52:                                               ; preds = %42, %35, %27
  %53 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %54 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %53, i32 0, i32 0
  %55 = call i32 @rm_runlock(i32* %54, %struct.rm_priotracker* %5)
  br label %56

56:                                               ; preds = %52
  %57 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %58 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %57, i32 0, i32 3
  %59 = load %struct.ntb_child*, %struct.ntb_child** %58, align 8
  store %struct.ntb_child* %59, %struct.ntb_child** %4, align 8
  br label %24

60:                                               ; preds = %24
  ret void
}

declare dso_local %struct.ntb_child** @device_get_softc(i32) #1

declare dso_local i64 @NTB_LINK_IS_UP(i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
