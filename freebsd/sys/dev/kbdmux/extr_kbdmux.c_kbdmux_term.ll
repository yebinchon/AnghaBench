; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbdmux/extr_kbdmux.c_kbdmux_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbdmux/extr_kbdmux.c_kbdmux_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32*, i32, i32, i64 }

@TASK = common dso_local global i32 0, align 4
@ks_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kbdmuxc\00", align 1
@next = common dso_local global i32 0, align 4
@M_KBDMUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @kbdmux_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbdmux_term(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call i32 @KBDMUX_LOCK(%struct.TYPE_13__* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 7
  %13 = call i32 @callout_stop(i32* %12)
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load i32, i32* @ks_task, align 4
  %24 = call i32 @KBDMUX_SLEEP(%struct.TYPE_13__* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %31, %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  %29 = call %struct.TYPE_13__* @SLIST_FIRST(i32* %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %4, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = call i32 @kbd_release(i32* %34, i32** %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 6
  %40 = load i32, i32* @next, align 4
  %41 = call i32 @SLIST_REMOVE_HEAD(i32* %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load i32, i32* @M_KBDMUX, align 4
  %46 = call i32 @free(%struct.TYPE_13__* %44, i32 %45)
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = call i32 @KBDMUX_UNLOCK(%struct.TYPE_13__* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = call i32 @kbd_unregister(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @KBDMUX_LOCK_DESTROY(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = call i32 @bzero(%struct.TYPE_13__* %54, i32 64)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = load i32, i32* @M_KBDMUX, align 4
  %58 = call i32 @free(%struct.TYPE_13__* %56, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* @M_KBDMUX, align 4
  %63 = call i32 @free(%struct.TYPE_13__* %61, i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i32, i32* @M_KBDMUX, align 4
  %68 = call i32 @free(%struct.TYPE_13__* %66, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* @M_KBDMUX, align 4
  %73 = call i32 @free(%struct.TYPE_13__* %71, i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = load i32, i32* @M_KBDMUX, align 4
  %76 = call i32 @free(%struct.TYPE_13__* %74, i32 %75)
  ret i32 0
}

declare dso_local i32 @KBDMUX_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @KBDMUX_SLEEP(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @kbd_release(i32*, i32**) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @KBDMUX_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @kbd_unregister(%struct.TYPE_13__*) #1

declare dso_local i32 @KBDMUX_LOCK_DESTROY(%struct.TYPE_13__*) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
