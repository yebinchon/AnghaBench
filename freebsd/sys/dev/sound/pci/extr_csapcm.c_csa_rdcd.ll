; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32 }

@BA0_AC97_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @csa_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.csa_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.csa_info*
  store %struct.csa_info* %10, %struct.csa_info** %8, align 8
  %11 = load %struct.csa_info*, %struct.csa_info** %8, align 8
  %12 = call i32 @csa_active(%struct.csa_info* %11, i32 1)
  %13 = load %struct.csa_info*, %struct.csa_info** %8, align 8
  %14 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @BA0_AC97_RESET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @csa_readcodec(i32* %14, i64 %18, i32* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.csa_info*, %struct.csa_info** %8, align 8
  %24 = call i32 @csa_active(%struct.csa_info* %23, i32 -1)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @csa_active(%struct.csa_info*, i32) #1

declare dso_local i64 @csa_readcodec(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
