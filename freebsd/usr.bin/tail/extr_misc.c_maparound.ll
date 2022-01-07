; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_misc.c_maparound.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_misc.c_maparound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapinfo = type { i32, i32, i32, i32, i32* }

@TAILMAPLEN = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maparound(%struct.mapinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.mapinfo* %0, %struct.mapinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %7 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %12 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %15 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @munmap(i32* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %78

20:                                               ; preds = %10, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TAILMAPLEN, align 4
  %23 = sub nsw i32 %22, 1
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %27 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TAILMAPLEN, align 4
  %29 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %30 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %32 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %35 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %38 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %20
  %43 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %44 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %47 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  %50 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %51 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %42, %20
  %53 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %54 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %52
  %60 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %61 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PROT_READ, align 4
  %64 = load i32, i32* @MAP_SHARED, align 4
  %65 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %66 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %69 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @mmap(i32* null, i32 %62, i32 %63, i32 %64, i32 %67, i32 %70)
  %72 = load %struct.mapinfo*, %struct.mapinfo** %4, align 8
  %73 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  %74 = load i32*, i32** @MAP_FAILED, align 8
  %75 = icmp eq i32* %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @munmap(i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
