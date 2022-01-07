; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_peekchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_peekchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i32, i32, %struct.ttyinq_block* }
%struct.ttyinq_block = type { i8* }

@TTYINQ_DATASIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyinq_peekchar(%struct.ttyinq* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttyinq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttyinq_block*, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %11 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %10, i32 0, i32 2
  %12 = load %struct.ttyinq_block*, %struct.ttyinq_block** %11, align 8
  store %struct.ttyinq_block* %12, %struct.ttyinq_block** %9, align 8
  %13 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %14 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %17 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %23 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.ttyinq*, %struct.ttyinq** %5, align 8
  %29 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @TTYINQ_DATASIZE, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ttyinq_block*, %struct.ttyinq_block** %9, align 8
  %35 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  %42 = load %struct.ttyinq_block*, %struct.ttyinq_block** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @GETBIT(%struct.ttyinq_block* %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %21, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @GETBIT(%struct.ttyinq_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
