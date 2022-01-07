; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_pci.c_cbb_chipset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_pci.c_cbb_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_chipinfo = type { i64, i8*, i32 }

@yc_chipsets = common dso_local global %struct.yenta_chipinfo* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8**)* @cbb_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_chipset(i64 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.yenta_chipinfo*, align 8
  store i64 %0, i64* %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** @yc_chipsets, align 8
  store %struct.yenta_chipinfo* %6, %struct.yenta_chipinfo** %5, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** %5, align 8
  %9 = getelementptr inbounds %struct.yenta_chipinfo, %struct.yenta_chipinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** %5, align 8
  %15 = getelementptr inbounds %struct.yenta_chipinfo, %struct.yenta_chipinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i1 [ false, %7 ], [ %17, %12 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** %5, align 8
  %23 = getelementptr inbounds %struct.yenta_chipinfo, %struct.yenta_chipinfo* %22, i32 1
  store %struct.yenta_chipinfo* %23, %struct.yenta_chipinfo** %5, align 8
  br label %7

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** %5, align 8
  %29 = getelementptr inbounds %struct.yenta_chipinfo, %struct.yenta_chipinfo* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %4, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.yenta_chipinfo*, %struct.yenta_chipinfo** %5, align 8
  %34 = getelementptr inbounds %struct.yenta_chipinfo, %struct.yenta_chipinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
