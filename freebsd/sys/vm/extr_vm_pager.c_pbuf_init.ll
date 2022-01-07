; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32, i32, i32, i32, i32* }

@MAXPHYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @pbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbuf_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buf*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.buf*
  store %struct.buf* %10, %struct.buf** %8, align 8
  %11 = load i32, i32* @MAXPHYS, align 4
  %12 = call i64 @kva_alloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.buf*, %struct.buf** %8, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 5
  store i32* %14, i32** %16, align 8
  %17 = load %struct.buf*, %struct.buf** %8, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load i32, i32* @MAXPHYS, align 4
  %25 = load %struct.buf*, %struct.buf** %8, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.buf*, %struct.buf** %8, align 8
  %28 = call i32 @BUF_LOCKINIT(%struct.buf* %27)
  %29 = load %struct.buf*, %struct.buf** %8, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 3
  %31 = call i32 @LIST_INIT(i32* %30)
  %32 = load i32, i32* @NOCRED, align 4
  %33 = load %struct.buf*, %struct.buf** %8, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.buf*, %struct.buf** %8, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.buf*, %struct.buf** %8, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local i32 @BUF_LOCKINIT(%struct.buf*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
