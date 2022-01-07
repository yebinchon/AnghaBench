; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { %struct.sbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbuf_delete(%struct.sbuf* %0) #0 {
  %2 = alloca %struct.sbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %2, align 8
  %4 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %5 = call i32 @assert_sbuf_integrity(%struct.sbuf* %4)
  %6 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %7 = call i64 @SBUF_ISDYNAMIC(%struct.sbuf* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %11 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %10, i32 0, i32 0
  %12 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %13 = call i32 @SBFREE(%struct.sbuf* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %16 = call i32 @SBUF_ISDYNSTRUCT(%struct.sbuf* %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %18 = call i32 @memset(%struct.sbuf* %17, i32 0, i32 8)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %23 = call i32 @SBFREE(%struct.sbuf* %22)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i64 @SBUF_ISDYNAMIC(%struct.sbuf*) #1

declare dso_local i32 @SBFREE(%struct.sbuf*) #1

declare dso_local i32 @SBUF_ISDYNSTRUCT(%struct.sbuf*) #1

declare dso_local i32 @memset(%struct.sbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
