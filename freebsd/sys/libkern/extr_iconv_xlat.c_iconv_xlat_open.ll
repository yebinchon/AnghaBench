; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }
%struct.iconv_cspair = type { i32, i32 }
%struct.iconv_xlat = type { %struct.iconv_cspair*, i32 }
%struct.kobj_class = type { i32 }

@M_ICONV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iconv_converter_class*, %struct.iconv_cspair*, %struct.iconv_cspair*, i8**)* @iconv_xlat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat_open(%struct.iconv_converter_class* %0, %struct.iconv_cspair* %1, %struct.iconv_cspair* %2, i8** %3) #0 {
  %5 = alloca %struct.iconv_converter_class*, align 8
  %6 = alloca %struct.iconv_cspair*, align 8
  %7 = alloca %struct.iconv_cspair*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.iconv_xlat*, align 8
  store %struct.iconv_converter_class* %0, %struct.iconv_converter_class** %5, align 8
  store %struct.iconv_cspair* %1, %struct.iconv_cspair** %6, align 8
  store %struct.iconv_cspair* %2, %struct.iconv_cspair** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %5, align 8
  %11 = bitcast %struct.iconv_converter_class* %10 to %struct.kobj_class*
  %12 = load i32, i32* @M_ICONV, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call i64 @kobj_create(%struct.kobj_class* %11, i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to %struct.iconv_xlat*
  store %struct.iconv_xlat* %15, %struct.iconv_xlat** %9, align 8
  %16 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %17 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iconv_xlat*, %struct.iconv_xlat** %9, align 8
  %20 = getelementptr inbounds %struct.iconv_xlat, %struct.iconv_xlat* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %22 = load %struct.iconv_xlat*, %struct.iconv_xlat** %9, align 8
  %23 = getelementptr inbounds %struct.iconv_xlat, %struct.iconv_xlat* %22, i32 0, i32 0
  store %struct.iconv_cspair* %21, %struct.iconv_cspair** %23, align 8
  %24 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %25 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.iconv_xlat*, %struct.iconv_xlat** %9, align 8
  %29 = bitcast %struct.iconv_xlat* %28 to i8*
  %30 = load i8**, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  ret i32 0
}

declare dso_local i64 @kobj_create(%struct.kobj_class*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
