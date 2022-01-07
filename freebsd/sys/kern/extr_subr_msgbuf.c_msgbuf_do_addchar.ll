; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_do_addchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_msgbuf.c_msgbuf_do_addchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msgbuf*, i64*, i32)* @msgbuf_do_addchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgbuf_do_addchar(%struct.msgbuf* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.msgbuf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.msgbuf* %0, %struct.msgbuf** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf* %8, i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %15 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %13, %20
  %22 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %23 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %30 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load %struct.msgbuf*, %struct.msgbuf** %4, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = call i64 @MSGBUF_SEQNORM(%struct.msgbuf* %34, i64 %37)
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  ret void
}

declare dso_local i64 @MSGBUF_SEQ_TO_POS(%struct.msgbuf*, i64) #1

declare dso_local i64 @MSGBUF_SEQNORM(%struct.msgbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
