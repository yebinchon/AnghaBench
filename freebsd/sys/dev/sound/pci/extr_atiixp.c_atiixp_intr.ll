; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ATI_REG_ISR = common dso_local global i32 0, align 4
@ATI_REG_ISR_OUT_STATUS = common dso_local global i32 0, align 4
@ATI_IXP_CHN_RUNNING = common dso_local global i32 0, align 4
@ATI_REG_ISR_IN_STATUS = common dso_local global i32 0, align 4
@CODEC_CHECK_BITS = common dso_local global i32 0, align 4
@ATI_REG_IER = common dso_local global i32 0, align 4
@ATI_REG_ISR_IN_XRUN = common dso_local global i32 0, align 4
@ATI_REG_ISR_OUT_XRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atiixp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.atiixp_info*
  store %struct.atiixp_info* %9, %struct.atiixp_info** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %11 = call i32 @atiixp_lock(%struct.atiixp_info* %10)
  %12 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %13 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %18 = call i32 @atiixp_unlock(%struct.atiixp_info* %17)
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %21 = load i32, i32* @ATI_REG_ISR, align 4
  %22 = call i32 @atiixp_rd(%struct.atiixp_info* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %27 = call i32 @atiixp_unlock(%struct.atiixp_info* %26)
  br label %113

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ATI_REG_ISR_OUT_STATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %35 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATI_IXP_CHN_RUNNING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %33, %28
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ATI_REG_ISR_IN_STATUS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %51 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATI_IXP_CHN_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 2
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %49, %44
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %71 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %75 = load i32, i32* @ATI_REG_IER, align 4
  %76 = call i32 @atiixp_rd(%struct.atiixp_info* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %82 = load i32, i32* @ATI_REG_IER, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @atiixp_wr(%struct.atiixp_info* %81, i32 %82, i32 %83)
  %85 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %86 = call i32 @wakeup(%struct.atiixp_info* %85)
  br label %87

87:                                               ; preds = %65, %60
  %88 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %89 = load i32, i32* @ATI_REG_ISR, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @atiixp_wr(%struct.atiixp_info* %88, i32 %89, i32 %90)
  %92 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %93 = call i32 @atiixp_unlock(%struct.atiixp_info* %92)
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %99 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @chn_intr(i32 %101)
  br label %103

103:                                              ; preds = %97, %87
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %109 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @chn_intr(i32 %111)
  br label %113

113:                                              ; preds = %16, %25, %107, %103
  ret void
}

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.atiixp_info*) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
