; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_read_codec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_read_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32 }

@VIA_CODEC_CTL = common dso_local global i32 0, align 4
@VIA_CODEC_PRIVALID = common dso_local global i32 0, align 4
@VIA_CODEC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via_read_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_read_codec(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.via_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.via_info*
  store %struct.via_info* %10, %struct.via_info** %8, align 8
  %11 = load %struct.via_info*, %struct.via_info** %8, align 8
  %12 = call i64 @via_waitready_codec(%struct.via_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.via_info*, %struct.via_info** %8, align 8
  %17 = load i32, i32* @VIA_CODEC_CTL, align 4
  %18 = load i32, i32* @VIA_CODEC_PRIVALID, align 4
  %19 = load i32, i32* @VIA_CODEC_READ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @VIA_CODEC_INDEX(i32 %21)
  %23 = or i32 %20, %22
  %24 = call i32 @via_wr(%struct.via_info* %16, i32 %17, i32 %23, i32 4)
  %25 = load %struct.via_info*, %struct.via_info** %8, align 8
  %26 = call i64 @via_waitready_codec(%struct.via_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %38

29:                                               ; preds = %15
  %30 = load %struct.via_info*, %struct.via_info** %8, align 8
  %31 = call i64 @via_waitvalid_codec(%struct.via_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %38

34:                                               ; preds = %29
  %35 = load %struct.via_info*, %struct.via_info** %8, align 8
  %36 = load i32, i32* @VIA_CODEC_CTL, align 4
  %37 = call i32 @via_rd(%struct.via_info* %35, i32 %36, i32 2)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %33, %28, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @via_waitready_codec(%struct.via_info*) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @VIA_CODEC_INDEX(i32) #1

declare dso_local i64 @via_waitvalid_codec(%struct.via_info*) #1

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
