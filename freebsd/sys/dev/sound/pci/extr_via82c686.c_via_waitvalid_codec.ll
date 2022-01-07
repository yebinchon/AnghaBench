; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_waitvalid_codec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_waitvalid_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@VIA_CODEC_CTL = common dso_local global i32 0, align 4
@VIA_CODEC_PRIVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"via: codec invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_info*)* @via_waitvalid_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_waitvalid_codec(%struct.via_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via_info*, align 8
  %4 = alloca i32, align 4
  store %struct.via_info* %0, %struct.via_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TIMEOUT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load %struct.via_info*, %struct.via_info** %3, align 8
  %11 = load i32, i32* @VIA_CODEC_CTL, align 4
  %12 = call i32 @via_rd(%struct.via_info* %10, i32 %11, i32 4)
  %13 = load i32, i32* @VIA_CODEC_PRIVALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %9, %5
  %18 = phi i1 [ false, %5 ], [ %16, %9 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = call i32 @DELAY(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TIMEOUT, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
