; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_compar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_compar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobqueue = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compar(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jobqueue*, align 8
  %7 = alloca %struct.jobqueue*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.jobqueue**
  %10 = load %struct.jobqueue*, %struct.jobqueue** %9, align 8
  store %struct.jobqueue* %10, %struct.jobqueue** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.jobqueue**
  %13 = load %struct.jobqueue*, %struct.jobqueue** %12, align 8
  store %struct.jobqueue* %13, %struct.jobqueue** %7, align 8
  %14 = load %struct.jobqueue*, %struct.jobqueue** %6, align 8
  %15 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.jobqueue*, %struct.jobqueue** %7, align 8
  %18 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.jobqueue*, %struct.jobqueue** %6, align 8
  %24 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jobqueue*, %struct.jobqueue** %7, align 8
  %27 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.jobqueue*, %struct.jobqueue** %6, align 8
  %33 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 57
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.jobqueue*, %struct.jobqueue** %7, align 8
  %41 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %73

48:                                               ; preds = %39, %31
  %49 = load %struct.jobqueue*, %struct.jobqueue** %6, align 8
  %50 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 48
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.jobqueue*, %struct.jobqueue** %7, align 8
  %58 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %73

65:                                               ; preds = %56, %48
  %66 = load %struct.jobqueue*, %struct.jobqueue** %6, align 8
  %67 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.jobqueue*, %struct.jobqueue** %7, align 8
  %70 = getelementptr inbounds %struct.jobqueue, %struct.jobqueue* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %68, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %64, %47, %30, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
