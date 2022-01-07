; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggrch_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggrch_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_rchinfo = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aggrch_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggrch_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.agg_rchinfo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.agg_rchinfo*
  store %struct.agg_rchinfo* %10, %struct.agg_rchinfo** %7, align 8
  %11 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %12 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %15 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 25, %18
  %20 = sdiv i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %23 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %26, %27
  %29 = call i32 @RANGE(i32 %21, i32 2, i32 %28)
  %30 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %31 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sndbuf_getsize(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %3
  %39 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %40 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sndbuf_resize(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %46 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sndbuf_getblkcnt(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %50 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sndbuf_getblksz(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %3
  %54 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %55 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @sndbuf_setblkcnt(i32 %56, i32 %57)
  %59 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %60 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sndbuf_setblksz(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %38
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 2
  %67 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %68 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  %73 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %7, align 8
  %74 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @RANGE(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getblkcnt(i32) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

declare dso_local i32 @sndbuf_setblkcnt(i32, i32) #1

declare dso_local i32 @sndbuf_setblksz(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
