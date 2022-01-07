; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_init_qXfer_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_init_qXfer_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qXfer_context = type { i32, i32, i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@GDB_BUFSZ = common dso_local global i64 0, align 8
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@qXfer_drain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qXfer_context*, i32)* @init_qXfer_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_qXfer_ctx(%struct.qXfer_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qXfer_context*, align 8
  %5 = alloca i32, align 4
  store %struct.qXfer_context* %0, %struct.qXfer_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 6
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ENOSPC, align 4
  store i32 %10, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* @GDB_BUFSZ, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @ummin(i32 %14, i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %19 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %21 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %23 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %25 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %24, i32 0, i32 2
  %26 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %27 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %31 = call i32 @sbuf_new(i32* %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %33 = getelementptr inbounds %struct.qXfer_context, %struct.qXfer_context* %32, i32 0, i32 2
  %34 = load i32, i32* @qXfer_drain, align 4
  %35 = load %struct.qXfer_context*, %struct.qXfer_context** %4, align 8
  %36 = call i32 @sbuf_set_drain(i32* %33, i32 %34, %struct.qXfer_context* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %11, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ummin(i32, i64) #1

declare dso_local i32 @sbuf_new(i32*, i32, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(i32*, i32, %struct.qXfer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
