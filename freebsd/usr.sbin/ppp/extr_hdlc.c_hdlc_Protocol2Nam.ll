; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_Protocol2Nam.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_Protocol2Nam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }

@NPROTOCOLS = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"unrecognised protocol\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hdlc_Protocol2Nam(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NPROTOCOLS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %10, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %19, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %2, align 8
  br label %50

34:                                               ; preds = %18, %9
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @protocols, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %49

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %5

49:                                               ; preds = %43, %5
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
