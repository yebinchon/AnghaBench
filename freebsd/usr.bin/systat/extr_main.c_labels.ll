; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (...)* }

@curcmd = common dso_local global %struct.TYPE_2__* null, align 8
@CF_LOADAV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"/0   /1   /2   /3   /4   /5   /6   /7   /8   /9   /10\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Load Average\00", align 1
@CF_ZFSARC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"   Total     MFU     MRU    Anon     Hdr   L2Hdr   Other\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ZFS ARC     \00", align 1
@hostname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labels() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curcmd, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = load i32, i32* @CF_LOADAV, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @mvaddstr(i32 0, i32 20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @mvaddstr(i32 1, i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curcmd, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CF_ZFSARC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = call i32 @mvaddstr(i32 0, i32 20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @mvaddstr(i32 1, i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curcmd, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = call i32 (...) @refresh()
  ret void
}

declare dso_local i32 @mvaddstr(i32, i32, i8*) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
