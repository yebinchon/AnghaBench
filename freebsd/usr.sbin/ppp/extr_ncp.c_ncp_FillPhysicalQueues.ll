; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_FillPhysicalQueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_FillPhysicalQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { i32 }
%struct.bundle = type { %struct.TYPE_6__, %struct.datalink* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.datalink = type { i64, %struct.TYPE_5__*, %struct.datalink* }
%struct.TYPE_5__ = type { i32, i32* }

@DATALINK_OPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ncp_FillPhysicalQueues(%struct.ncp* %0, %struct.bundle* %1) #0 {
  %3 = alloca %struct.ncp*, align 8
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i64, align 8
  store %struct.ncp* %0, %struct.ncp** %3, align 8
  store %struct.bundle* %1, %struct.bundle** %4, align 8
  %8 = load %struct.bundle*, %struct.bundle** %4, align 8
  %9 = getelementptr inbounds %struct.bundle, %struct.bundle* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.bundle*, %struct.bundle** %4, align 8
  %16 = call i64 @mp_FillPhysicalQueues(%struct.bundle* %15)
  store i64 %16, i64* %5, align 8
  br label %64

17:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  %18 = load %struct.bundle*, %struct.bundle** %4, align 8
  %19 = getelementptr inbounds %struct.bundle, %struct.bundle* %18, i32 0, i32 1
  %20 = load %struct.datalink*, %struct.datalink** %19, align 8
  store %struct.datalink* %20, %struct.datalink** %6, align 8
  br label %21

21:                                               ; preds = %59, %17
  %22 = load %struct.datalink*, %struct.datalink** %6, align 8
  %23 = icmp ne %struct.datalink* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load %struct.datalink*, %struct.datalink** %6, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DATALINK_OPEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.datalink*, %struct.datalink** %6, align 8
  %32 = getelementptr inbounds %struct.datalink, %struct.datalink* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i64 @link_QueueLen(i32* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.datalink*, %struct.datalink** %6, align 8
  %40 = getelementptr inbounds %struct.datalink, %struct.datalink* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.ncp*, %struct.ncp** %3, align 8
  %47 = load %struct.ncp*, %struct.ncp** %3, align 8
  %48 = getelementptr inbounds %struct.ncp, %struct.ncp* %47, i32 0, i32 0
  %49 = load %struct.datalink*, %struct.datalink** %6, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i64 @ncp_PushPacket(%struct.ncp* %46, i32* %48, i32* %52)
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %45, %38, %30
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54, %24
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.datalink*, %struct.datalink** %6, align 8
  %61 = getelementptr inbounds %struct.datalink, %struct.datalink* %60, i32 0, i32 2
  %62 = load %struct.datalink*, %struct.datalink** %61, align 8
  store %struct.datalink* %62, %struct.datalink** %6, align 8
  br label %21

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63, %14
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.bundle*, %struct.bundle** %4, align 8
  %67 = getelementptr inbounds %struct.bundle, %struct.bundle* %66, i32 0, i32 0
  %68 = call i64 @ncp_QueueLen(%struct.TYPE_6__* %67)
  %69 = add i64 %65, %68
  ret i64 %69
}

declare dso_local i64 @mp_FillPhysicalQueues(%struct.bundle*) #1

declare dso_local i64 @link_QueueLen(i32*) #1

declare dso_local i64 @ncp_PushPacket(%struct.ncp*, i32*, i32*) #1

declare dso_local i64 @ncp_QueueLen(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
