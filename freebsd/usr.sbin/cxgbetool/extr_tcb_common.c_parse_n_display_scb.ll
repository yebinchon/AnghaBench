; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_parse_n_display_scb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_parse_n_display_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_scb_info = common dso_local global i32* null, align 8
@g_prntstyl = common dso_local global i64 0, align 8
@PRNTSTYL_VERBOSE = common dso_local global i64 0, align 8
@PRNTSTYL_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PRNTSTYL_LIST = common dso_local global i64 0, align 8
@PRNTSTYL_COMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_n_display_scb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32*, i32** @g_scb_info, align 8
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @parse_scb(i32* %5, i8* %6)
  %8 = load i64, i64* @g_prntstyl, align 8
  %9 = load i64, i64* @PRNTSTYL_VERBOSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @g_prntstyl, align 8
  %13 = load i64, i64* @PRNTSTYL_RAW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @tcb_hexdump(i32 0, i8* %16, i32 128)
  %18 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* @g_prntstyl, align 8
  %21 = load i64, i64* @PRNTSTYL_VERBOSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @g_prntstyl, align 8
  %25 = load i64, i64* @PRNTSTYL_LIST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @g_prntstyl, align 8
  %29 = load i64, i64* @PRNTSTYL_COMP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23, %19
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @display_list_tcb(i32* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @parse_scb(i32*, i8*) #1

declare dso_local i32 @tcb_hexdump(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @display_list_tcb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
