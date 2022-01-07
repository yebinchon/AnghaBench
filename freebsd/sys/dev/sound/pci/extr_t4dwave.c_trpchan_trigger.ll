; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_trpchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_trpchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_chinfo = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @trpchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trpchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tr_chinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.tr_chinfo*
  store %struct.tr_chinfo* %10, %struct.tr_chinfo** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @PCMTRIG_COMMON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCMTRIG_START, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %21 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %20, i32 0, i32 0
  store i32 3, i32* %21, align 8
  %22 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %23 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %22, i32 0, i32 14
  store i64 0, i64* %23, align 8
  %24 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %25 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %24, i32 0, i32 13
  store i64 0, i64* %25, align 8
  %26 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %27 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %26, i32 0, i32 12
  store i64 0, i64* %27, align 8
  %28 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sndbuf_getbufaddr(i32 %30)
  %32 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %33 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %35 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %37 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sndbuf_getsize(i32 %38)
  %40 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %41 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sndbuf_getalign(i32 %42)
  %44 = sdiv i32 %39, %43
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %47 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %49 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %48, i32 0, i32 3
  store i32 127, i32* %49, align 4
  %50 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %51 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %50, i32 0, i32 2
  store i32 127, i32* %51, align 8
  %52 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %53 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %55 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %57 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %59 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %61 = call i32 @tr_wrch(%struct.tr_chinfo* %60)
  %62 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %63 = call i32 @tr_enaint(%struct.tr_chinfo* %62, i32 1)
  %64 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %65 = call i32 @tr_startch(%struct.tr_chinfo* %64)
  %66 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %67 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %66, i32 0, i32 4
  store i32 1, i32* %67, align 8
  br label %73

68:                                               ; preds = %15
  %69 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %70 = call i32 @tr_stopch(%struct.tr_chinfo* %69)
  %71 = load %struct.tr_chinfo*, %struct.tr_chinfo** %8, align 8
  %72 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %71, i32 0, i32 4
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %19
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sndbuf_getalign(i32) #1

declare dso_local i32 @tr_wrch(%struct.tr_chinfo*) #1

declare dso_local i32 @tr_enaint(%struct.tr_chinfo*, i32) #1

declare dso_local i32 @tr_startch(%struct.tr_chinfo*) #1

declare dso_local i32 @tr_stopch(%struct.tr_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
