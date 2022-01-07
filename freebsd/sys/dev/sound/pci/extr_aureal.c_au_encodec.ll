; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_encodec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_encodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32 }

@AU_REG_CODECEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au_info*, i8)* @au_encodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_encodec(%struct.au_info* %0, i8 signext %1) #0 {
  %3 = alloca %struct.au_info*, align 8
  %4 = alloca i8, align 1
  store %struct.au_info* %0, %struct.au_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.au_info*, %struct.au_info** %3, align 8
  %6 = load i32, i32* @AU_REG_CODECEN, align 4
  %7 = load %struct.au_info*, %struct.au_info** %3, align 8
  %8 = load i32, i32* @AU_REG_CODECEN, align 4
  %9 = call i32 @au_rd(%struct.au_info* %7, i32 0, i32 %8, i32 4)
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %11, 8
  %13 = shl i32 1, %12
  %14 = or i32 %9, %13
  %15 = call i32 @au_wr(%struct.au_info* %5, i32 0, i32 %6, i32 %14, i32 4)
  ret void
}

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @au_rd(%struct.au_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
