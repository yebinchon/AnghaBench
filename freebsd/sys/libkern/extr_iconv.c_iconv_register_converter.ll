; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_register_converter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_register_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }
%struct.kobj_class = type { i32 }

@iconv_converters = common dso_local global i32 0, align 4
@cc_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iconv_converter_class*)* @iconv_register_converter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_register_converter(%struct.iconv_converter_class* %0) #0 {
  %2 = alloca %struct.iconv_converter_class*, align 8
  store %struct.iconv_converter_class* %0, %struct.iconv_converter_class** %2, align 8
  %3 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %2, align 8
  %4 = bitcast %struct.iconv_converter_class* %3 to %struct.kobj_class*
  %5 = call i32 @kobj_class_compile(%struct.kobj_class* %4)
  %6 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %2, align 8
  %7 = getelementptr inbounds %struct.iconv_converter_class, %struct.iconv_converter_class* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %2, align 8
  %11 = load i32, i32* @cc_link, align 4
  %12 = call i32 @TAILQ_INSERT_TAIL(i32* @iconv_converters, %struct.iconv_converter_class* %10, i32 %11)
  ret i32 0
}

declare dso_local i32 @kobj_class_compile(%struct.kobj_class*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.iconv_converter_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
