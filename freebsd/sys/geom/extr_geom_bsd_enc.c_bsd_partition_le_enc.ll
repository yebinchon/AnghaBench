; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_partition_le_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_partition_le_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_partition_le_enc(i32* %0, %struct.partition* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.partition*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.partition* %1, %struct.partition** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load %struct.partition*, %struct.partition** %4, align 8
  %8 = getelementptr inbounds %struct.partition, %struct.partition* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32enc(i32* %6, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load %struct.partition*, %struct.partition** %4, align 8
  %14 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32enc(i32* %12, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  %19 = load %struct.partition*, %struct.partition** %4, align 8
  %20 = getelementptr inbounds %struct.partition, %struct.partition* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32enc(i32* %18, i32 %21)
  %23 = load %struct.partition*, %struct.partition** %4, align 8
  %24 = getelementptr inbounds %struct.partition, %struct.partition* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 12
  store i32 %25, i32* %27, align 4
  %28 = load %struct.partition*, %struct.partition** %4, align 8
  %29 = getelementptr inbounds %struct.partition, %struct.partition* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 13
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 14
  %35 = load %struct.partition*, %struct.partition** %4, align 8
  %36 = getelementptr inbounds %struct.partition, %struct.partition* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16enc(i32* %34, i32 %37)
  ret void
}

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
