; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/arcode/extr_arcode.c_op_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/arcode/extr_arcode.c_op_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.athregrec = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@MAX_MARKERS = common dso_local global i64 0, align 8
@markers = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"mark\09%s (%d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.athregrec*)* @op_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_mark(%struct.athregrec* %0) #0 {
  %2 = alloca %struct.athregrec*, align 8
  %3 = alloca i8*, align 8
  store %struct.athregrec* %0, %struct.athregrec** %2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %5 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MAX_MARKERS, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i8**, i8*** @markers, align 8
  %11 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %12 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %19 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %22 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %17, i64 %20, i32 %23)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
