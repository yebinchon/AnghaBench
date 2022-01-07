; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_vprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i32 }
%struct.sbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_vprintf(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.xs_transaction, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sbuf*, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %6, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %14, %struct.sbuf** %11, align 8
  %15 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @sbuf_vprintf(%struct.sbuf* %15, i8* %16, i32 %17)
  %19 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %20 = call i32 @sbuf_finish(%struct.sbuf* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %24 = call i32 @sbuf_data(%struct.sbuf* %23)
  %25 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xs_write(i32 %26, i8* %21, i8* %22, i32 %24)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %29 = call i32 @sbuf_delete(%struct.sbuf* %28)
  %30 = load i32, i32* %12, align 4
  ret i32 %30
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_vprintf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @xs_write(i32, i8*, i8*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
