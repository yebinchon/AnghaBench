; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_partition_le_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_bsd_enc.c_bsd_partition_le_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_partition_le_dec(i8** %0, %struct.partition* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.partition*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.partition* %1, %struct.partition** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = call i8* @le32dec(i8** %6)
  %8 = load %struct.partition*, %struct.partition** %4, align 8
  %9 = getelementptr inbounds %struct.partition, %struct.partition* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 4
  %12 = call i8* @le32dec(i8** %11)
  %13 = load %struct.partition*, %struct.partition** %4, align 8
  %14 = getelementptr inbounds %struct.partition, %struct.partition* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 8
  %17 = call i8* @le32dec(i8** %16)
  %18 = load %struct.partition*, %struct.partition** %4, align 8
  %19 = getelementptr inbounds %struct.partition, %struct.partition* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8**, i8*** %3, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 12
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.partition*, %struct.partition** %4, align 8
  %24 = getelementptr inbounds %struct.partition, %struct.partition* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 13
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.partition*, %struct.partition** %4, align 8
  %29 = getelementptr inbounds %struct.partition, %struct.partition* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8**, i8*** %3, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 14
  %32 = call i32 @le16dec(i8** %31)
  %33 = load %struct.partition*, %struct.partition** %4, align 8
  %34 = getelementptr inbounds %struct.partition, %struct.partition* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret void
}

declare dso_local i8* @le32dec(i8**) #1

declare dso_local i32 @le16dec(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
