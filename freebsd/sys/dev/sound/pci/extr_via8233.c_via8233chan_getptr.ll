; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i32, i32, i32, i64, %struct.via_info* }
%struct.via_info = type { i64, i32 }

@VIA_RP_CURRENT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @via8233chan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233chan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.via_chinfo*, align 8
  %6 = alloca %struct.via_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.via_chinfo*
  store %struct.via_chinfo* %12, %struct.via_chinfo** %5, align 8
  %13 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %14 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %13, i32 0, i32 4
  %15 = load %struct.via_info*, %struct.via_info** %14, align 8
  store %struct.via_info* %15, %struct.via_info** %6, align 8
  %16 = load %struct.via_info*, %struct.via_info** %6, align 8
  %17 = getelementptr inbounds %struct.via_info, %struct.via_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snd_mtxlock(i32 %18)
  %20 = load %struct.via_info*, %struct.via_info** %6, align 8
  %21 = getelementptr inbounds %struct.via_info, %struct.via_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %26 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.via_info*, %struct.via_info** %6, align 8
  %29 = getelementptr inbounds %struct.via_info, %struct.via_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_mtxunlock(i32 %30)
  br label %65

32:                                               ; preds = %2
  %33 = load %struct.via_info*, %struct.via_info** %6, align 8
  %34 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %35 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VIA_RP_CURRENT_COUNT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @via_rd(%struct.via_info* %33, i64 %38, i32 4)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.via_info*, %struct.via_info** %6, align 8
  %41 = getelementptr inbounds %struct.via_info, %struct.via_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snd_mtxunlock(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 24
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 16777215
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %51 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %57 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %60 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = srem i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %32, %24
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @via_rd(%struct.via_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
