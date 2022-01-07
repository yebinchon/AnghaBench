; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_tr_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_class = type { i32 }

@g_raid_tr_classes = common dso_local global i32 0, align 4
@trc_list = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid_tr_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_raid_tr_class*, align 8
  %8 = alloca %struct.g_raid_tr_class*, align 8
  %9 = alloca %struct.g_raid_tr_class*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.g_raid_tr_class*
  store %struct.g_raid_tr_class* %12, %struct.g_raid_tr_class** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %58 [
    i32 129, label %14
    i32 128, label %54
  ]

14:                                               ; preds = %3
  %15 = call %struct.g_raid_tr_class* @LIST_FIRST(i32* @g_raid_tr_classes)
  store %struct.g_raid_tr_class* %15, %struct.g_raid_tr_class** %8, align 8
  %16 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %8, align 8
  %17 = icmp eq %struct.g_raid_tr_class* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %8, align 8
  %20 = getelementptr inbounds %struct.g_raid_tr_class, %struct.g_raid_tr_class* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %7, align 8
  %23 = getelementptr inbounds %struct.g_raid_tr_class, %struct.g_raid_tr_class* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18, %14
  %27 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %7, align 8
  %28 = load i32, i32* @trc_list, align 4
  %29 = call i32 @LIST_INSERT_HEAD(i32* @g_raid_tr_classes, %struct.g_raid_tr_class* %27, i32 %28)
  br label %53

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %46, %30
  %32 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %8, align 8
  %33 = load i32, i32* @trc_list, align 4
  %34 = call %struct.g_raid_tr_class* @LIST_NEXT(%struct.g_raid_tr_class* %32, i32 %33)
  store %struct.g_raid_tr_class* %34, %struct.g_raid_tr_class** %9, align 8
  %35 = icmp ne %struct.g_raid_tr_class* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %9, align 8
  %38 = getelementptr inbounds %struct.g_raid_tr_class, %struct.g_raid_tr_class* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %7, align 8
  %41 = getelementptr inbounds %struct.g_raid_tr_class, %struct.g_raid_tr_class* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi i1 [ false, %31 ], [ %43, %36 ]
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %9, align 8
  store %struct.g_raid_tr_class* %47, %struct.g_raid_tr_class** %8, align 8
  br label %31

48:                                               ; preds = %44
  %49 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %8, align 8
  %50 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %7, align 8
  %51 = load i32, i32* @trc_list, align 4
  %52 = call i32 @LIST_INSERT_AFTER(%struct.g_raid_tr_class* %49, %struct.g_raid_tr_class* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %26
  br label %60

54:                                               ; preds = %3
  %55 = load %struct.g_raid_tr_class*, %struct.g_raid_tr_class** %7, align 8
  %56 = load i32, i32* @trc_list, align 4
  %57 = call i32 @LIST_REMOVE(%struct.g_raid_tr_class* %55, i32 %56)
  br label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %54, %53
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local %struct.g_raid_tr_class* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_raid_tr_class*, i32) #1

declare dso_local %struct.g_raid_tr_class* @LIST_NEXT(%struct.g_raid_tr_class*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.g_raid_tr_class*, %struct.g_raid_tr_class*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_raid_tr_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
