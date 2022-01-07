; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_esschan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_esschan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_chinfo = type { i32, i32, i32, %struct.ess_info* }
%struct.ess_info = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"esschan_trigger: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @esschan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esschan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ess_chinfo*, align 8
  %9 = alloca %struct.ess_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ess_chinfo*
  store %struct.ess_chinfo* %11, %struct.ess_chinfo** %8, align 8
  %12 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %12, i32 0, i32 3
  %14 = load %struct.ess_info*, %struct.ess_info** %13, align 8
  store %struct.ess_info* %14, %struct.ess_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @DEB(i32 %21)
  %23 = load %struct.ess_info*, %struct.ess_info** %9, align 8
  %24 = call i32 @ess_lock(%struct.ess_info* %23)
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %51 [
    i32 129, label %26
    i32 128, label %50
    i32 130, label %50
  ]

26:                                               ; preds = %19
  %27 = load %struct.ess_info*, %struct.ess_info** %9, align 8
  %28 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %32 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sndbuf_getbufaddr(i32 %33)
  %35 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %36 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sndbuf_getsize(i32 %37)
  %39 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %40 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ess_dmasetup(%struct.ess_info* %27, i32 %30, i32 %34, i32 %38, i32 %41)
  %43 = load %struct.ess_info*, %struct.ess_info** %9, align 8
  %44 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %45 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ess_dmatrigger(%struct.ess_info* %43, i32 %46, i32 1)
  %48 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %49 = call i32 @ess_start(%struct.ess_chinfo* %48)
  br label %54

50:                                               ; preds = %19, %19
  br label %51

51:                                               ; preds = %19, %50
  %52 = load %struct.ess_chinfo*, %struct.ess_chinfo** %8, align 8
  %53 = call i32 @ess_stop(%struct.ess_chinfo* %52)
  br label %54

54:                                               ; preds = %51, %26
  %55 = load %struct.ess_info*, %struct.ess_info** %9, align 8
  %56 = call i32 @ess_unlock(%struct.ess_info* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @ess_dmasetup(%struct.ess_info*, i32, i32, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @ess_dmatrigger(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_start(%struct.ess_chinfo*) #1

declare dso_local i32 @ess_stop(%struct.ess_chinfo*) #1

declare dso_local i32 @ess_unlock(%struct.ess_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
