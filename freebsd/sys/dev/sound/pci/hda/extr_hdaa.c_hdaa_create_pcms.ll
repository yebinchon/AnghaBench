; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_create_pcms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_create_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_pcm_devinfo* }
%struct.hdaa_pcm_devinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_create_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_create_pcms(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdaa_pcm_devinfo*, align 8
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %12, i32 0, i32 2
  %14 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %14, i64 %16
  store %struct.hdaa_pcm_devinfo* %17, %struct.hdaa_pcm_devinfo** %4, align 8
  %18 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %19 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_add_child(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  %22 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %23 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %28 = bitcast %struct.hdaa_pcm_devinfo* %27 to i8*
  %29 = call i32 @device_set_ivars(i32 %26, i8* %28)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
