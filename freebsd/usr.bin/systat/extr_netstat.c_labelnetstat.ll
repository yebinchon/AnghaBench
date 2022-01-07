; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netstat.c_labelnetstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netstat.c_labelnetstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@use_kvm = common dso_local global i64 0, align 8
@namelist = common dso_local global %struct.TYPE_2__* null, align 8
@X_TCB = common dso_local global i64 0, align 8
@wnd = common dso_local global i32 0, align 4
@LADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Local Address\00", align 1
@FADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Foreign Address\00", align 1
@PROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Proto\00", align 1
@RCVCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Recv-Q\00", align 1
@SNDCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Send-Q\00", align 1
@STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"(state)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labelnetstat() #0 {
  %1 = load i64, i64* @use_kvm, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %5 = load i64, i64* @X_TCB, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %34

11:                                               ; preds = %3, %0
  %12 = load i32, i32* @wnd, align 4
  %13 = call i32 @wmove(i32 %12, i32 0, i32 0)
  %14 = load i32, i32* @wnd, align 4
  %15 = call i32 @wclrtobot(i32 %14)
  %16 = load i32, i32* @wnd, align 4
  %17 = load i32, i32* @LADDR, align 4
  %18 = call i32 @mvwaddstr(i32 %16, i32 0, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @wnd, align 4
  %20 = load i32, i32* @FADDR, align 4
  %21 = call i32 @mvwaddstr(i32 %19, i32 0, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @wnd, align 4
  %23 = load i32, i32* @PROTO, align 4
  %24 = call i32 @mvwaddstr(i32 %22, i32 0, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @wnd, align 4
  %26 = load i32, i32* @RCVCC, align 4
  %27 = call i32 @mvwaddstr(i32 %25, i32 0, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* @wnd, align 4
  %29 = load i32, i32* @SNDCC, align 4
  %30 = call i32 @mvwaddstr(i32 %28, i32 0, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* @wnd, align 4
  %32 = load i32, i32* @STATE, align 4
  %33 = call i32 @mvwaddstr(i32 %31, i32 0, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtobot(i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
