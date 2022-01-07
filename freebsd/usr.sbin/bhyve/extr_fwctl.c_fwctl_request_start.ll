; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_fwctl.c_fwctl_request_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_fwctl.c_fwctl_request_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i64)* }

@rinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@errop_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@OP_MAX = common dso_local global i64 0, align 8
@ops = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fwctl_request_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwctl_request_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %4 = sub nsw i64 %3, 12
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  store %struct.TYPE_5__* @errop_info, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 8
  %6 = load i64, i64* @OP_MAX, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ops, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %9, i64 %10
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ops, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  br label %19

19:                                               ; preds = %14, %8, %0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (i64)*, i32 (i64)** %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %24 = call i32 %22(i64 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @errop_set(i32 %28)
  store %struct.TYPE_5__* @errop_info, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @fwctl_request_done()
  store i32 1, i32* %1, align 4
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @errop_set(i32) #1

declare dso_local i32 @fwctl_request_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
