; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Down.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DATALINK_OPENING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datalink_Down(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.datalink*, %struct.datalink** %3, align 8
  %6 = getelementptr inbounds %struct.datalink, %struct.datalink* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %34 [
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
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @fsm2initial(i32* %17)
  br label %19

19:                                               ; preds = %2, %2, %2, %8
  %20 = load %struct.datalink*, %struct.datalink** %3, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @fsm2initial(i32* %25)
  %27 = load %struct.datalink*, %struct.datalink** %3, align 8
  %28 = getelementptr inbounds %struct.datalink, %struct.datalink* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DATALINK_OPENING, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %2, %33
  %35 = load %struct.datalink*, %struct.datalink** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @datalink_ComeDown(%struct.datalink* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %34
  ret void
}

declare dso_local i32 @peerid_Init(i32*) #1

declare dso_local i32 @fsm2initial(i32*) #1

declare dso_local i32 @datalink_ComeDown(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
