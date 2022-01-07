; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1pchan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds1pchan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, %struct.pbank*, %struct.sc_info* }
%struct.pbank = type { i32 }
%struct.sc_info = type { i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1pchan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1pchan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_pchinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca %struct.pbank*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %11, %struct.sc_pchinfo** %5, align 8
  %12 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %13 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %12, i32 0, i32 2
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %6, align 8
  %15 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %16 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @AFMT_CHANNEL(i32 %17)
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %23 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AFMT_16BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %5, align 8
  %33 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %32, i32 0, i32 1
  %34 = load %struct.pbank*, %struct.pbank** %33, align 8
  %35 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pbank, %struct.pbank* %34, i64 %38
  store %struct.pbank* %39, %struct.pbank** %7, align 8
  %40 = load %struct.pbank*, %struct.pbank** %7, align 8
  %41 = getelementptr inbounds %struct.pbank, %struct.pbank* %40, i32 0, i32 0
  %42 = load volatile i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
