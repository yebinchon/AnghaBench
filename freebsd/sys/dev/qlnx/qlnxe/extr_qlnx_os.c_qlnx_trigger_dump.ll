; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_trigger_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_trigger_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @qlnx_trigger_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_trigger_dump(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %12
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call i32 @QL_DPRINT2(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = call i64 @qlnx_vf_device(%struct.TYPE_11__* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %61

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %55, %26
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @qlnx_grc_dump(%struct.TYPE_11__* %37, i32* %43, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @qlnx_idle_chk(%struct.TYPE_11__* %46, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 @QL_DPRINT2(%struct.TYPE_11__* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %25
  ret void
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @qlnx_vf_device(%struct.TYPE_11__*) #1

declare dso_local i32 @qlnx_grc_dump(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @qlnx_idle_chk(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
