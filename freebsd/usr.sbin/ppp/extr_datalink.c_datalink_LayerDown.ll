; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64 }
%struct.datalink = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PROTO_LCP = common dso_local global i64 0, align 8
@DATALINK_LCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @datalink_LayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_LayerDown(i8* %0, %struct.fsm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.datalink*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fsm* %1, %struct.fsm** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.datalink*
  store %struct.datalink* %7, %struct.datalink** %5, align 8
  %8 = load %struct.fsm*, %struct.fsm** %4, align 8
  %9 = getelementptr inbounds %struct.fsm, %struct.fsm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PROTO_LCP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %2
  %14 = load %struct.datalink*, %struct.datalink** %5, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %64 [
    i32 128, label %17
    i32 129, label %43
    i32 130, label %54
  ]

17:                                               ; preds = %13
  %18 = load %struct.datalink*, %struct.datalink** %5, align 8
  %19 = getelementptr inbounds %struct.datalink, %struct.datalink* %18, i32 0, i32 6
  %20 = call i32 @peerid_Init(i32* %19)
  %21 = load %struct.datalink*, %struct.datalink** %5, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 5
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @fsm2initial(i32* %26)
  %28 = load %struct.datalink*, %struct.datalink** %5, align 8
  %29 = load i32, i32* @DATALINK_LCP, align 4
  %30 = call i32 @datalink_NewState(%struct.datalink* %28, i32 %29)
  %31 = load %struct.datalink*, %struct.datalink** %5, align 8
  %32 = getelementptr inbounds %struct.datalink, %struct.datalink* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %34, align 8
  %36 = load %struct.datalink*, %struct.datalink** %5, align 8
  %37 = getelementptr inbounds %struct.datalink, %struct.datalink* %36, i32 0, i32 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fsm*, %struct.fsm** %4, align 8
  %42 = call i32 %35(i32 %40, %struct.fsm* %41)
  br label %43

43:                                               ; preds = %13, %17
  %44 = load %struct.datalink*, %struct.datalink** %5, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.datalink*, %struct.datalink** %5, align 8
  %51 = getelementptr inbounds %struct.datalink, %struct.datalink* %50, i32 0, i32 3
  %52 = call i32 @cbcp_Down(%struct.TYPE_16__* %51)
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %13, %53
  %55 = load %struct.datalink*, %struct.datalink** %5, align 8
  %56 = getelementptr inbounds %struct.datalink, %struct.datalink* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = call i32 @timer_Stop(i32* %57)
  %59 = load %struct.datalink*, %struct.datalink** %5, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = call i32 @timer_Stop(i32* %62)
  br label %64

64:                                               ; preds = %54, %13
  %65 = load %struct.datalink*, %struct.datalink** %5, align 8
  %66 = load i32, i32* @DATALINK_LCP, align 4
  %67 = call i32 @datalink_NewState(%struct.datalink* %65, i32 %66)
  %68 = load %struct.datalink*, %struct.datalink** %5, align 8
  %69 = call i32 @datalink_AuthReInit(%struct.datalink* %68)
  br label %70

70:                                               ; preds = %64, %2
  ret void
}

declare dso_local i32 @peerid_Init(i32*) #1

declare dso_local i32 @fsm2initial(i32*) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i32) #1

declare dso_local i32 @cbcp_Down(%struct.TYPE_16__*) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @datalink_AuthReInit(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
