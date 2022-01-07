; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_rss_init_default_deferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_rss_init_default_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ena\00", align 1
@ENA_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No devclass ena\0A\00", align 1
@ENA_FLAG_RSS_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"WARNING: RSS was not properly initialized, it will affect bandwidth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ena_rss_init_default_deferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_rss_init_default_deferred(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32* @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENA_ALERT, align 4
  %15 = call i32 @ena_trace(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %50

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @devclass_get_maxunit(i32* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %49, %16
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = icmp sge i32 %20, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.ena_adapter* @devclass_get_softc(i32* %24, i32 %25)
  store %struct.ena_adapter* %26, %struct.ena_adapter** %3, align 8
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = icmp ne %struct.ena_adapter* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %31 = call i32 @ena_rss_init_default(%struct.ena_adapter* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %34 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %32, %struct.ena_adapter* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %46 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %47 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %45, %struct.ena_adapter* %46)
  br label %48

48:                                               ; preds = %40, %29
  br label %49

49:                                               ; preds = %48, %23
  br label %19

50:                                               ; preds = %13, %19
  ret void
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local %struct.ena_adapter* @devclass_get_softc(i32*, i32) #1

declare dso_local i32 @ena_rss_init_default(%struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
