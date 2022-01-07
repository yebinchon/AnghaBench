; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_cancel_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_cancel_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i8*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@SLI4_FC_WCQE_STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @ocs_hw_io_cancel_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_hw_io_cancel_cleanup(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, align 8
  %6 = alloca i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %10, align 8
  store i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* %11, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %13, align 8
  store i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* %14, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  %17 = call i64 @ocs_list_on_list(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 @ocs_list_remove(i32* %21, %struct.TYPE_10__* %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i64 @ocs_list_on_list(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @ocs_list_remove(i32* %40, %struct.TYPE_10__* %41)
  br label %43

43:                                               ; preds = %36, %29, %24
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  store i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* null, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @ocs_unlock(i32* %55)
  %57 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SLI4_FC_WCQE_STATUS_SHUTDOWN, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 %57(%struct.TYPE_10__* %58, i32 %61, i32 0, i32 %62, i32 0, i8* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @ocs_lock(i32* %66)
  br label %68

68:                                               ; preds = %48, %43
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %8, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)* null, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = call i32 @ocs_unlock(i32* %80)
  %82 = load i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i8*)** %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SLI4_FC_WCQE_STATUS_SHUTDOWN, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 %82(%struct.TYPE_10__* %83, i32 %86, i32 0, i32 %87, i32 0, i8* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i32 @ocs_lock(i32* %91)
  br label %93

93:                                               ; preds = %73, %68
  ret void
}

declare dso_local i64 @ocs_list_on_list(i32*) #1

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
