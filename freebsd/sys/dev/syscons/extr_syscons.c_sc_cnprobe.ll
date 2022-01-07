; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i8*, i32 }

@VTY_SC = common dso_local global i32 0, align 4
@CN_DEAD = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttyv0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @sc_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %5 = load i32, i32* @VTY_SC, align 4
  %6 = call i32 @vty_enabled(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @CN_DEAD, align 8
  %10 = load %struct.consdev*, %struct.consdev** %2, align 8
  %11 = getelementptr inbounds %struct.consdev, %struct.consdev* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  br label %41

12:                                               ; preds = %1
  %13 = call i8* @sc_get_cons_priority(i32* %3, i32* %4)
  %14 = load %struct.consdev*, %struct.consdev** %2, align 8
  %15 = getelementptr inbounds %struct.consdev, %struct.consdev* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i32 @scvidprobe(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i8*, i8** @CN_DEAD, align 8
  %23 = load %struct.consdev*, %struct.consdev** %2, align 8
  %24 = getelementptr inbounds %struct.consdev, %struct.consdev* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @sckbdprobe(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.consdev*, %struct.consdev** %2, align 8
  %31 = getelementptr inbounds %struct.consdev, %struct.consdev* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @CN_DEAD, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.consdev*, %struct.consdev** %2, align 8
  %38 = getelementptr inbounds %struct.consdev, %struct.consdev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %35, %8
  ret void
}

declare dso_local i32 @vty_enabled(i32) #1

declare dso_local i8* @sc_get_cons_priority(i32*, i32*) #1

declare dso_local i32 @scvidprobe(i32, i32, i32) #1

declare dso_local i32 @sckbdprobe(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
