; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_setuppch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_setuppch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, i32, i64, i64, i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_pchinfo*)* @ds_setuppch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_setuppch(%struct.sc_pchinfo* %0) #0 {
  %2 = alloca %struct.sc_pchinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_pchinfo* %0, %struct.sc_pchinfo** %2, align 8
  %8 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @AFMT_CHANNEL(i32 %10)
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AFMT_16BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %28 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sndbuf_getbufaddr(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %32 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sndbuf_getsize(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %36 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %42 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ds_initpbank(i64 %37, i32 %38, i32 %39, i32 %40, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %48 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %55 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ds_initpbank(i64 %50, i32 %51, i32 %52, i32 %53, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %61 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %66 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ds_initpbank(i64 %62, i32 2, i32 %63, i32 %64, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %72 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %2, align 8
  %78 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ds_initpbank(i64 %74, i32 2, i32 %75, i32 %76, i32 %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @ds_initpbank(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
