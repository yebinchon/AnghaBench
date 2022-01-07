; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_console.c_cfe_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_console.c_cfe_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32 }

@CFE_STDHANDLE_CONSOLE = common dso_local global i32 0, align 4
@conhandle = common dso_local global i64 0, align 8
@CN_DEAD = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Using CFE firmware console.\0A\00", align 1
@CN_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @cfe_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfe_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %5 = load i32, i32* @CFE_STDHANDLE_CONSOLE, align 4
  %6 = call i64 @cfe_getstdhandle(i32 %5)
  store i64 %6, i64* @conhandle, align 8
  %7 = load i64, i64* @conhandle, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CN_DEAD, align 4
  %11 = load %struct.consdev*, %struct.consdev** %2, align 8
  %12 = getelementptr inbounds %struct.consdev, %struct.consdev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.consdev*, %struct.consdev** %2, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @cfe_cnputc(%struct.consdev* %23, i8 signext %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %17

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i32, i32* @CN_LOW, align 4
  %36 = load %struct.consdev*, %struct.consdev** %2, align 8
  %37 = getelementptr inbounds %struct.consdev, %struct.consdev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %9
  ret void
}

declare dso_local i64 @cfe_getstdhandle(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cfe_cnputc(%struct.consdev*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
