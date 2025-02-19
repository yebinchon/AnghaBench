; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"responding with AHS\00", align 1
@ISCSI_HEADER_DIGEST_SIZE = common dso_local global i64 0, align 8
@ISCSI_DATA_DIGEST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.icl_pdu*)* @icl_pdu_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @icl_pdu_size(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %4 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %5 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add i64 4, %13
  %15 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %16 = call i32 @icl_pdu_padding(%struct.icl_pdu* %15)
  %17 = sext i32 %16 to i64
  %18 = add i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %20 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* @ISCSI_HEADER_DIGEST_SIZE, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %31 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %36 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* @ISCSI_DATA_DIGEST_SIZE, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %41, %34, %29
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @icl_pdu_padding(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
