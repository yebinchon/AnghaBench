; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_irq_set_affinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_irq_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.grouptask = type { i32 }
%struct.taskqgroup = type { i32 }

@IFLIB_INTR_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"get_core_offset failed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"taskqgroup_attach_cpu failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32, %struct.grouptask*, %struct.taskqgroup*, i8*, i8*)* @iflib_irq_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_irq_set_affinity(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3, %struct.grouptask* %4, %struct.taskqgroup* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.grouptask*, align 8
  %15 = alloca %struct.taskqgroup*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.grouptask* %4, %struct.grouptask** %14, align 8
  store %struct.taskqgroup* %5, %struct.taskqgroup** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %19, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @IFLIB_INTR_TX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %37, %33, %8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @find_nth(%struct.TYPE_10__* %47, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @get_core_offset(%struct.TYPE_10__* %52, i64 %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* %18, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %61, i32* %9, align 4
  br label %84

62:                                               ; preds = %46
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @find_close_core(i32 %63, i32 %64)
  store i32 %65, i32* %20, align 4
  %66 = load %struct.taskqgroup*, %struct.taskqgroup** %15, align 8
  %67 = load %struct.grouptask*, %struct.grouptask** %14, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 @taskqgroup_attach_cpu(%struct.taskqgroup* %66, %struct.grouptask* %67, i8* %68, i32 %69, i32 %70, i32 %73, i8* %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %21, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %21, align 4
  store i32 %82, i32* %9, align 4
  br label %84

83:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %78, %58
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @find_nth(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @get_core_offset(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @find_close_core(i32, i32) #1

declare dso_local i32 @taskqgroup_attach_cpu(%struct.taskqgroup*, %struct.grouptask*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
