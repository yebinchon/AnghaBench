; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_open_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_open_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32 }
%struct.g_raid_softc = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_consumer* @g_raid_open_consumer(%struct.g_raid_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.g_provider* @g_provider_by_name(i8* %16)
  store %struct.g_provider* %17, %struct.g_provider** %7, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %19 = icmp eq %struct.g_provider* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.g_consumer* null, %struct.g_consumer** %3, align 8
  br label %49

21:                                               ; preds = %15
  %22 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %23 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.g_consumer* @g_new_consumer(i32 %24)
  store %struct.g_consumer* %25, %struct.g_consumer** %6, align 8
  %26 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %27 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %28 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %32 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %33 = call i64 @g_attach(%struct.g_consumer* %31, %struct.g_provider* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %37 = call i32 @g_destroy_consumer(%struct.g_consumer* %36)
  store %struct.g_consumer* null, %struct.g_consumer** %3, align 8
  br label %49

38:                                               ; preds = %21
  %39 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %40 = call i64 @g_access(%struct.g_consumer* %39, i32 1, i32 1, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %44 = call i32 @g_detach(%struct.g_consumer* %43)
  %45 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %46 = call i32 @g_destroy_consumer(%struct.g_consumer* %45)
  store %struct.g_consumer* null, %struct.g_consumer** %3, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  store %struct.g_consumer* %48, %struct.g_consumer** %3, align 8
  br label %49

49:                                               ; preds = %47, %42, %35, %20
  %50 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  ret %struct.g_consumer* %50
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(i32) #1

declare dso_local i64 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i64 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
