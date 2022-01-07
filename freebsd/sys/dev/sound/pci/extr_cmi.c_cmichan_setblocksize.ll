; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@CMI_INTR_PER_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cmichan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmichan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %10, %struct.sc_chinfo** %7, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 1
  %13 = load %struct.sc_info*, %struct.sc_info** %12, align 8
  store %struct.sc_info* %13, %struct.sc_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CMI_INTR_PER_BUFFER, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp sgt i32 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CMI_INTR_PER_BUFFER, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %29 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CMI_INTR_PER_BUFFER, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sndbuf_resize(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
