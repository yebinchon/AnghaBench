; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [225 x i8] c"Usage:\0A%s %s [-A options] [-b buffersize] [-C options] [-I options]\0A\09[-i filelist] [-l filename]%s [-o output] [-P options]\0A\09%s[-r retries] [-s [trans::][community@][server][:port]]\0A\09[-t timeout] [-U options] [-v version]%s\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@program = common dso_local global i64 0, align 8
@BSNMPGET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"[-aDdehnK]\00", align 1
@BSNMPWALK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"[-dhnK]\00", align 1
@BSNMPSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"[-adehnK]\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [41 x i8] c" [-M max-repetitions] [-N non-repeaters]\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[-p pdu] \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" OID [OID ...]\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" [OID ...]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @program_name, align 8
  %3 = load i64, i64* @program, align 8
  %4 = load i64, i64* @BSNMPGET, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %20

7:                                                ; preds = %0
  %8 = load i64, i64* @program, align 8
  %9 = load i64, i64* @BSNMPWALK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = load i64, i64* @program, align 8
  %14 = load i64, i64* @BSNMPSET, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %18

18:                                               ; preds = %12, %11
  %19 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %11 ], [ %17, %12 ]
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %6 ], [ %19, %18 ]
  %22 = load i64, i64* @program, align 8
  %23 = load i64, i64* @BSNMPGET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @program, align 8
  %27 = load i64, i64* @BSNMPWALK, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ true, %20 ], [ %28, %25 ]
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %33 = load i64, i64* @program, align 8
  %34 = load i64, i64* @BSNMPGET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @program, align 8
  %38 = load i64, i64* @BSNMPWALK, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ true, %29 ], [ %39, %36 ]
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %44 = load i64, i64* @program, align 8
  %45 = load i64, i64* @BSNMPGET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %60

48:                                               ; preds = %40
  %49 = load i64, i64* @program, align 8
  %50 = load i64, i64* @BSNMPWALK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @program, align 8
  %54 = load i64, i64* @BSNMPSET, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ true, %48 ], [ %55, %52 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %60

60:                                               ; preds = %56, %47
  %61 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %47 ], [ %59, %56 ]
  %62 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %21, i8* %32, i8* %43, i8* %61)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
