; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_disk.c_ofwd_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_disk.c_ofwd_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwd_softc = type { i32 }
%struct.bio = type { i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ofwd: incorrect i/o count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofwd_softc*, %struct.bio*)* @ofwd_startio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwd_startio(%struct.ofwd_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.ofwd_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  store %struct.ofwd_softc* %0, %struct.ofwd_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @OF_seek(i32 %8, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %40 [
    i32 129, label %16
    i32 128, label %28
  ]

16:                                               ; preds = %2
  %17 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @OF_read(i32 %19, i8* %23, i64 %26)
  store i64 %27, i64* %5, align 8
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @OF_write(i32 %31, i8* %35, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %2, %28, %16
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  ret i32 0
}

declare dso_local i64 @OF_seek(i32, i32) #1

declare dso_local i64 @OF_read(i32, i8*, i64) #1

declare dso_local i64 @OF_write(i32, i8*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
