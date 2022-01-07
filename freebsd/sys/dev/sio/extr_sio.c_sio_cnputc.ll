; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_sio_cnputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_sio_cnputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i64 }
%struct.siocnstate = type { i32 }

@siocnunit = common dso_local global i64 0, align 8
@siocniobase = common dso_local global i64 0, align 8
@comdefaultrate = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i32 0, align 4
@sio_inited = common dso_local global i32 0, align 4
@sio_lock = common dso_local global i32 0, align 4
@com_data = common dso_local global i64 0, align 8
@gdbdefaultrate = common dso_local global i32 0, align 4
@siogdbiobase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*, i32)* @sio_cnputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sio_cnputc(%struct.consdev* %0, i32 %1) #0 {
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siocnstate, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.consdev*, %struct.consdev** %3, align 8
  %11 = icmp ne %struct.consdev* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.consdev*, %struct.consdev** %3, align 8
  %14 = getelementptr inbounds %struct.consdev, %struct.consdev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @siocnunit, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i64, i64* @siocniobase, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @comdefaultrate, align 4
  store i32 %20, i32* %9, align 4
  br label %22

21:                                               ; preds = %12, %2
  br label %54

22:                                               ; preds = %18
  %23 = call i32 (...) @spltty()
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* @kdb_active, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @sio_inited, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @mtx_owned(i32* @sio_lock)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @mtx_lock_spin(i32* @sio_lock)
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %29, %26, %22
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @siocnopen(%struct.siocnstate* %7, i64 %35, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @siocntxwait(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @com_data, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @outb(i64 %42, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @siocnclose(%struct.siocnstate* %7, i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @splx(i32 %52)
  br label %54

54:                                               ; preds = %51, %21
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @siocnopen(%struct.siocnstate*, i64, i32) #1

declare dso_local i32 @siocntxwait(i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @siocnclose(%struct.siocnstate*, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
