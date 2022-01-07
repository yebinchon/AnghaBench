; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_up_ioqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_up_ioqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_up_ioqs = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IOQS_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"uP_IOQs malloc\00", align 1
@CHELSIO_GET_UP_IOQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"uP_IOQs\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ioq_rx_enable   : 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ioq_tx_enable   : 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ioq_rx_status   : 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ioq_tx_status   : 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\0Aioq[%d].cp       : 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ioq[%d].pp       : 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ioq[%d].alen     : 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ioq[%d].stats    : 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"  sop %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"  eop %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @get_up_ioqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_up_ioqs(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ch_up_ioqs, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @bzero(%struct.ch_up_ioqs* %9, i32 32)
  %16 = load i32, i32* @IOQS_BUFSIZE, align 4
  %17 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @IOQS_BUFSIZE, align 4
  %19 = call %struct.TYPE_2__* @malloc(i32 %18)
  %20 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %20, align 8
  %21 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @CHELSIO_GET_UP_IOQS, align 4
  %29 = call i64 @doit(i8* %27, i32 %28, %struct.ch_up_ioqs* %9)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %110, %33
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %56, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %74, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %83, i32 %90)
  %92 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 16
  %100 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds %struct.ch_up_ioqs, %struct.ch_up_ioqs* %9, i32 0, i32 5
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 65535
  %109 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %55
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %51

113:                                              ; preds = %51
  ret i32 0
}

declare dso_local i32 @bzero(%struct.ch_up_ioqs*, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_up_ioqs*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
