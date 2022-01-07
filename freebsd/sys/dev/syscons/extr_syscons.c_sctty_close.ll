; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sctty_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sctty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, i32*, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i8* }
%struct.tty = type { i32 }

@SC_CONSOLECTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"sc%d: scclose(), \00", align 1
@sc_console_unit = common dso_local global i64 0, align 8
@sc_consptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"reset WAIT_REL, \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"reset WAIT_ACQ, \00", align 1
@VT_AUTO = common dso_local global i8* null, align 8
@K_XLATE = common dso_local global i32 0, align 4
@KDSKBMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@main_console = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @sctty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctty_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = call i64 @SC_VTY(%struct.tty* %5)
  %7 = load i64, i64* @SC_CONSOLECTL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %84

9:                                                ; preds = %1
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = call %struct.TYPE_12__* @sc_get_stat(%struct.tty* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DPRINTF(i32 5, i8* %17)
  %19 = call i32 (...) @spltty()
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = icmp eq %struct.TYPE_12__* %20, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %9
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @sc_console_unit, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @sc_consptr, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @cnavailable(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27, %9
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i64 @finish_vt_rel(%struct.TYPE_12__* %40, i32 %41, i32* %4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i64 @finish_vt_acq(%struct.TYPE_12__* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load i8*, i8** @VT_AUTO, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* @K_XLATE, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp eq %struct.TYPE_12__* %64, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %52
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @KDSKBMODE, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = ptrtoint i32* %79 to i32
  %81 = call i32 @kbdd_ioctl(i32 %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %52
  %83 = call i32 @DPRINTF(i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %1
  ret void
}

declare dso_local i64 @SC_VTY(%struct.tty*) #1

declare dso_local %struct.TYPE_12__* @sc_get_stat(%struct.tty*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @cnavailable(i32, i32) #1

declare dso_local i64 @finish_vt_rel(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @finish_vt_acq(%struct.TYPE_12__*) #1

declare dso_local i32 @kbdd_ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
