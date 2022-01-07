; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerFinish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, i64, i64 }
%struct.datalink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.fsm*)* }

@PROTO_LCP = common dso_local global i64 0, align 8
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@ST_CLOSED = common dso_local global i64 0, align 8
@OPEN_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @datalink_LayerFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_LayerFinish(i8* %0, %struct.fsm* %1) #0 {
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
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.fsm*, %struct.fsm** %4, align 8
  %15 = call i32 @fsm2initial(%struct.fsm* %14)
  %16 = load %struct.datalink*, %struct.datalink** %5, align 8
  %17 = getelementptr inbounds %struct.datalink, %struct.datalink* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %19, align 8
  %21 = load %struct.datalink*, %struct.datalink** %5, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fsm*, %struct.fsm** %4, align 8
  %27 = call i32 %20(i32 %25, %struct.fsm* %26)
  %28 = load %struct.datalink*, %struct.datalink** %5, align 8
  %29 = load i32, i32* @CLOSE_NORMAL, align 4
  %30 = call i32 @datalink_ComeDown(%struct.datalink* %28, i32 %29)
  br label %47

31:                                               ; preds = %2
  %32 = load %struct.fsm*, %struct.fsm** %4, align 8
  %33 = getelementptr inbounds %struct.fsm, %struct.fsm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ST_CLOSED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.fsm*, %struct.fsm** %4, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OPEN_PASSIVE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.fsm*, %struct.fsm** %4, align 8
  %45 = call i32 @fsm_Open(%struct.fsm* %44)
  br label %46

46:                                               ; preds = %43, %37, %31
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @fsm2initial(%struct.fsm*) #1

declare dso_local i32 @datalink_ComeDown(%struct.datalink*, i32) #1

declare dso_local i32 @fsm_Open(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
