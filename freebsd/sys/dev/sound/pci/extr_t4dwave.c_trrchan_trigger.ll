; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_trrchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_trrchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_rchinfo = type { i32, i32, %struct.tr_info* }
%struct.tr_info = type { i32 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@TR_REG_DMAR15 = common dso_local global i32 0, align 4
@TR_REG_DMAR11 = common dso_local global i32 0, align 4
@TR_REG_DMAR0 = common dso_local global i32 0, align 4
@TR_REG_DMAR4 = common dso_local global i32 0, align 4
@TR_REG_SBCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @trrchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trrchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tr_rchinfo*, align 8
  %9 = alloca %struct.tr_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tr_rchinfo*
  store %struct.tr_rchinfo* %12, %struct.tr_rchinfo** %8, align 8
  %13 = load %struct.tr_rchinfo*, %struct.tr_rchinfo** %8, align 8
  %14 = getelementptr inbounds %struct.tr_rchinfo, %struct.tr_rchinfo* %13, i32 0, i32 2
  %15 = load %struct.tr_info*, %struct.tr_info** %14, align 8
  store %struct.tr_info* %15, %struct.tr_info** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCMTRIG_COMMON(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PCMTRIG_START, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %26 = load i32, i32* @TR_REG_DMAR15, align 4
  %27 = call i32 @tr_wr(%struct.tr_info* %25, i32 %26, i32 0, i32 1)
  %28 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %29 = load i32, i32* @TR_REG_DMAR11, align 4
  %30 = call i32 @tr_rd(%struct.tr_info* %28, i32 %29, i32 1)
  %31 = and i32 %30, 3
  store i32 %31, i32* %10, align 4
  %32 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %33 = load i32, i32* @TR_REG_DMAR11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, 84
  %36 = call i32 @tr_wr(%struct.tr_info* %32, i32 %33, i32 %35, i32 1)
  %37 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %38 = load i32, i32* @TR_REG_DMAR0, align 4
  %39 = load %struct.tr_rchinfo*, %struct.tr_rchinfo** %8, align 8
  %40 = getelementptr inbounds %struct.tr_rchinfo, %struct.tr_rchinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sndbuf_getbufaddr(i32 %41)
  %43 = call i32 @tr_wr(%struct.tr_info* %37, i32 %38, i32 %42, i32 4)
  %44 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %45 = load i32, i32* @TR_REG_DMAR4, align 4
  %46 = call i32 @tr_rd(%struct.tr_info* %44, i32 %45, i32 4)
  %47 = and i32 %46, -16777216
  store i32 %47, i32* %10, align 4
  %48 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %49 = load i32, i32* @TR_REG_DMAR4, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.tr_rchinfo*, %struct.tr_rchinfo** %8, align 8
  %52 = getelementptr inbounds %struct.tr_rchinfo, %struct.tr_rchinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sndbuf_runsz(i32 %53)
  %55 = sub nsw i32 %54, 1
  %56 = or i32 %50, %55
  %57 = call i32 @tr_wr(%struct.tr_info* %48, i32 %49, i32 %56, i32 4)
  %58 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %59 = load i32, i32* @TR_REG_SBCTRL, align 4
  %60 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %61 = load i32, i32* @TR_REG_SBCTRL, align 4
  %62 = call i32 @tr_rd(%struct.tr_info* %60, i32 %61, i32 1)
  %63 = or i32 %62, 1
  %64 = call i32 @tr_wr(%struct.tr_info* %58, i32 %59, i32 %63, i32 1)
  %65 = load %struct.tr_rchinfo*, %struct.tr_rchinfo** %8, align 8
  %66 = getelementptr inbounds %struct.tr_rchinfo, %struct.tr_rchinfo* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %77

67:                                               ; preds = %20
  %68 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %69 = load i32, i32* @TR_REG_SBCTRL, align 4
  %70 = load %struct.tr_info*, %struct.tr_info** %9, align 8
  %71 = load i32, i32* @TR_REG_SBCTRL, align 4
  %72 = call i32 @tr_rd(%struct.tr_info* %70, i32 %71, i32 1)
  %73 = and i32 %72, -8
  %74 = call i32 @tr_wr(%struct.tr_info* %68, i32 %69, i32 %73, i32 1)
  %75 = load %struct.tr_rchinfo*, %struct.tr_rchinfo** %8, align 8
  %76 = getelementptr inbounds %struct.tr_rchinfo, %struct.tr_rchinfo* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %67, %24
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

declare dso_local i32 @tr_rd(%struct.tr_info*, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_runsz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
