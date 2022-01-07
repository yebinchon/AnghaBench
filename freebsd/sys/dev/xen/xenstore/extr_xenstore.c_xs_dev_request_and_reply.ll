; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_dev_request_and_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_dev_request_and_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xsd_sockmsg = type { i64, i32 }

@xs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_dev_request_and_reply(%struct.xsd_sockmsg* %0, i8** %1) #0 {
  %3 = alloca %struct.xsd_sockmsg*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xsd_sockmsg* %0, %struct.xsd_sockmsg** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %3, align 8
  %8 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  %11 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %3, align 8
  %12 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %3, align 8
  %13 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 16, %14
  %16 = call i32 @xs_write_store(%struct.xsd_sockmsg* %11, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %3, align 8
  %20 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %19, i32 0, i32 1
  %21 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %3, align 8
  %22 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %21, i32 0, i32 0
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @xs_read_reply(i32* %20, i64* %22, i8** %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs, i32 0, i32 0))
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @xs_write_store(%struct.xsd_sockmsg*, i64) #1

declare dso_local i32 @xs_read_reply(i32*, i64*, i8**) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
