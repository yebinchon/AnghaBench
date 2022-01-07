; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_brandnote_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_brandnote_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brandnote_cb_arg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32*, i32)* }

@BN_TRANSLATE_OSREL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @brandnote_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brandnote_cb(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.brandnote_cb_arg*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.brandnote_cb_arg*
  store %struct.brandnote_cb_arg* %9, %struct.brandnote_cb_arg** %7, align 8
  %10 = load %struct.brandnote_cb_arg*, %struct.brandnote_cb_arg** %7, align 8
  %11 = getelementptr inbounds %struct.brandnote_cb_arg, %struct.brandnote_cb_arg* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BN_TRANSLATE_OSREL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.brandnote_cb_arg*, %struct.brandnote_cb_arg** %7, align 8
  %20 = getelementptr inbounds %struct.brandnote_cb_arg, %struct.brandnote_cb_arg* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (i32*, i32)*, i32 (i32*, i32)** %22, align 8
  %24 = icmp ne i32 (i32*, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.brandnote_cb_arg*, %struct.brandnote_cb_arg** %7, align 8
  %27 = getelementptr inbounds %struct.brandnote_cb_arg, %struct.brandnote_cb_arg* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (i32*, i32)*, i32 (i32*, i32)** %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.brandnote_cb_arg*, %struct.brandnote_cb_arg** %7, align 8
  %33 = getelementptr inbounds %struct.brandnote_cb_arg, %struct.brandnote_cb_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %30(i32* %31, i32 %34)
  br label %38

36:                                               ; preds = %18, %3
  %37 = load i32, i32* @TRUE, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i32 [ %35, %25 ], [ %37, %36 ]
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @TRUE, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
