; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_chinfo = type { i64, i32, i32, %struct.sb_info* }
%struct.sb_info = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@BD_F_HISPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_chinfo*)* @sb_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_speed(%struct.sb_chinfo* %0) #0 {
  %2 = alloca %struct.sb_chinfo*, align 8
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sb_chinfo* %0, %struct.sb_chinfo** %2, align 8
  %11 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %11, i32 0, i32 3
  %13 = load %struct.sb_info*, %struct.sb_info** %12, align 8
  store %struct.sb_info* %13, %struct.sb_info** %3, align 8
  %14 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %15 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCMDIR_PLAY, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %22 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AFMT_CHANNEL(i32 %23)
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 768
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 11025, i32 23000
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 22050, i32 44100
  store i32 %40, i32* %9, align 4
  br label %61

41:                                               ; preds = %1
  %42 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 512
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 23000, i32 13000
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 44100, i32 15000
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %41
  store i32 999999, i32* %8, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 23000, i32 13000
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %46
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %63 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %72 = call i32 @sb_lock(%struct.sb_info* %71)
  %73 = load i32, i32* @BD_F_HISPEED, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @BD_F_HISPEED, align 4
  %84 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %85 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %70
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 %89, %90
  %92 = sdiv i32 256000000, %91
  %93 = sub nsw i32 65536, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 8
  store i32 %95, i32* %10, align 4
  %96 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @sb_cmd1(%struct.sb_info* %96, i32 64, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 65536, %99
  %101 = sdiv i32 256000000, %100
  %102 = load i32, i32* %5, align 4
  %103 = ashr i32 %101, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %106 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %108 = call i32 @sb_unlock(%struct.sb_info* %107)
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i32 @sb_cmd1(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
