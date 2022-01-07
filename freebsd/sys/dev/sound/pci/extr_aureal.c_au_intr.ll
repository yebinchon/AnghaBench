; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AU_REG_IRQSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pcm%d: interrupt with src %x\0A\00", align 1
@AU_IRQ_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pcm%d: fatal error irq\0A\00", align 1
@AU_IRQ_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pcm%d: parity error irq\0A\00", align 1
@AU_IRQ_UNKNOWN = common dso_local global i32 0, align 4
@AU_REG_UNK1 = common dso_local global i32 0, align 4
@AU_IRQ_PCMOUT = common dso_local global i32 0, align 4
@AU_REG_UNK2 = common dso_local global i32 0, align 4
@AU_BUFFSIZE = common dso_local global i32 0, align 4
@AU_REG_UNK3 = common dso_local global i32 0, align 4
@AU_REG_UNK4 = common dso_local global i32 0, align 4
@AU_REG_UNK5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @au_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.au_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.au_info*
  store %struct.au_info* %7, %struct.au_info** %3, align 8
  %8 = load %struct.au_info*, %struct.au_info** %3, align 8
  %9 = getelementptr inbounds %struct.au_info, %struct.au_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.au_info*, %struct.au_info** %3, align 8
  %13 = load i32, i32* @AU_REG_IRQSRC, align 4
  %14 = call i32 @au_rd(%struct.au_info* %12, i32 0, i32 %13, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.au_info*, %struct.au_info** %3, align 8
  %16 = getelementptr inbounds %struct.au_info, %struct.au_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AU_IRQ_FATAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.au_info*, %struct.au_info** %3, align 8
  %26 = getelementptr inbounds %struct.au_info, %struct.au_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @AU_IRQ_PARITY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.au_info*, %struct.au_info** %3, align 8
  %36 = getelementptr inbounds %struct.au_info, %struct.au_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AU_IRQ_UNKNOWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.au_info*, %struct.au_info** %3, align 8
  %46 = load i32, i32* @AU_REG_UNK1, align 4
  %47 = call i32 @au_rd(%struct.au_info* %45, i32 0, i32 %46, i32 4)
  %48 = load %struct.au_info*, %struct.au_info** %3, align 8
  %49 = load i32, i32* @AU_REG_UNK1, align 4
  %50 = call i32 @au_wr(%struct.au_info* %48, i32 0, i32 %49, i32 0, i32 4)
  %51 = load %struct.au_info*, %struct.au_info** %3, align 8
  %52 = load i32, i32* @AU_REG_UNK1, align 4
  %53 = call i32 @au_wr(%struct.au_info* %51, i32 0, i32 %52, i32 65536, i32 4)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AU_IRQ_PCMOUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.au_info*, %struct.au_info** %3, align 8
  %61 = load i32, i32* @AU_REG_UNK2, align 4
  %62 = call i32 @au_rd(%struct.au_info* %60, i32 0, i32 %61, i32 4)
  %63 = load i32, i32* @AU_BUFFSIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  store i32 %65, i32* %5, align 4
  %66 = load %struct.au_info*, %struct.au_info** %3, align 8
  %67 = getelementptr inbounds %struct.au_info, %struct.au_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @chn_intr(i32 %69)
  %71 = load %struct.au_info*, %struct.au_info** %3, align 8
  %72 = load i32, i32* @AU_REG_UNK3, align 4
  %73 = call i32 @au_rd(%struct.au_info* %71, i32 0, i32 %72, i32 4)
  %74 = load %struct.au_info*, %struct.au_info** %3, align 8
  %75 = load i32, i32* @AU_REG_UNK4, align 4
  %76 = call i32 @au_rd(%struct.au_info* %74, i32 0, i32 %75, i32 4)
  %77 = load %struct.au_info*, %struct.au_info** %3, align 8
  %78 = load i32, i32* @AU_REG_UNK5, align 4
  %79 = call i32 @au_rd(%struct.au_info* %77, i32 0, i32 %78, i32 4)
  br label %80

80:                                               ; preds = %59, %54
  %81 = load %struct.au_info*, %struct.au_info** %3, align 8
  %82 = load i32, i32* @AU_REG_IRQSRC, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 2047
  %85 = call i32 @au_wr(%struct.au_info* %81, i32 0, i32 %82, i32 %84, i32 4)
  %86 = load %struct.au_info*, %struct.au_info** %3, align 8
  %87 = load i32, i32* @AU_REG_IRQSRC, align 4
  %88 = call i32 @au_rd(%struct.au_info* %86, i32 0, i32 %87, i32 4)
  ret void
}

declare dso_local i32 @au_rd(%struct.au_info*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
