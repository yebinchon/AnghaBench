; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281chan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs4281chan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281chan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc_chinfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %12, %struct.sc_chinfo** %5, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 2
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %6, align 8
  %16 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %17 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sndbuf_getsize(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @CS4281PCI_DBA(i32 %23)
  %25 = call i32 @cs4281_rd(%struct.sc_info* %20, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %27 = load %struct.sc_chinfo*, %struct.sc_chinfo** %5, align 8
  %28 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CS4281PCI_DCA(i32 %29)
  %31 = call i32 @cs4281_rd(%struct.sc_info* %26, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @cs4281_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @CS4281PCI_DBA(i32) #1

declare dso_local i32 @CS4281PCI_DCA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
