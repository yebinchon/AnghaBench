; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i32 }
%struct.sbuf = type { i32 }
%struct.iovec = type { i64, i8* }

@XS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_write(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.xs_transaction, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca [2 x %struct.iovec], align 16
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %5, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.sbuf* @xs_join(i8* %13, i8* %14)
  store %struct.sbuf* %15, %struct.sbuf** %9, align 8
  %16 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %17 = call i64 @sbuf_data(%struct.sbuf* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %22 = call i64 @sbuf_len(%struct.sbuf* %21)
  %23 = add nsw i64 %22, 1
  %24 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 16
  %26 = load i8*, i8** %8, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 1
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 1
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 16
  %35 = load i32, i32* @XS_WRITE, align 4
  %36 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %37 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xs_talkv(i32 %38, i32 %35, %struct.iovec* %36, i32 2, i32* null, i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %41 = call i32 @sbuf_delete(%struct.sbuf* %40)
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local %struct.sbuf* @xs_join(i8*, i8*) #1

declare dso_local i64 @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xs_talkv(i32, i32, %struct.iovec*, i32, i32*, i32*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
