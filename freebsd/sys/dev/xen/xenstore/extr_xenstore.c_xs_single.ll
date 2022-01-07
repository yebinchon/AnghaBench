; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i32 }
%struct.iovec = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*, i8**)* @xs_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_single(i32 %0, i32 %1, i8* %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.xs_transaction, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %6, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xs_talkv(i32 %25, i32 %21, %struct.iovec* %11, i32 1, i32* %22, i8** %23)
  ret i32 %26
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xs_talkv(i32, i32, %struct.iovec*, i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
