; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@pl_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @bhnd_nvram_plist_next(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = call %struct.TYPE_13__* @TAILQ_FIRST(i32* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %44

15:                                               ; preds = %9
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %3, align 8
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_13__* @bhnd_nvram_plist_get_entry(%struct.TYPE_14__* %20, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %6, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %44

27:                                               ; preds = %19
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = icmp ne %struct.TYPE_12__* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %44

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load i32, i32* @pl_link, align 4
  %37 = call %struct.TYPE_13__* @TAILQ_NEXT(%struct.TYPE_13__* %35, i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %6, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %3, align 8
  br label %44

44:                                               ; preds = %40, %39, %33, %26, %15, %14
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %45
}

declare dso_local %struct.TYPE_13__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_13__* @bhnd_nvram_plist_get_entry(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @TAILQ_NEXT(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
