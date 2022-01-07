; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_xlat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobj = type { i32 }

@M_ICONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @iconv_xlat_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iconv_xlat*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iconv_xlat*
  store %struct.iconv_xlat* %5, %struct.iconv_xlat** %3, align 8
  %6 = load %struct.iconv_xlat*, %struct.iconv_xlat** %3, align 8
  %7 = getelementptr inbounds %struct.iconv_xlat, %struct.iconv_xlat* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.kobj*
  %14 = load i32, i32* @M_ICONV, align 4
  %15 = call i32 @kobj_delete(%struct.kobj* %13, i32 %14)
  ret i32 0
}

declare dso_local i32 @kobj_delete(%struct.kobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
