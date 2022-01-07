; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_xlat16 = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobj = type { i32 }

@M_ICONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @iconv_xlat16_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat16_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iconv_xlat16*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iconv_xlat16*
  store %struct.iconv_xlat16* %5, %struct.iconv_xlat16** %3, align 8
  %6 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %7 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %12 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %18 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @iconv_close(i8* %19)
  br label %21

21:                                               ; preds = %16, %10, %1
  %22 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %23 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %28 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %34 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @iconv_close(i8* %35)
  br label %37

37:                                               ; preds = %32, %26, %21
  %38 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %3, align 8
  %39 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = bitcast i8* %44 to %struct.kobj*
  %46 = load i32, i32* @M_ICONV, align 4
  %47 = call i32 @kobj_delete(%struct.kobj* %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @iconv_close(i8*) #1

declare dso_local i32 @kobj_delete(%struct.kobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
