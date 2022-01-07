; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_converter_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_converter_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }

@iconv_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iconv_converter_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iconv_converter_class*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.iconv_converter_class*
  store %struct.iconv_converter_class* %10, %struct.iconv_converter_class** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %37 [
    i32 129, label %12
    i32 128, label %30
  ]

12:                                               ; preds = %3
  %13 = call i32 @sx_xlock(i32* @iconv_lock)
  %14 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %7, align 8
  %15 = call i32 @iconv_register_converter(%struct.iconv_converter_class* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @sx_xunlock(i32* @iconv_lock)
  br label %39

20:                                               ; preds = %12
  %21 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %7, align 8
  %22 = call i32 @ICONV_CONVERTER_INIT(%struct.iconv_converter_class* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %7, align 8
  %27 = call i32 @iconv_unregister_converter(%struct.iconv_converter_class* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = call i32 @sx_xunlock(i32* @iconv_lock)
  br label %39

30:                                               ; preds = %3
  %31 = call i32 @sx_xlock(i32* @iconv_lock)
  %32 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %7, align 8
  %33 = call i32 @ICONV_CONVERTER_DONE(%struct.iconv_converter_class* %32)
  %34 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %7, align 8
  %35 = call i32 @iconv_unregister_converter(%struct.iconv_converter_class* %34)
  store i32 %35, i32* %8, align 4
  %36 = call i32 @sx_xunlock(i32* @iconv_lock)
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %30, %28, %18
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @iconv_register_converter(%struct.iconv_converter_class*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @ICONV_CONVERTER_INIT(%struct.iconv_converter_class*) #1

declare dso_local i32 @iconv_unregister_converter(%struct.iconv_converter_class*) #1

declare dso_local i32 @ICONV_CONVERTER_DONE(%struct.iconv_converter_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
