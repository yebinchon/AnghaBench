; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sc_cnstate = type { i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@KDSKBMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.sc_cnstate*)* @sccnclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnclose(%struct.TYPE_7__* %0, %struct.sc_cnstate* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.sc_cnstate*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.sc_cnstate* %1, %struct.sc_cnstate** %4, align 8
  %5 = load i8*, i8** @FALSE, align 8
  %6 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %7 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %10 = call i32 @sccnscrunlock(%struct.TYPE_7__* %8, %struct.sc_cnstate* %9)
  %11 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %12 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** @FALSE, align 8
  %21 = call i32 @kbdd_poll(i32 %19, i8* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @KDSKBMODE, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @kbdd_ioctl(i32 %30, i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %27, %16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kbdd_disable(i32 %41)
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %45 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %48 = call i32 @sccnkbdunlock(%struct.TYPE_7__* %46, %struct.sc_cnstate* %47)
  br label %49

49:                                               ; preds = %38, %15
  ret void
}

declare dso_local i32 @sccnscrunlock(%struct.TYPE_7__*, %struct.sc_cnstate*) #1

declare dso_local i32 @kbdd_poll(i32, i8*) #1

declare dso_local i32 @kbdd_ioctl(i32, i32, i32) #1

declare dso_local i32 @kbdd_disable(i32) #1

declare dso_local i32 @sccnkbdunlock(%struct.TYPE_7__*, %struct.sc_cnstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
