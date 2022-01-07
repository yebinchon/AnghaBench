; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_mode_lookup_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/videomode/extr_edid.c_edid_mode_lookup_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32 }

@videomode_count = common dso_local global i32 0, align 4
@videomode_list = common dso_local global %struct.videomode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.videomode* (i8*)* @edid_mode_lookup_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.videomode* @edid_mode_lookup_list(i8* %0) #0 {
  %2 = alloca %struct.videomode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @videomode_count, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.videomode*, %struct.videomode** @videomode_list, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i64 %13
  %15 = getelementptr inbounds %struct.videomode, %struct.videomode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i8* %10, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load %struct.videomode*, %struct.videomode** @videomode_list, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i64 %22
  store %struct.videomode* %23, %struct.videomode** %2, align 8
  br label %29

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  store %struct.videomode* null, %struct.videomode** %2, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.videomode*, %struct.videomode** %2, align 8
  ret %struct.videomode* %30
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
