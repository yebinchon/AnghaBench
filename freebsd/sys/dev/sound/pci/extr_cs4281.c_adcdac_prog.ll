; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_adcdac_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_adcdac_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @adcdac_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adcdac_prog(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %5 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %5, i32 0, i32 4
  %7 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %1
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %14 = call i32 @adcdac_go(%struct.sc_chinfo* %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %17 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CS4281PCI_DBA(i32 %18)
  %20 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %21 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sndbuf_getbufaddr(i32 %22)
  %24 = call i32 @cs4281_wr(%struct.sc_info* %15, i32 %19, i32 %23)
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CS4281PCI_DBC(i32 %28)
  %30 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %31 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sndbuf_getsize(i32 %32)
  %34 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %35 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @cs4281_wr(%struct.sc_info* %25, i32 %29, i32 %38)
  %40 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %41 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @adcdac_go(%struct.sc_chinfo* %42, i32 %43)
  br label %45

45:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @adcdac_go(%struct.sc_chinfo*, i32) #1

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @CS4281PCI_DBA(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @CS4281PCI_DBC(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
