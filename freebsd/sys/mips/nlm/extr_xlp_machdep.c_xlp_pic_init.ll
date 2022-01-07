; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_pic_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_pic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32, i8*, i32, i32, i32, i32 }

@platform_get_timecount = common dso_local global i32 0, align 4
@XLP_IO_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"XLRPIC\00", align 1
@xlp_pic_base = common dso_local global i64 0, align 8
@XLP_PCI_DEVINFO_REG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Initializing PIC...@%jx %d IRTs\0A\00", align 1
@PIC_CLOCK_TIMER = common dso_local global i32 0, align 4
@platform_timecounter = common dso_local global %struct.timecounter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_pic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_pic_init() #0 {
  %1 = alloca %struct.timecounter, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 0
  %5 = load i32, i32* @platform_get_timecount, align 4
  store i32 %5, i32* %4, align 8
  %6 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 1
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 2
  store i32 -1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 3
  %9 = load i32, i32* @XLP_IO_CLK, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 4
  store i32 ptrtoint ([7 x i8]* @.str to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %1, i32 0, i32 5
  store i32 2000, i32* %11, align 4
  %12 = call i64 @nlm_get_pic_regbase(i32 0)
  store i64 %12, i64* @xlp_pic_base, align 8
  %13 = call i32 (...) @nlm_nodeid()
  %14 = call i32 @nlm_get_pic_pcibase(i32 %13)
  %15 = load i32, i32* @XLP_PCI_DEVINFO_REG0, align 4
  %16 = call i32 @nlm_read_reg(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @xlp_pic_base, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %29, %0
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i64, i64* @xlp_pic_base, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @nlm_pic_write_irt(i64 %26, i32 %27, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load i64, i64* @xlp_pic_base, align 8
  %34 = load i32, i32* @PIC_CLOCK_TIMER, align 4
  %35 = call i32 @nlm_pic_set_timer(i64 %33, i32 %34, i64 -1, i32 0, i32 0)
  store %struct.timecounter* %1, %struct.timecounter** @platform_timecounter, align 8
  ret void
}

declare dso_local i64 @nlm_get_pic_regbase(i32) #1

declare dso_local i32 @nlm_read_reg(i32, i32) #1

declare dso_local i32 @nlm_get_pic_pcibase(i32) #1

declare dso_local i32 @nlm_nodeid(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @nlm_pic_write_irt(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_pic_set_timer(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
