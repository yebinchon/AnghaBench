; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_media_changed_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_media_changed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EV_CANCEL = common dso_local global i32 0, align 4
@G_GEOM_WITHER = common dso_local global i32 0, align 4
@g_new_provider_event = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @g_media_changed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_media_changed_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @g_topology_assert()
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EV_CANCEL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.g_provider*
  store %struct.g_provider* %14, %struct.g_provider** %5, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %16 = call i32 @G_VALID_PROVIDER(%struct.g_provider* %15)
  %17 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @G_GEOM_WITHER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %26, %21, %12
  %37 = phi i1 [ false, %21 ], [ false, %12 ], [ %35, %26 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @g_spoil_event(i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @g_new_provider_event, align 4
  %46 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %49 = call i32 @g_post_event(i32 %45, %struct.g_provider* %46, i32 %47, %struct.g_provider* %48, i32* null)
  br label %50

50:                                               ; preds = %11, %44, %36
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VALID_PROVIDER(%struct.g_provider*) #1

declare dso_local i32 @g_spoil_event(i8*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_provider*, i32, %struct.g_provider*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
