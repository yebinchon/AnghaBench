; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_meminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_ifconf_regs = type { i32, i32*, i32 }

@REGDUMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"can't malloc\00", align 1
@CHELSIO_IFCONF_GETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't read registers\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown card type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @meminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meminfo(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ch_ifconf_regs, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REGDUMP_SIZE, align 4
  %16 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %11, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %11, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @malloc(i32 %18)
  %20 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %11, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = icmp eq i32* %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @CHELSIO_IFCONF_GETREGS, align 4
  %27 = call i64 @doit(i8* %25, i32 %26, %struct.ch_ifconf_regs* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1023
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %11, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @t3_meminfo(i32* %39)
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_ifconf_regs*) #1

declare dso_local i32 @t3_meminfo(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
