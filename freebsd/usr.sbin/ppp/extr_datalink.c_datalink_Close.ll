; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CLOSE_LCP = common dso_local global i32 0, align 4
@CLOSE_STAYDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datalink_Close(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.datalink*, %struct.datalink** %3, align 8
  %6 = getelementptr inbounds %struct.datalink, %struct.datalink* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %44 [
    i32 128, label %8
    i32 130, label %19
    i32 131, label %19
    i32 129, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.datalink*, %struct.datalink** %3, align 8
  %10 = getelementptr inbounds %struct.datalink, %struct.datalink* %9, i32 0, i32 2
  %11 = call i32 @peerid_Init(i32* %10)
  %12 = load %struct.datalink*, %struct.datalink** %3, align 8
  %13 = getelementptr inbounds %struct.datalink, %struct.datalink* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @fsm2initial(i32* %17)
  br label %19

19:                                               ; preds = %2, %2, %2, %8
  %20 = load %struct.datalink*, %struct.datalink** %3, align 8
  %21 = call i32 @datalink_AuthReInit(%struct.datalink* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CLOSE_LCP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.datalink*, %struct.datalink** %3, align 8
  %27 = call i32 @datalink_DontHangup(%struct.datalink* %26)
  br label %36

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.datalink*, %struct.datalink** %3, align 8
  %34 = call i32 @datalink_StayDown(%struct.datalink* %33)
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.datalink*, %struct.datalink** %3, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @fsm_Close(i32* %42)
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.datalink*, %struct.datalink** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @datalink_ComeDown(%struct.datalink* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @peerid_Init(i32*) #1

declare dso_local i32 @fsm2initial(i32*) #1

declare dso_local i32 @datalink_AuthReInit(%struct.datalink*) #1

declare dso_local i32 @datalink_DontHangup(%struct.datalink*) #1

declare dso_local i32 @datalink_StayDown(%struct.datalink*) #1

declare dso_local i32 @fsm_Close(i32*) #1

declare dso_local i32 @datalink_ComeDown(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
