; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_nl_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_nl_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_nl_terminate(%struct.sbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbuf*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  %4 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %5 = call i32 @assert_sbuf_integrity(%struct.sbuf* %4)
  %6 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %7 = call i32 @assert_sbuf_state(%struct.sbuf* %6, i32 0)
  %8 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %9 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %14 = call i32 @SBUF_ISDRAINATEOL(%struct.sbuf* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %18 = call i32 @sbuf_put_byte(%struct.sbuf* %17, i8 signext 10)
  br label %19

19:                                               ; preds = %16, %12
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %22 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %25 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %35 = call i32 @sbuf_put_byte(%struct.sbuf* %34, i8 signext 10)
  br label %36

36:                                               ; preds = %33, %20
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %39 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @SBUF_ISDRAINATEOL(%struct.sbuf*) #1

declare dso_local i32 @sbuf_put_byte(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
