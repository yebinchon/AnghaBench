; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_cons.c_aju_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@AJU_TTYNAME = common dso_local global i8* null, align 8
@boothowto = common dso_local global i32 0, align 4
@RB_SERIAL = common dso_local global i32 0, align 4
@CN_REMOTE = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @aju_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aju_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %3 = load %struct.consdev*, %struct.consdev** %2, align 8
  %4 = getelementptr inbounds %struct.consdev, %struct.consdev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i8*, i8** @AJU_TTYNAME, align 8
  %7 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %6, i32 0)
  %8 = load i32, i32* @boothowto, align 4
  %9 = load i32, i32* @RB_SERIAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @CN_REMOTE, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @CN_NORMAL, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.consdev*, %struct.consdev** %2, align 8
  %19 = getelementptr inbounds %struct.consdev, %struct.consdev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
