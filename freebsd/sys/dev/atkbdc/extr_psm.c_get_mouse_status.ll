; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_mouse_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_mouse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSMC_SEND_DEV_STATUS = common dso_local global i32 0, align 4
@PSMC_SEND_DEV_DATA = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"psm: SEND_AUX_DEV_%s return code:%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@PSM_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"psm: %s %02x %02x %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @get_mouse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mouse_status(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %15 [
    i32 0, label %14
    i32 1, label %17
  ]

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %4, %14
  %16 = load i32, i32* @PSMC_SEND_DEV_STATUS, align 4
  store i32 %16, i32* %10, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @PSMC_SEND_DEV_DATA, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @empty_aux_buffer(i32 %20, i32 5)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @send_aux_command(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @LOG_DEBUG, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @VLOG(i32 2, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @PSM_ACK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %92

36:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @read_aux_data(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %37

59:                                               ; preds = %54, %37
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 3
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %71, %62
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %63

74:                                               ; preds = %63
  %75 = load i32, i32* @LOG_DEBUG, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @VLOG(i32 1, i32 %88)
  br label %90

90:                                               ; preds = %74, %59
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %35
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

declare dso_local i32 @send_aux_command(i32, i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @read_aux_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
