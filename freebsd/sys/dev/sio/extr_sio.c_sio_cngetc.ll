; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_sio_cngetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_sio_cngetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i64 }
%struct.siocnstate = type { i32 }

@siocnunit = common dso_local global i64 0, align 8
@siocniobase = common dso_local global i64 0, align 8
@comdefaultrate = common dso_local global i32 0, align 4
@com_lsr = common dso_local global i64 0, align 8
@LSR_RXRDY = common dso_local global i32 0, align 4
@com_data = common dso_local global i64 0, align 8
@gdbdefaultrate = common dso_local global i32 0, align 4
@siogdbiobase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consdev*)* @sio_cngetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sio_cngetc(%struct.consdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.siocnstate, align 4
  %8 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  %9 = load %struct.consdev*, %struct.consdev** %3, align 8
  %10 = icmp ne %struct.consdev* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.consdev*, %struct.consdev** %3, align 8
  %13 = getelementptr inbounds %struct.consdev, %struct.consdev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @siocnunit, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* @siocniobase, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* @comdefaultrate, align 4
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %45

21:                                               ; preds = %17
  %22 = call i32 (...) @spltty()
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @siocnopen(%struct.siocnstate* %7, i64 %23, i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @com_lsr, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  %30 = load i32, i32* @LSR_RXRDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @com_data, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @siocnclose(%struct.siocnstate* %7, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @splx(i32 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @siocnopen(%struct.siocnstate*, i64, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @siocnclose(%struct.siocnstate*, i64) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
